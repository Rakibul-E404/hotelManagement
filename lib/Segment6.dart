import 'package:flutter/material.dart';

class Segment6 extends StatefulWidget {
  const Segment6({Key? key}) : super(key: key);

  @override
  _Segment6State createState() => _Segment6State();
}

class _Segment6State extends State<Segment6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffCEE3D9),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(200, 150, 0, 0),
                        child: SelectableText(
                          "𝚂𝚃𝙰𝚁𝚃 𝚃𝙷𝙴 𝙳𝙰𝚈 𝚂𝙻𝙾𝚆𝙻𝚈 𝙸𝙽 𝙾𝚄𝚁 𝙻𝙾𝙱𝙱𝚈 𝙲𝙰𝙵𝙴,\n"
                              "𝙱𝚁𝙴𝚆𝙸𝙽𝙶 𝙲𝙾𝙵𝙵𝙴𝙴 𝙰𝚃 7 𝙰.𝙼. 𝙾𝚄𝚁 𝙵𝚁𝙴𝙽𝙲𝙷-𝙰𝙼𝙴𝚁𝙸𝙲𝙰𝙽 \n"
                              "𝙱𝚁𝙰𝚂𝚂𝙴𝚁𝙸𝙴, 𝚃𝙸𝙽𝚈 𝙻𝙾𝚄’𝚂, 𝙸𝚂 𝙾𝙿𝙴𝙽 𝙳𝙰𝙸𝙻𝚈. 𝙷𝙰𝚅𝙴 𝙰 \n"
                              "𝙳𝚁𝙸𝙽𝙺 𝙸𝙽 𝚃𝙷𝙴 𝙻𝙾𝙱𝙱𝚈 𝙾𝚁 𝙷𝙴𝙰𝙳 𝚄𝙿 𝚃𝙾 𝚃𝙷𝙴 𝚁𝙾𝙾𝙵𝚃𝙾𝙿 \n"
                              "𝙱𝙰𝚁 𝙵𝙾𝚁 𝚅𝙸𝙴𝚆𝚂 𝙾𝙵 𝙰𝚃𝙻𝙰𝙽𝚃𝙰’𝚂 𝚂𝙺𝚈𝙻𝙸𝙽𝙴.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return const Color(
                                      0xff020201); // Change color when hovered
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
                                return const Color(
                                    0xff020201); // Default text color
                              },
                            ),
                            side: MaterialStateProperty.resolveWith<BorderSide>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return const BorderSide(
                                      color: Color(0xff020201),
                                      width:
                                      1); // Change border color and width when hovered
                                }
                                return const BorderSide(
                                    width: 1,
                                    color: Color(
                                        0xff020201)); // Default border color
                              },
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            )),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "EAT AND DRINK",
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
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 100, 250, 0),
                    child: Image(
                      height: 350,
                      width: 300,
                      image: NetworkImage(
                          "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587593294234-HQ93YB1VN6OSGW1IA1GD/CLE-A-023-5b6866f1b514c.jpg?format=750w"),
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire width
                    ),
                  ),
                ),
              ),
            ],
          ),

          ///Zik Zack Image Row bellow
          Container(
            height: 980, //MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                ///1st Image Position
                Positioned(
                  top: 0,
                  left: 300,
                  child: Image.network(
                    'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587593449314-08G3V2HOEBVPXM48PTIX/cle_illo_06.gif?format=500w',
                    height: 450,
                    width: 350,
                  ),
                ),

                ///2nd Image Position
                Positioned(
                  top: 110,
                  right: 100,
                  child: Image.network(
                    'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587593320023-5N696NP5VOE31JVCWQOT/CLE-A-058-5b686715aecac.jpg?format=750w',
                    height: 500,
                    width: 550,
                  ),
                ),

                ///3rd Image Position
                Positioned(
                  top: 360,
                  left: 180,
                  child: Image.network(
                    'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587593521678-WWQ8E3BMYRD6CFUG4ZES/CLE-A-013-5b6866ccc2097.jpg?format=750w',
                    height: 500,
                    width: 550,
                  ),
                ),

                ///4th Image Position
                Positioned(
                  top: 620,
                  right: 180,
                  child: Image.network(
                    'https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587596266407-N1Z03YRULUDO1S2WNWPP/cle_writing_03.png?format=750w',
                    height: 300,
                    width: 550,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
