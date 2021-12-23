import 'dart:math';

class Game{ //ชื่อclass ใช้upper camel case
  static const maxRandom = 100;
  int? _answer;
  var count = 0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1;
  }
  int doGuess(int num){
    count++;
    if (num > _answer!){
      return 1;
    }else if (num < _answer!){
      return -1;
    }else{
      return 0;
    }
  }
}

