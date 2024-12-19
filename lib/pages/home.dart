import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:bounce/bounce.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlay = false;
  bool isLoaded = false;
  int playlistIndex = 0;
  final player = AudioPlayer();
  final playlist = ConcatenatingAudioSource(
    useLazyPreparation: true,
    children: [
      AudioSource.asset("music/freyanashifa.mp3"),
      AudioSource.asset("music/kaulah_juaranya.mp3"),
      AudioSource.asset("music/putri_fantasi.mp3"),
    ],
  );
  List musicName = [
    "freyanashifa",
    "kaulah juaranya",
    "putri fantasi",
  ];

  @override
  void initState() {
    super.initState();
    player.setLoopMode(LoopMode.one);
    player.setAudioSource(
      playlist,
      initialIndex: 0,
      initialPosition: Duration.zero,
    );
  }

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
                                    borderRadius:
                                        BorderRadius.circular(50),
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
        Align(
          alignment: Alignment.center,
          child: Transform.translate(
            offset: const Offset(0, 50),
            child: Image.asset(
              "images/foreground.png",
            ),
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
                        "${musicName[playlistIndex]}".toUpperCase(),
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
                  child: Bounce(
                    onTap: () {
                      setState(() {
                        backward();
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
                Bounce(
                  onTap: () {
                    setState(() {
                      if (player.playing) {
                        isPlay = false;
                        player.pause();
                      } else {
                        isPlay = true;
                        player.play();
                      }
                    });
                  },
                  child: StreamBuilder<ProcessingState>(
                    stream: player.playerStateStream
                        .map((state) => state.processingState),
                    builder: (context, snapshot) {
                      final state = snapshot.data;
                      if (state == ProcessingState.loading ||
                          state == ProcessingState.buffering) {
                        return const CircularProgressIndicator(
                          color: Colors.white,
                        );
                      } else {
                        return Image.asset(
                          isPlay ? "icons/pause.png" : "icons/play.png",
                          width: 40,
                          height: 40,
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Bounce(
                  onTap: () {
                    setState(() {
                      forward();
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

  void forward() {
    player.pause();
    if (playlistIndex == (musicName.length - 1)) {
      playlistIndex = 0;
      player.seek(Duration.zero, index: playlistIndex);
      if (isPlay) {
        player.play();
      }
    } else {
      playlistIndex++;
      player.seek(Duration.zero, index: playlistIndex);
      if (isPlay) {
        player.play();
      }
    }
  }

  void backward() {
    player.pause();
    if (playlistIndex == 0) {
      playlistIndex = (musicName.length - 1);
      player.seek(Duration.zero, index: playlistIndex);
      if (isPlay) {
        player.play();
      }
    } else {
      playlistIndex--;
      player.seek(Duration.zero, index: playlistIndex);
      if (isPlay) {
        player.play();
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }
}
