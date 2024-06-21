import 'package:flutter/material.dart';

class Segment7 extends StatefulWidget {
  const Segment7({Key? key}) : super(key: key);

  @override
  _Segment7State createState() => _Segment7State();
}

class _Segment7State extends State<Segment7> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: const Color(0xffF5E7CC),
              height: 550, //MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  ///  Left Image Position
                  Positioned(
                    top: 10,
                    left: 60,
                    child: Image.network(
                      'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1588285276443-RM1HDCIOL06BJJIXNHJ9/hotel-clermont_logo_footer_small.png?format=500w',
                      height: 150,
                      width: 300,
                    ),
                  ),

                  /// Left Text
                  const Positioned(
                    top: 160,
                    left: 100,
                    child: SelectableText(
                      "789 PONCE DE LEON AVE.\n"
                          "ATLANTA, GA. 30306",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffBEAB73),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  /// Button
                  Positioned(
                    top: 200,
                    left: 130,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "880-1787-1233",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xffBEAB73),
                        ),
                      ),
                    ),
                  ),

                  /// Image
                  Positioned(
                    top: 250,
                    left: 60,
                    child: Image.network(
                      'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/365eccda-af90-4836-bf8a-221c3c873665/Asset+4.png?format=500w',
                      height: 80,
                      width: 300,
                    ),
                  ),
                  Positioned(
                    top: 330,
                    left: 80,
                    child: Image.network(
                      'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/cc1ddb95-4ee1-460a-9579-6fbf693b1641/TC_2022_L_TRANSPARENT_BG_cle-gold-smaller.png?format=500w',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  const Positioned(
                    top: 40,
                    left: 570,
                    child: SelectableText(
                      "SIGN UP FOR OUR THRILLING EMAIL LIST",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffBEAB73),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Positioned(
                    top: 110,
                    left: 565,
                    child: SelectableText(
                      "EMAIL:",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffBEAB73),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  ///Text field
                  Positioned(
                    top: 130,
                    left: 565,
                    child: SizedBox(
                      height: 40,
                      width: 350,
                      child: TextField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                color: Color(
                                    0xffBEAB73)), // Outline color when focused
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                color: Color(
                                    0xffBEAB73)), // Outline color when enabled
                          ),
                        ),
                        onChanged: (text) {
                          setState(() {});
                        },
                      ),
                    ),
                  ),

                  ///  check box
                  Positioned(
                    top: 180,
                    left: 570,
                    child: Transform.scale(
                      scale: 0.7,
                      child: Container(
                        color: Colors.white,
                        height: 12,
                        width: 12,
                        child: Checkbox(
                          // fillColor: true,
                          // fillColor:
                          value: isChecked,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                2.0), // Adjust the radius to control the roundness of corners
                            side: const BorderSide(
                              color: Colors.black,
                              width: 0.6,
                            ), // Set border properties
                          ),
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  /// Checkbox Text
                  const Positioned(
                    top: 180,
                    left: 590,
                    child: SelectableText(
                      "BY SUBMITTING YOU AGREE TO SUBSCRIBE",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffBEAB73),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  /// Elevated button
                  Positioned(
                    top: 210,
                    left: 566,
                    child: SizedBox(
                      height: 40,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(
                                    0xffC7302C); // Change color when hovered
                              }
                              return const Color(0xffF5E7CC); // Default color
                            },
                          ),
                          foregroundColor:
                          MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Colors
                                    .white; // Change text color when hovered
                              }
                              return const Color(
                                  0xffC7302C); // Default text color
                            },
                          ),
                          side: MaterialStateProperty.resolveWith<BorderSide>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const BorderSide(
                                    color: Color(0xffC7302C),
                                    width:
                                    1); // Change border color and width when hovered
                              }
                              return const BorderSide(
                                  color: Color(
                                      0xffC7302C)); // Default border color
                            },
                          ),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              )),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(
                              // color: Color(0xffC7302C),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///right column
                  const Positioned(
                    top: 40,
                    right: 150,
                    child: SelectableText(
                      "BY OLIVER",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffBEAB73),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  ///
                  Positioned(
                    top: 90,
                    right: 100,
                    height: 80,
                    width: 200,
                    child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1588285108045-UTSXCCA3V807GYQ4KTMS/cle_footer_fairlane.png?format=300w'),
                  ),
                  Positioned(
                    top: 180,
                    right: 100,
                    height: 80,
                    width: 200,
                    child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1588285136192-VG1MQLNFD5U57NLBJDRP/cle_footer_the-oliver-hotel.png?format=300w'),
                  ),
                  Positioned(
                    top: 270,
                    right: 100,
                    height: 80,
                    width: 200,
                    child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1588285180677-A5QKWZPCET866ZCUNC6D/cle_footer_station-house-inn.png?format=300w'),
                  ),
                  Positioned(
                    top: 350,
                    right: 100,
                    height: 80,
                    width: 200,
                    child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/ccec5235-d75d-4bae-a09b-03256726a821/CLER+Website+Footer+OXO+logo.png?format=300w'),
                  ),
                  Positioned(
                    top: 430,
                    right: 100,
                    height: 80,
                    width: 200,
                    child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/86cddf16-13fa-455e-af60-362384d9973d/MAR+logo+footer.png?format=300w'),
                  ),
                ],
              ),
            ),
          ],
        ),

        /// social links(Text buttons)
        Container(
          height: 100,
          color: const Color(0xffF5E7CC),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Align the row at the center horizontally
              children: [
                TextButton(
                  onPressed: () {
                    // Add functionality for the first button here
                  },
                  child: const Text(
                    "FACEBOOK",
                    style: TextStyle(
                      color: Color(0xffBCA05B),
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10), // Add some space between buttons
                TextButton(
                  onPressed: () {
                    // Add functionality for the second button here
                  },
                  child: const Text(
                    "INSTAGRAM",
                    style: TextStyle(
                      color: Color(0xffBCA05B),
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
