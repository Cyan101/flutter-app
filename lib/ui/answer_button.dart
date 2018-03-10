import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  bool answer;
  VoidCallback _onTap;

  AnswerButton(this.answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material( // False
        color: answer == true ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              child: new Text(answer == true ? "True" : "False"),
            ),
          ),
        ),
      ),
    );
  }
}
