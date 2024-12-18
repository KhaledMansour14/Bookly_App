import 'package:bookly/constant.dart';
import 'package:bookly/core/assets.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/slining_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.logoPath,
            width: 700,
            height: 100,
          ),
          const SizedBox(
            height: 4,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ]);
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: ConstantsValues.kTranstionDuration);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(begin: Offset(0, -4), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }
}
