// import 'dart:io';

// import 'package:flutter/material.dart';

// class AppBackControl extends StatefulWidget {
//   const AppBackControl({required this.child, super.key, this.onBack});

//   final Widget child;
//   final VoidCallback? onBack;

//   @override
//   State<AppBackControl> createState() => _AppBackControlState();
// }

// class _AppBackControlState extends State<AppBackControl> {
//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false, // Disable default back behavior
//       onPopInvoked: (didPop) {
//         FocusScope.of(context).unfocus();
//         if (didPop) return;
//         print('a');
//         if (widget.onBack != null) {
//           print('a');
//           widget.onBack!.call();
//         } else {
//           Get.back();
//           // Navigator.of(context).maybePop(); // default pop
//         }
//       },
//       child: GestureDetector(
//         onHorizontalDragUpdate: (details) {
//           FocusScope.of(context).unfocus();
//           if (Platform.isIOS && details.delta.dx > 10) {
//             if (widget.onBack != null) {
//               widget.onBack!.call();
//             } else {
//               Get.back();
//             }
//           }
//         },
//         child: widget.child,
//       ),
//     );
//   }
// }
