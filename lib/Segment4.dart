import 'package:flutter/material.dart';

class Segment4 extends StatefulWidget {
  const Segment4({Key? key}) : super(key: key);

  @override
  _Segment4State createState() => _Segment4State();
}

class _Segment4State extends State<Segment4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffCEE3D9),
      child: Row(
        children: [
          Expanded(
            child: Container(
              // Set the desired height
              child: const Padding(
                padding: EdgeInsets.all(150.0),
                child: Image(
                  image: NetworkImage(
                      "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1591648003640-Q316VEOPALX7D7CGKBC5/cle_illo_22.png?format=750w"),
                  fit: BoxFit.cover, // Ensure the image covers the entire width
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "GROUPS AND EVENTS\n\n",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Center(
                    child: SelectableText(
                      "𝚆𝙸𝚃𝙷 𝙰𝙽 𝙰𝚃𝙼𝙾𝚂𝙿𝙷𝙴𝚁𝙴 𝙵𝚄𝙻𝙻 𝙾𝙵 𝙿𝙾𝚂𝙸𝚃𝙸𝚅𝙴 𝙴𝙽𝙴𝚁𝙶𝚈, 𝙷𝙾𝚃𝙴𝙻 \n"
                          "𝙲𝙻𝙴𝚁𝙼𝙾𝙽𝚃 𝙸𝚂 𝙾𝙿𝙴𝙽 𝚃𝙾 𝙷𝙾𝚂𝚃 𝚈𝙾𝚄𝚁 𝙶𝙾𝙾𝙳 𝚃𝙸𝙼𝙴𝚂 𝙰𝙽𝙳 𝚈𝙾𝚄𝚁 𝙽𝙴𝚇𝚃 \n𝙱𝙴𝚂𝚃 𝙼𝙴𝙼𝙾𝚁𝚈.\n\n"
                          "𝚆𝙷𝙴𝚃𝙷𝙴𝚁 𝚈𝙾𝚄’𝚁𝙴 𝚃𝚁𝙰𝚅𝙴𝙻𝙸𝙽𝙶 𝙸𝙽 𝙰 𝙶𝚁𝙾𝚄𝙿 𝙵𝙾𝚁 𝚆𝙾𝚁𝙺 𝙾𝚁 𝙿𝙻𝙰𝚈, \n"
                          "𝙿𝙻𝙰𝙽𝙽𝙸𝙽𝙶 𝙰 𝙲𝙾𝚁𝙿𝙾𝚁𝙰𝚃𝙴 𝚁𝙴𝚃𝚁𝙴𝙰𝚃 𝙾𝚁 𝙰 𝚆𝙴𝙳𝙳𝙸𝙽𝙶 𝙲𝙴𝙻𝙴𝙱𝚁𝙰𝚃𝙸𝙾𝙽, \n"
                          "𝙾𝚄𝚁 𝙶𝚁𝙾𝚄𝙿 𝚁𝙾𝙾𝙼 𝙱𝙻𝙾𝙲𝙺𝚂, 𝙲𝙾𝙼𝙼𝚄𝙽𝙰𝙻 𝚂𝙿𝙰𝙲𝙴𝚂, 𝙰𝙽𝙳 𝚂𝙴𝙼𝙸-𝙿𝚁𝙸𝚅𝙰𝚃𝙴 \n"
                          "𝙰𝚁𝙴𝙰𝚂 𝙰𝚁𝙴 𝙿𝙴𝚁𝙵𝙴𝙲𝚃 𝙵𝙾𝚁 𝙰𝙽𝚈 𝙾𝙲𝙲𝙰𝚂𝙸𝙾𝙽.",
                      style: TextStyle(
                        fontSize: 20,
                      ),
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
                              return Colors.black; // Change color when hovered
                            }
                            return const Color(0xffCEE3D9); // Default color
                          },
                        ),
                        foregroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors
                                  .white; // Change text color when hovered
                            }
                            return Colors.black; // Default text color
                          },
                        ),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return const BorderSide(
                                  color: Color(0xff0a0901),
                                  width:
                                  1); // Change border color and width when hovered
                            }
                            return const BorderSide(
                                color:
                                Color(0xff0a0901)); // Default border color
                          },
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            )),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "BOOK A GATHERING",
                          style: TextStyle(
                            fontSize: 25,
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
        ],
      ),
    );
  }
}
