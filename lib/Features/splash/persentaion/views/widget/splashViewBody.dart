import 'package:bookly_app/core/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splashViewBody extends StatefulWidget {
  const splashViewBody({Key? key}) : super(key: key);

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Bookly',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 5,
          ),
          AnimatedBuilder(
            builder: (context, child) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Read free books',
                  textAlign: TextAlign.center,
                ),
              );
            },
            animation: slidingAnimation,
          )
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(routs.khomeView);
    });
  }
}
