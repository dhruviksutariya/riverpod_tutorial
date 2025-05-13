import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final name = Provider<String>((ref) {
  return 'Dhruvik';
});

final age = Provider<int>((ref) {
  return 23;
});

class Homescreen extends ConsumerStatefulWidget {
  const Homescreen({super.key});

  @override
  ConsumerState<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends ConsumerState<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final hello = ref.watch(name);
    final Age = ref.watch(age);
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(hello + "" + Age.toString())),
    );
  }
}

// class Homescreen extends ConsumerWidget {
//   const Homescreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final hello = ref.watch(name);
//     return Scaffold(appBar: AppBar(), body: Center(child: Text(hello)));
//   }
// }
