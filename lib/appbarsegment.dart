import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

import 'RoomBooking.dart';

class AppBarSegment extends StatefulWidget {
  const AppBarSegment({Key? key}) : super(key: key);

  @override
  State<AppBarSegment> createState() => _AppBarSegmentState();
}

class _AppBarSegmentState extends State<AppBarSegment> {
  bool isDropdownMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFCEE3D9),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffBB9F5C),
              width: 3.0,
            ),
          ),
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "ᏂᎧᏖᏋᏝ\n𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ",
                style: TextStyle(color: Color(0xffBCA05B), fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 90,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Add functionality for the second button here
                          },
                          child: const Text("Hotel",
                              style: TextStyle(
                                  color: Color(0xffBCA05B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            // Add functionality for the second button here
                          },
                          child: const Text(
                            "OFFERS",
                            style: TextStyle(
                                color: Color(0xffBCA05B),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),

                        ///---WindowStyleDropdownMenu---
                        WindowStyleDropdownMenu(
                          buttonTitleStyle: const TextStyle(
                              color: Color(0xffBCA05B),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                          buttonTitle: 'ROOMS',
                          dropdownItems: [
                            ListTile(
                              title: Text('Price'),
                              onTap: () {
                                print('Price button presed');
                                // Add functionality for button 1 here
                              },
                            ),
                            ListTile(
                              title: const Text('Facility'),
                              onTap: () {
                                print('Facility button presed');
                                // Add functionality for button 2 here
                              },
                            ),
                          ],
                          // buttonColor: Colors.green, // Set button color
                          dropdownBackgroundColor: const Color(
                              0xffBCA05B), // Set dropdown background color
                          // dropdownItemColor: Colors.black, // Set dropdown item color
                        ),
                        TextButton(
                          onPressed: () {
                            // Add functionality for the second button here
                          },
                          child: const Text(
                            "EAT & DRINK",
                            style: TextStyle(
                                color: Color(0xffBCA05B),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("GROUPS",
                              style: TextStyle(
                                  color: Color(0xffBCA05B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("GALLERY",
                              style: TextStyle(
                                  color: Color(0xffBCA05B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("EXPERIENCE",
                              style: TextStyle(
                                  color: Color(0xffBCA05B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("SHOP",
                              style: TextStyle(
                                  color: Color(0xffBCA05B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RoomBooking()),
                );
              },
              child: const Text("BOOK NOW (+880) 1234567899",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
