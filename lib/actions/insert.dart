import 'package:flutter/material.dart';

class InsertYouth extends StatefulWidget {
  const InsertYouth({super.key});

  @override
  State<InsertYouth> createState() => _InsertYouthState();
}

class _InsertYouthState extends State<InsertYouth> {
  int currStep = 0;
  bool get isFirstStep => currStep == 0;
  bool get isLastStep => currStep == steps().length - 1;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stepper(
      steps: steps(),
      currentStep: currStep,
      onStepContinue: () {
        if (isLastStep) {
        } else {
          setState(() {
            currStep += 1;
          });
        }
      },
      onStepCancel: isFirstStep ? null : () => setState(() => currStep -= 1),
      onStepTapped: (step) => setState(() => currStep = step),
    ),
  );

  List<Step> steps() => [
    Step(
      isActive: currStep >= 0,
      title: Text('Personal Information'),
      content: Column(
        
      ),
    ),
    Step(
      isActive: currStep >= 1,
      title: Text('Address & Birth Details'),
      content: Column(
        
      ),
    ),
    Step(
      isActive: currStep >= 2,
      title: Text('Other Details'),
      content: Column(
        
      ),
    ),
  ];
}
