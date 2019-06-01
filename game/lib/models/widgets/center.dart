import 'package:flutter/material.dart';

import '../../screens/game_screen/challenge_widget_widget.dart';
import '../challenge_widget.dart';

class CenterWidget extends ChallengeWidget {

  @override
  String name() => 'Center';

  CenterWidget() {
    properties['child'] = ChallengeWidgetProperty(PropertyType.WIDGET);
  }

  Widget toWidget() {
    return Center(child: getProperty('child').getAsWidget());
  }

  static ChallengeWidgetWidget toIcon(void Function(ChallengeWidget) onClick) {
    return ChallengeWidgetWidget(
      icon: Image.asset('assets/images/widgets/center.png'),
      text: 'Center',
      creator: () => CenterWidget(),
      onClick: onClick,
    );
  }
}

