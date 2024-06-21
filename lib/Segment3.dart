import 'package:flutter/material.dart';

class Segment3 extends StatefulWidget {
  const Segment3({Key? key}) : super(key: key);

  @override
  _Segment3State createState() => _Segment3State();
}

class _Segment3State extends State<Segment3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF5E7CC),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "BOOK DIRECT FOR ADDED PERKS",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: SelectableText(
                      "𝚆𝙴𝙻𝙲𝙾𝙼𝙴 𝙱𝙴𝚅𝙴𝚁𝙰𝙶𝙴 𝚄𝙿𝙾𝙽 𝙲𝙷𝙴𝙲𝙺-𝙸𝙽\n\n"
                          "𝙲𝙾𝙼𝙿𝙻𝙸𝙼𝙴𝙽𝚃𝙰𝚁𝚈 𝙸𝙽-𝚁𝙾𝙾𝙼 𝙲𝙾𝙵𝙵𝙴𝙴\n\n"
                          "𝙿𝚁𝙸𝙾𝚁𝙸𝚃𝚈 𝙰𝙲𝙲𝙴𝚂𝚂 𝚃𝙾 𝚁𝙾𝙾𝙵𝚃𝙾𝙿 𝙱𝙰𝚁 +1 𝙶𝚄𝙴𝚂𝚃\n\n"
                          "𝙵𝙻𝙴𝚇𝙸𝙱𝙻𝙴 𝙲𝙷𝙴𝙲𝙺-𝙸𝙽/𝙲𝙷𝙴𝙲𝙺-𝙾𝚄𝚃 𝚃𝙸𝙼𝙴𝚂 + 𝙲𝙰𝙽𝙲𝙴𝙻𝙻𝙰𝚃𝙸𝙾𝙽 𝙿𝙾𝙻𝙸𝙲𝚈",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(
                                  0xffBEAB73); // Change color when hovered
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
                                0xffBEAB73); // Default text color
                          },
                        ),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return const BorderSide(
                                  color: Color(0xffBEAB73),
                                  width:
                                  1); // Change border color and width when hovered
                            }
                            return const BorderSide(
                                color:
                                Color(0xffBEAB73)); // Default border color
                          },
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            )),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // Set the desired height
              child: const Padding(
                padding: EdgeInsets.all(100.0),
                child: Image(
                  image: NetworkImage(
                      "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587591598788-TR7K5YILU0GUCCGO2MFC/cle_illo_05.png?format=1000w"),
                  fit: BoxFit.cover, // Ensure the image covers the entire width
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
