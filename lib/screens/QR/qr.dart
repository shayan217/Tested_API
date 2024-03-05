import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/screens/Drawer/drawer.dart';
import 'package:rider/screens/QR/qr_scann_functionality.dart';
import 'package:rider/screens/custom_navigation/custom_navigation.dart';
import 'package:rider/screens/home/navigation_controller.dart';
import 'package:rider/utils/color.dart';
import 'package:rider/utils/image.dart';

class QRController extends GetxController {
  final scannedResults = <String>[].obs;

  void addScannedResult(String result) {
    scannedResults.add(result);
  }

  void deleteResult(int index) {
    scannedResults.removeAt(index);
  }
}

class QRScreen extends StatefulWidget {
  @override
  _QRScreenState createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  final NavigationController _controller = Get.put(NavigationController());

  late QRController qrController;

  @override
  void initState() {
    super.initState();
    qrController = Get.put(QRController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: RColor.accent,
        leading: IconButton(
          onPressed: () {Get.back();},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Scan QR Code"),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(NewD());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                RImage.Menu,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
          ),
          Image.asset(
            RImage.MainQR,
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 215,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraScreen()),
                ).then((value) {
                  if (value != null && value is String) {
                    qrController.addScannedResult(value);
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: RColor.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: Text(
                'Scan QR Code',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: RColor.accent,
                ),
              ),
            ),
          ),
            SizedBox(height: 5,),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: qrController.scannedResults.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: RColor.gray,
                    margin: EdgeInsets.symmetric(
                        horizontal: 18.0,
                        vertical: 5.0), // Add margin for better spacing
                    child: SizedBox(
                      // Wrap Card with SizedBox to set its width
                      width: MediaQuery.of(context).size.width *
                          0.9, // Adjust the width as needed
                      child: ListTile(
                        title: Text(qrController.scannedResults[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),color: RColor.pink,
                          onPressed: () {
                            qrController.deleteResult(index);
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Add your image here
          // Image.asset(
          //   RImage.MainQR,

          // ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTabSelected: _controller.changePage,
        selectedIndex: _controller.selectedIndex.value,
      ),
      floatingActionButton: SizedBox(
        width: 70, // Adjust width as needed
        height: 70, // Adjust height as needed
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(100.0), // Adjust the value as needed
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QRScreen()));
            },
            child: Image.asset(
              RImage.QR,
              cacheHeight: 70,
              cacheWidth: 70,
            ),
            shape: CircleBorder(),
            backgroundColor: RColor.pink,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
