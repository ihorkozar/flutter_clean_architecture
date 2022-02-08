import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/custom_stepper.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                FlutterLogo(
                  size: 40,
                ),
                Text('FLUTTER'),
              ],
            ),
          ),
        ),
        body: CustomStepper(
          type: CustomStepperType.horizontal,
          steps: getSteps(),
        ),
      );

  List<CustomStep> getSteps() => [
        CustomStep(
          subtitle: Container(
            color: Colors.green,
            child: Text('subtitle'),
          ),
          title: Container(
            color: Colors.green,
            child: Text('title'),
          ),
          content: Container(
            child: Text('Content'),
          ),
        ),
        CustomStep(
          subtitle: Container(
            color: Colors.green,
            child: Text('subtitle'),
          ),
          title: Container(
            color: Colors.green,
            child: Text('title'),
          ),
          content: Container(
            child: Text('Content'),
          ),
        ),
        CustomStep(
          subtitle: Container(
            color: Colors.green,
            child: Text('subtitle'),
          ),
          title: Container(
            color: Colors.green,
            child: Text('title'),
          ),
          content: Container(
            child: Text('Content'),
          ),
        ),
      ];
}
