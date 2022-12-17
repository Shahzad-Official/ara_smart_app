import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../constants/app_colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/background_screen.dart';
import '../register_screens/if_exit.dart';
import '../register_screens/login_screen.dart';
import '../register_screens/new_user_registration.dart';

class FirstWelcome extends StatefulWidget {
  const FirstWelcome({Key? key}) : super(key: key);

  @override
  State<FirstWelcome> createState() => _FirstWelcomeState();
}

class _FirstWelcomeState extends State<FirstWelcome> {
  final player = AudioPlayer();
  SpeechToText speech = SpeechToText();
  String textString = "Press The Button";
  bool isListen = false;
  String? data;
  listenToYou() async {
    if (!isListen) {
      bool avail = await speech.initialize(
        onStatus: (status) {},
        onError: (errorNotification) {},
      );
      if (avail) {
        isListen = true;
        if (mounted) setState(() {});
        speech.listen(onResult: (value) {
          data = value.recognizedWords;
          if (mounted) setState(() {});
        });
        Future.delayed(
          const Duration(seconds: 7),
          (() {
            isListen = false;
            if (mounted) setState(() {});
            speech.stop();
          }),
        );
      }
    } else {
      isListen = false;
      if (mounted) setState(() {});
      speech.stop();
    }
  }

  playCommand() async {
    String audioasset = "assets/audios/command.mp3";
    ByteData bytes = await rootBundle.load(audioasset);
    Uint8List soundbytes =
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    await player.play(
      BytesSource(soundbytes),
    );
    player.onPlayerComplete.listen((event) {
      listenToYou();
    });
  }

  @override
  void initState() {
    super.initState();
    playCommand();
  }

  @override
  Widget build(BuildContext context) {
    if (data == 'login' || data == "one") {
      Future.delayed(
        const Duration(seconds: 1),
        (() => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            )),
      );
    }
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              BackgroundScreen(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: AppText(
                            text: "Welcome",
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: AppText(
                            text: ":Do you want",
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(
                              LoginScreen(),
                            );
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25),
                            child: CustomButton(
                              text: "Log in",
                              num: "1",
                              height: 70,
                              fontSize: 25,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const NewUserRegistration());
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25),
                            child: CustomButton(
                              text: "New User",
                              num: "2",
                              height: 70,
                              fontSize: 25,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const ExitScreen());
                          },
                          child: CustomButton(
                            text: "Exit",
                            num: "3",
                            height: 40,
                            width: 120,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: AvatarGlow(
            animate: isListen,
            glowColor: Colors.red,
            endRadius: 65.0,
            duration: const Duration(milliseconds: 2000),
            repeatPauseDuration: const Duration(milliseconds: 100),
            repeat: true,
            child: FloatingActionButton(
              child: Icon(isListen ? Icons.mic : Icons.mic_none),
              onPressed: () async {
                await listenToYou();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget NumberContainer(String num) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: AppText(
          text: num,
          color: AppColors.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
