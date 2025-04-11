import 'package:flutter/material.dart';

class InsertYouth extends StatefulWidget {
  const InsertYouth({super.key});

  @override
  State<InsertYouth> createState() => _InsertYouthState();
}

class _InsertYouthState extends State<InsertYouth> {

  int currStep = 0;
  bool get isFirstStep => currStep == 0;
  // bool get isLastStep => currStep == steps().lenght - 1;

  @override
  Widget build(BuildContext context) {
    List<Step> steps() => [
      const Step(
        title: Text('Personal Information'),
        content: Text('Personal Information'),
      ),
      const Step(
        title: Text('Address & Birth Details'),
        content: Text('Address & Birth Details'),
      ),
      const Step(title: Text('Other Details'), content: Text('Other Details')),
    ];
    return const Placeholder();
  }
}
