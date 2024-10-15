import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/features/home/data/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  
  @override
  void initState(){
    super.initState();

    initSlidingAnimation();

    navigateToHome();

  }

  


  void dispose()
  {
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Image.network(AssetsDate.logo),
        SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
      
    );
  }
  
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      );
    
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
    .animate(animationController);
    
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => HomeView(), 
      transition: Transition.fade, 
      duration: kTransitionDuration);
    });
  }
}
