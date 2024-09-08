import 'package:flutter/material.dart';

class CarHistoryPage extends StatefulWidget {
  const CarHistoryPage({super.key});

  @override
  State<CarHistoryPage> createState() => _CarHistoryPageState();
}

class _CarHistoryPageState extends State<CarHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Car History'),);
  }
}