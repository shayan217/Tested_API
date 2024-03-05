import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/screens/Update_status/update_status.dart';
import 'package:rider/screens/delevired/delevired.dart';
import 'package:rider/utils/color.dart';
import 'package:rider/utils/image.dart';

class Update_status_all_widget extends StatelessWidget {
  bool isCheckedAddressClosed = false;
  bool isCheckedAddressUntraceable = false;
  bool isCheckedArea = false;
  bool isCheckedCnic = false;
  bool isCheckedCustomer1 = false;
  bool isCheckedCustomer2 = false;
  bool isCheckedCustomer3 = false;
  bool isCheckedIncomplete = false;
  bool isCheckedNot = false;
  bool isCheckedRefused = false;
  bool isCheckedShipment = false;
  Update_status_all_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width < 600 ? 169 : 200,
            height: 46,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Call',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: RColor.secondary,
                  fontSize: 16,
                )
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: RColor.graish,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width < 600 ? 165 : 200,
            height: 46,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              RImage.Verified,
                              height: 100,
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                'Select Completion',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                            Center(
                              child: Text(
                                'Mode',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // width: 107,
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height: 46,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(
                                          context); // Close the current modal
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            child: Container(
                                              padding: EdgeInsets.all(20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(height: 20),
                                                  Center(
                                                    child: Text(
                                                      'CN Number 5019651022',
                                                      style: GoogleFonts.montserrat(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  SizedBox(
                                                    width: 183,
                                                    height: 46,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(
                                                            context); // Close the current modal
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return StatefulBuilder(
                                                              builder: (context,
                                                                  setState) {
                                                                return Dialog(
                                                                  child:
                                                                      Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            20),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          SizedBox(
                                                                              height: 20),
                                                                          Center(
                                                                            child:
                                                                                Text(
                                                                              'CN Number 5019651022',
                                                                              style: GoogleFonts.montserrat(
                                                                                fontSize: 21,
                                                                                fontWeight: FontWeight.bold,
                                                                              )
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                              height: 20),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedAddressClosed,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedAddressClosed = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Address Closed',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedAddressUntraceable,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedAddressUntraceable = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Address Untraceable',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedArea,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedArea = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Area Closed',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedCnic,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedCnic = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('CNIC Not Available',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedCustomer1,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedCustomer1 = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Customer  not answering Phone',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedCustomer2,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedCustomer2 = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Customer  Not Available',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedCustomer3,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedCustomer3 = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Customer Shifted',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedIncomplete,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedIncomplete = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Incomplete Address',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedNot,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedNot = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Not Such Customer / Office',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedRefused,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedRefused = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Refused to Accept',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: RColor.graish, // Set background color to orange
                                                                              borderRadius: BorderRadius.circular(10), // Set border radius
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Checkbox(
                                                                                  value: isCheckedShipment,
                                                                                  onChanged: (value) {
                                                                                    setState(() {
                                                                                      isCheckedShipment = value!;
                                                                                    });
                                                                                  },
                                                                                  checkColor: Colors.red, // Set the color of the check icon to red
                                                                                  fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                    // Set the background color of the checkbox to white
                                                                                    if (states.contains(MaterialState.selected)) {
                                                                                      return Colors.white;
                                                                                    }
                                                                                    return Colors.transparent; // Set the background color to transparent when unchecked
                                                                                  }),
                                                                                ),
                                                                                Text('Shipment at Hold on Customer',style: GoogleFonts.montserrat(),),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                              height: 20),
                                                                          if (isCheckedAddressClosed ||
                                                                              isCheckedAddressUntraceable ||
                                                                              isCheckedArea ||
                                                                              isCheckedCnic ||
                                                                              isCheckedCustomer1 ||
                                                                              isCheckedCustomer2 ||
                                                                              isCheckedCustomer3 ||
                                                                              isCheckedIncomplete ||
                                                                              isCheckedNot ||
                                                                              isCheckedRefused ||
                                                                              isCheckedShipment)
                                                                            ElevatedButton(
                                                                              onPressed: () {
                                                                                // Close the current modal
                                                                                Navigator.pop(context);
                                                                                // Open the new modal
                                                                                showDialog(
                                                                                  context: context,
                                                                                  builder: (BuildContext context) {
                                                                                    return Padding(
                                                                                      padding: const EdgeInsets.all(1.0),
                                                                                      child: Dialog(
                                                                                        child: Container(
                                                                                          padding: EdgeInsets.all(20),
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            borderRadius: BorderRadius.circular(25.0),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: [
                                                                                              SizedBox(
                                                                                                height: 50,
                                                                                              ),
                                                                                              Text(
                                                                                                'Are you sure you go with',
                                                                                                style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w400)
                                                                                              ),
                                                                                              SizedBox(height: 1),
                                                                                              Text(
                                                                                                'Addresses Closed status',
                                                                                                style: GoogleFonts.montserrat(fontSize: 18,)
                                                                                              ),
                                                                                              SizedBox(height: 1),
                                                                                              Text(
                                                                                                'updated',
                                                                                                style: GoogleFonts.montserrat(fontSize: 18,)
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 15,
                                                                                              ),
                                                                                              SizedBox(
                                                                                                // height: 40,
                                                                                                child: Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                                    color: RColor.graish,
                                                                                                    border: Border.all(
                                                                                                      color: Colors.transparent,
                                                                                                    ),
                                                                                                  ),
                                                                                                  alignment: Alignment.centerLeft,
                                                                                                  child: Container(
                                                                                                    decoration: BoxDecoration(
                                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                                      color: RColor.grayinput, // Change background color to red
                                                                                                      border: Border.all(
                                                                                                        color: Colors.transparent,
                                                                                                      ),
                                                                                                    ),
                                                                                                    alignment: Alignment.centerLeft,
                                                                                                    padding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding if needed
                                                                                                    child: TextField(
                                                                                                      decoration: InputDecoration(
                                                                                                        hintText: 'Any Comment',
                                                                                                        border: InputBorder.none,
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                          borderSide: BorderSide(color: RColor.grayinput),
                                                                                                        ),
                                                                                                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                                                                                        hintStyle: TextStyle(color: RColor.secondary),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 15,
                                                                                              ),
                                                                                              SizedBox(height: 10),
                                                                                              Padding(
                                                                                                padding: const EdgeInsets.only(left: 20),
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                  children: [
                                                                                                    ElevatedButton(
                                                                                                      onPressed: () {
                                                                                                        // Handle first button action
                                                                                                      },
                                                                                                      child: Text(
                                                                                                        'No',
                                                                                                        style: GoogleFonts.montserrat( fontWeight: FontWeight.w600,
                                                                                                          color: RColor.secondary,)
                                                                                                      ),
                                                                                                      style: ElevatedButton.styleFrom(
                                                                                                        fixedSize: Size(110, 42), backgroundColor: RColor.graish, // Set width and height of the button
                                                                                                        shape: RoundedRectangleBorder(
                                                                                                          borderRadius: BorderRadius.circular(10), // Set border radius
                                                                                                        ), // Set background color to red
                                                                                                      ),
                                                                                                    ),
                                                                                                    ElevatedButton(
                                                                                                      onPressed: () {
                                                                                                        // Handle first button action
                                                                                                      },
                                                                                                      child: Text(
                                                                                                        'Yes',
                                                                                                        style: GoogleFonts.montserrat(fontWeight: FontWeight.w600,
                                                                                                          color: Colors.white,)
                                                                                                      ),
                                                                                                      style: ElevatedButton.styleFrom(
                                                                                                        fixedSize: Size(110, 42), backgroundColor: RColor.pink, // Set width and height of the button
                                                                                                        shape: RoundedRectangleBorder(
                                                                                                          borderRadius: BorderRadius.circular(10), // Set border radius
                                                                                                        ), // Set background color to red
                                                                                                      ),
                                                                                                    ),
                                                                                                    SizedBox(
                                                                                                      height: 10,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 50,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                width: 50,
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    'Ok',
                                                                                    style: GoogleFonts.montserrat(
                                                                                      fontWeight: FontWeight.bold,
                                                                                      color: Colors.white,
                                                                                      fontSize: 16,
                                                                                    )
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              style: ElevatedButton.styleFrom(
                                                                                backgroundColor: RColor.pink,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(6),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        );
                                                      },
                                                      child: Text(
                                                        'Undelivered Action',
                                                        style: GoogleFonts.montserrat(fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: 15,)
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor: RColor.pink,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: SizedBox(
                                      child: Text(
                                        'Undelivered',
                                        style: GoogleFonts.montserrat( fontWeight: FontWeight.bold,
                                          color: RColor.secondary,
                                          fontSize: 13,)
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: RColor.graish,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height: 46,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Updatestatus()));
                                    },
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Delevired()));
                                      },
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(
                                              'Delevired',
                                              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 13,)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: RColor.pink,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: SizedBox(
                child: Text(
                  'End Ride',
                  style: GoogleFonts.montserrat( fontWeight: FontWeight.w400,
                    color: RColor.accent,
                    fontSize: 16,)
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: RColor.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
