import 'package:flutter/material.dart';

class Segment2 extends StatefulWidget {
  const Segment2({Key? key}) : super(key: key);

  @override
  _Segment2State createState() => _Segment2State();
}

class _Segment2State extends State<Segment2> {
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
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage(
                      "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1627428753077-LLE29FJ66ZNQQF9ITFLE/clermont_illo_02.png?format=1000w"),
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
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Image(
                        image: NetworkImage(
                            "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1627428895061-7E5YWYM1BABPUOOSFXUJ/cle_writing_02.png?format=1000w")),
                  ),
                  const SelectableText(
                    "𝙻𝙾𝙲𝙰𝚃𝙴𝙳 𝙾𝙽 𝚃𝙷𝙴 𝙷𝙸𝚂𝚃𝙾𝚁𝙸𝙲 𝙿𝙾𝙽𝙲𝙴 𝙳𝙴 𝙻𝙴𝙾𝙽 𝙰𝚅𝙴𝙽𝚄𝙴 𝙸𝙽 𝚃𝙷𝙴 𝙷𝙴𝙰𝚁𝚃 𝙾𝙵 𝙰𝚃𝙻𝙰𝙽𝚃𝙰, \n"
                        "𝙷𝙾𝚃𝙴𝙻 𝙲𝙻𝙴𝚁𝙼𝙾𝙽𝚃 𝙱𝙾𝙰𝚂𝚃𝚂 94 𝙲𝙰𝚁𝙴𝙵𝚄𝙻𝙻𝚈 𝙰𝙿𝙿𝙾𝙸𝙽𝚃𝙴𝙳 𝚁𝙾𝙾𝙼𝚂 𝚆𝙸𝚃𝙷 𝙼𝙾𝙳𝙴𝚁𝙽 𝙲𝙾𝙽𝚅𝙴𝙽𝙸𝙴𝚂 𝙰𝙽𝙳 𝚂𝙿𝙻𝙴𝙽𝙳𝙸𝙳 𝚅𝙸𝙴𝚆𝚂. "
                        "𝚆𝙴 𝙻𝙾𝙾𝙺 𝙵𝙾𝚁𝚆𝙰𝚁𝙳 𝚃𝙾 𝙷𝙰𝚅𝙸𝙽𝙶 𝚈𝙾𝚄 𝙰𝚂 𝙾𝚄𝚁 𝙶𝚄𝙴𝚂𝚃.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffBEAB73),
                        // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(0), // Border radius here
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: SelectableText(
                      "789 PONCE DE LEON AVE N.E. \n\nATLANTA, GA 30306",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "(+880) 1234567890",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.symmetric(vertical: 0),
                          width: 150,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
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
