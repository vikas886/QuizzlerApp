import 'questions.dart';
class  QuizBrain{
  int _questionNo = 0;
  List<Question> _questionBank = [
    Question(questionText: 'hi', ans: true),
    Question(questionText: 'bye', ans: false),
    Question(questionText: 'hello', ans: true),
  ];
  void nextQuestion(){
    if(_questionNo<_questionBank.length-1){
      _questionNo++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNo].questionText;
  }
  bool getAns(){
    return _questionBank[_questionNo].ans;
  }
}