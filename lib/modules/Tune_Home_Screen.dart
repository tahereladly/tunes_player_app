import 'package:flutter/material.dart';
import 'package:tuens_player_app/components/Tune_Item.dart';
import 'package:tuens_player_app/models/Tune_Model.dart';

class TuneHomeScreen extends StatelessWidget {
  const TuneHomeScreen({Key? key}) : super(key: key);
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff26313A),
        title: const Text('Flutter Tune'),
        centerTitle: true,
      ),
      body: Column(
        children: tunes
            .map(
              (value) => TuneItem(tune: value),
            )
            .toList(),
      ),
    );
  }
}
