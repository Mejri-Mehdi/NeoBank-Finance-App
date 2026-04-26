import '/authentication/button5/button5_widget.dart';
import '/authentication/onboarding_slide2/onboarding_slide2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_u_t_h_onboarding2_widget.dart' show AUTHOnboarding2Widget;
import 'package:flutter/material.dart';

class AUTHOnboarding2Model extends FlutterFlowModel<AUTHOnboarding2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button5Model buttonModel1;
  // Model for OnboardingSlide.
  late OnboardingSlide2Model onboardingSlideModel;
  // Model for Button.
  late Button5Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button5Model());
    onboardingSlideModel = createModel(context, () => OnboardingSlide2Model());
    buttonModel2 = createModel(context, () => Button5Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    onboardingSlideModel.dispose();
    buttonModel2.dispose();
  }
}
