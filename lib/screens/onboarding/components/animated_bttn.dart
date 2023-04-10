import 'package:flutter/cupertino.dart';

import 'package:rive/rive.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required RiveAnimationController bttnAnimationController,
    required this.press,
  }) : _bttnAnimationController = bttnAnimationController;

  final RiveAnimationController _bttnAnimationController;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset(
              'assets/RiveAssets/button.riv',
              controllers: [_bttnAnimationController],
            ),
            Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(CupertinoIcons.arrow_right),
                  Text(
                    'Start the course',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
