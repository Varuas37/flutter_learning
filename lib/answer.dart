import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;

  Answer(this.selectHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent, // background
            onPrimary: Colors.white, // foreground
          ),
          child: Text(answer),
          onPressed: selectHandler
          ),
    );
  }
}
