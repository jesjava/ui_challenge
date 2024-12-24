// ignore_for_file: must_be_immutable
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bounce/bounce.dart';

class MobileLayout extends StatefulWidget {
  String musicName;
  Function() onBackward;
  Function() onForward;
  Function() playPause;
  StreamBuilder streamBuilder;
  MobileLayout({
    super.key,
    required this.musicName,
    required this.onBackward,
    required this.onForward,
    required this.playPause,
    required this.streamBuilder,
  });

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  double minimumSize = 600;

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
                    deviceWidth >= minimumSize ? const SizedBox(height: 30) : const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Image.asset(
                          "icons/circle_grid.png",
                          width: 35,
                          height: 35,
                        ),
                        const Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {
                            // CODE HERE
                          },
                          child: const Icon(
                            Icons.search_rounded,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        deviceWidth >= minimumSize ? const SizedBox(width: 50) : const SizedBox(width: 20),
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
                        deviceWidth >= minimumSize ? Column(
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
                                "Gadis koleris yang terangi harimu dengan senyum karamelku, halo semuanya aku freya",
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
                        ) : const SizedBox(),
                        const Spacer(flex: 1),
                        Image.asset(
                          "icons/arrow.png",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const Spacer(flex: 1),
                    deviceWidth >= minimumSize ? Row(
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
                    ) : const SizedBox(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.translate(
            offset: const Offset(0, 75),
            child: Image.asset(
              "images/foreground.png",
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.fromLTRB(
              0,
              0,
              0,
              0,
            ),
            width: deviceWidth >= minimumSize ? deviceWidth * 0.8 : deviceWidth,
            height: 75,
            color: const Color.fromRGBO(169, 72, 182, 1),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLAYING NOW",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: deviceWidth >= minimumSize ? 13 : 10,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "JKT 48",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: deviceWidth >= minimumSize ? 13 : 10,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      widget.musicName.toUpperCase(),
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: deviceWidth >= minimumSize ? 13 : 10,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Transform.flip(
                  flipX: true,
                  child: Bounce(
                    onTap: widget.onBackward,
                    child: deviceWidth >= minimumSize
                        ? Image.asset(
                            "icons/fast.png",
                            width: 40,
                            height: 40,
                          )
                        : Image.asset(
                            "icons/fast.png",
                            width: 25,
                            height: 25,
                          ),
                  ),
                ),
                const SizedBox(width: 20),
                Bounce(
                  onTap: widget.playPause,
                  child: widget.streamBuilder,
                ),
                const SizedBox(width: 20),
                Bounce(
                  onTap: widget.onForward,
                  child: deviceWidth >= minimumSize
                      ? Image.asset(
                          "icons/fast.png",
                          width: 40,
                          height: 40,
                        )
                      : Image.asset(
                          "icons/fast.png",
                          width: 25,
                          height: 25,
                        ),
                ),
                deviceWidth >= minimumSize
                    ? const SizedBox(width: 25)
                    : const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
