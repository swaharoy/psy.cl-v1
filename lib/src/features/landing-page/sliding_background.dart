import 'package:flutter/material.dart';
import 'package:psycl/src/features/progress-circle/progress_painter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../calendar/calendar.dart';
import '../progress-circle/progress_circle.dart';
import '../../../assets/constants.dart' as constants;

class PagedBackground extends StatelessWidget {
  const PagedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final pageViewChildren = <Widget>[
      Center(child: ProgressCircle()),
      Center(
        child: Calendar(),
      ),
      const Center(
        child: Text('Graphs Page'),
      ),
    ];

    final pageView = PageView(
      controller: controller,
      children: pageViewChildren,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: pageView,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: pageViewChildren.length,
          axisDirection: Axis.horizontal,
          effect: const ScaleEffect(
            activeDotColor: constants.DARK_GRAY,
            dotHeight: 10,
            dotColor: constants.GRAY,
            dotWidth: 10,
          ),
        ),
        SizedBox(
          height:
              MediaQuery.of(context).size.height * constants.MIN_PANEL_HEIGHT +
                  10,
        )
      ],
    );
  }
}
