import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:ui_challenge/widgets/desktop_layout.dart';
import 'package:ui_challenge/widgets/mobile_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlay = false;
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
    // double deviceHeight = MediaQuery.sizeOf(context).height;
    return deviceWidth >= 1400
        ? DesktopLayout(
            musicName: "${musicName[playlistIndex]}",
            onBackward: backward,
            onForward: forward,
            playPause: playPause,
            streamBuilder: StreamBuilder<ProcessingState>(
              stream: player.playerStateStream
                  .map((state) => state.processingState),
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state == ProcessingState.loading ||
                    state == ProcessingState.buffering) {
                  return const CircularProgressIndicator(
                    strokeWidth: 2,
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
          )
        : MobileLayout(
            musicName: "${musicName[playlistIndex]}",
            onBackward: backward,
            onForward: forward,
            playPause: playPause,
            streamBuilder: StreamBuilder<ProcessingState>(
              stream: player.playerStateStream
                  .map((state) => state.processingState),
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state == ProcessingState.loading ||
                    state == ProcessingState.buffering) {
                  return const CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  );
                } else {
                  return Image.asset(
                    isPlay ? "icons/pause.png" : "icons/play.png",
                    width: deviceWidth >= 600 ? 40 : 30,
                    height: deviceWidth >= 600 ? 40 : 30,
                  );
                }
              },
            ),
          );
  }

  void playPause() {
    setState(() {
      if (player.playing) {
        isPlay = false;
        player.pause();
      } else {
        isPlay = true;
        player.play();
      }
    });
  }

  void forward() {
    setState(() {
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
    });
  }

  void backward() {
    setState(() {
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
    });
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }
}
