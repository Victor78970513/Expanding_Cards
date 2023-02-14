import 'package:expanding_cards/provider/provider.dart';
import 'package:expanding_cards/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GetterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (_) => HomeScreen()},
      ),
    );
  }
}

// class ProgressSteps extends StatefulWidget {
//   @override
//   _ProgressStepsState createState() => _ProgressStepsState();
// }

// class _ProgressStepsState extends State<ProgressSteps> {
//   int _currentStep = 0;

//   void _nextStep() {
//     setState(() {
//       if (_currentStep < 3) {
//         _currentStep++;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _currentStep >= 0 ? Colors.green : Colors.grey,
//                   ),
//                   child: Center(child: Text('1')),
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _currentStep >= 1 ? Colors.green : Colors.grey,
//                   ),
//                   child: Center(child: Text('2')),
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _currentStep >= 2 ? Colors.green : Colors.grey,
//                   ),
//                   child: Center(child: Text('3')),
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _currentStep >= 3 ? Colors.green : Colors.grey,
//                   ),
//                   child: Center(child: Text('4')),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _nextStep,
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ProgressStepsPage extends StatefulWidget {
//   @override
//   _ProgressStepsPageState createState() => _ProgressStepsPageState();
// }

// class _ProgressStepsPageState extends State<ProgressStepsPage> {
//   int _currentStep = 1;
//   bool _isPrevButtonEnabled = false;
//   bool _isNextButtonEnabled = true;

//   void _handleNextButtonPressed() {
//     setState(() {
//       _currentStep++;
//       if (_currentStep > 1) {
//         _isPrevButtonEnabled = true;
//       }
//       if (_currentStep == 4) {
//         _isNextButtonEnabled = false;
//       }
//     });
//   }

//   void _handlePrevButtonPressed() {
//     setState(() {
//       _currentStep--;
//       if (_currentStep == 1) {
//         _isPrevButtonEnabled = false;
//       }
//       if (_currentStep < 4) {
//         _isNextButtonEnabled = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Progress Steps'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _buildStepCircle(1, _currentStep),
//                 _buildStepCircle(2, _currentStep),
//                 _buildStepCircle(3, _currentStep),
//                 _buildStepCircle(4, _currentStep),
//               ],
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed:
//                       _isPrevButtonEnabled ? _handlePrevButtonPressed : null,
//                   child: Text('Prev'),
//                 ),
//                 ElevatedButton(
//                   onPressed:
//                       _isNextButtonEnabled ? _handleNextButtonPressed : null,
//                   child: Text('Next'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildStepCircle(int stepNumber, int currentStep) {
//     bool isActive = stepNumber == currentStep;
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: isActive ? Colors.blue : Colors.grey,
//       ),
//       child: Text(
//         stepNumber.toString(),
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       padding: EdgeInsets.all(16),
//     );
//   }
// }
