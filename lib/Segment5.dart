import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";

class Segment5 extends StatefulWidget {
  const Segment5({Key? key}) : super(key: key);

  @override
  _Segment5State createState() => _Segment5State();
}

class _Segment5State extends State<Segment5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffDCD2D3),
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  // margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587589736534-572V1NAT4BDL6Q3IZMKD/CLE-A-501-069-5b68686e431c7.jpg?format=1500w"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  // margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.squarespace-cdn.com/content/v1/5ea0614a23978f42dee12261/1587589736457-4TU1190UY3OBWDQRVDMH/CLE-A-501-104-5b68685bdd71c.jpg?format=1500w"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: MediaQuery.sizeOf(context).height,
                enlargeCenterPage: false,
                disableCenter: true,
                autoPlay: true,
                // aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SelectableText(
              "“𝚃𝙷𝙰𝚃 𝙷𝙾𝚃𝙴𝙻 𝚂𝙼𝙴𝙻𝙻 𝙾𝙵 𝙼𝙾𝚁𝙽𝙸𝙽𝙶, 𝚃𝙷𝙴 𝙺𝙸𝙽𝙳 𝚃𝙷𝙰𝚃 𝙼𝙰𝙳𝙴\n𝙴𝚅𝙴𝚁𝚈𝙱𝙾𝙳𝚈 𝚆𝙰𝙻𝙺 𝙰 𝙻𝙸𝚃𝚃𝙻𝙴 𝙵𝙰𝚂𝚃𝙴𝚁, 𝚂𝙰𝚈 𝙰 𝙺𝙸𝙽𝙳𝙴𝚁 𝙷𝙴𝙻𝙻𝙾.”",
              style: TextStyle(
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return const Color(
                            0xffBEAB73); // Change color when hovered
                      }
                      return const Color(0xffDCD2D3); // Default color
                    },
                  ),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.white; // Change text color when hovered
                      }
                      return const Color(0xffBEAB73); // Default text color
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
                          color: Color(0xffBEAB73)); // Default border color
                    },
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "SEE ROOMS & SUITES",
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
    );
  }
}
