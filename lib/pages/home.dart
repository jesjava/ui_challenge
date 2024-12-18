import 'dart:ui';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlay = false;
  int songIndex = 0;
  List song = [
    "DAYLIGHT",
    "VIVA LA VIDA",
    "HEAT WAVES",
    "NIGHT CHANGES",
    "TO THE BONE",
  ];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.sizeOf(context).width;
    double deviceHeight = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Image.asset(
          "images/supermarket2.png",
          width: deviceWidth,
          height: deviceHeight,
          fit: BoxFit.cover,
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              width: deviceWidth,
              height: deviceHeight,
              color: const Color.fromRGBO(166, 54, 180, 0.9),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(deviceWidth * 0.1, deviceHeight * 0.5),
          child: Transform.flip(
            flipX: true,
            child: Transform.scale(
              scale: 2,
              child: Image.asset(
                "images/background2.png",
                width: deviceWidth,
                height: deviceHeight,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                width: deviceWidth * 0.8,
                height: deviceHeight * 0.8,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(237, 102, 255, 0.4),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Image.asset(
                          "icons/circle_grid.png",
                          width: 35,
                          height: 35,
                        ),
                        const Spacer(flex: 1),
                        const Icon(
                          Icons.search_rounded,
                          size: 35,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 50),
                      ],
                    ),
                    const Spacer(flex: 1),
                    Row(
                      children: [
                        Transform.flip(
                          flipX: true,
                          child: Image.asset(
                            "icons/arrow.png",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "FREYA",
                              style: TextStyle(
                                fontFamily: "LeagueSpartan",
                                fontSize: 50,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                letterSpacing: 5,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: 270,
                              color: Colors.transparent,
                              child: const Text(
                                "Berbalut warna ungu, dia menari menjalani kehidupan dengan keanggunan kupu-kupu dan semangat seorang pemimpi - Freya, sebuah simfoni kelucuan dalam langkah yang diambilnya",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                  "icons/apple.png",
                                  width: 30,
                                  height: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  "icons/android.png",
                                  width: 30,
                                  height: 30,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Text(
                                    "DOWNLOAD",
                                    style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontSize: 13,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(flex: 1),
                        Image.asset(
                          "icons/arrow.png",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const Spacer(flex: 1),
                    Row(
                      children: [
                        const SizedBox(width: 40),
                        Image.asset(
                          "icons/instagram.png",
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 30),
                        Image.asset(
                          "icons/facebook.png",
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 30),
                        Image.asset(
                          "icons/twitter.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, 0),
          child: Image.asset(
            "images/foreground.png",
            width: deviceWidth,
            height: deviceHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.fromLTRB(
              0,
              0,
              deviceWidth * 0.1,
              deviceHeight * 0.1,
            ),
            width: deviceWidth * 0.3,
            height: 75,
            color: const Color.fromRGBO(169, 72, 182, 0.4),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PLAYING NOW",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 13,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const Text(
                      "JKT 48",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 13,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(
                      width: 200,
                      color: Colors.transparent,
                      child: Text(
                        song[songIndex],
                        style: const TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 13,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Transform.flip(
                  flipX: true,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (songIndex == 0) {
                          songIndex = (song.length - 1);
                        } else {
                          songIndex--;
                        }
                      });
                    },
                    child: Image.asset(
                      "icons/fast.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPlay = !isPlay;
                    });
                  },
                  child: Image.asset(
                    isPlay ? "icons/pause.png" : "icons/play.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (songIndex == (song.length - 1)) {
                        songIndex = 0;
                      } else {
                        songIndex++;
                      }
                    });
                  },
                  child: Image.asset(
                    "icons/fast.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
