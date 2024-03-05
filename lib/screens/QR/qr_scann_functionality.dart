import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:rider/screens/QR/qr.dart';
import 'package:rider/utils/color.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool isFlashOn = false;
  CameraLensDirection cameraDirection = CameraLensDirection.back;

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 230.0
        : 230.0;
    return Scaffold(
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: RColor.accent,
              borderRadius: 10,
              borderLength: 50, // Increase the border length
              borderWidth: 15, // Increase the border width
              cutOutSize: scanArea,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 25,
            child: IconButton(
              icon: Icon(
                isFlashOn ? Icons.flash_on : Icons.flash_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isFlashOn = !isFlashOn;
                  controller?.toggleFlash();
                });
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 25,
            child: IconButton(
              icon: Icon(
                cameraDirection == CameraLensDirection.back
                    ? Icons.camera_rear
                    : Icons.camera_front,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  cameraDirection = cameraDirection == CameraLensDirection.back
                      ? CameraLensDirection.front
                      : CameraLensDirection.back;
                  _onCameraSwitch();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      Get.back(result: scanData.code); // Return the scanned result to the previous screen
      Get.to(QRScreen());
    });
  }

  void _onCameraSwitch() async {
    await controller?.flipCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
