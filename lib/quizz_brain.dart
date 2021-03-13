import 'package:quizzler/question.dart';

class QuizzBrain {
  int _questionNumber = 0;
  int _score = 0;
  bool _isComplete = false;
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('Le soleil est jaune', true),
    Question('La pluie mouille', true),
    Question('Macron a très bien géré la crise de la covida', false),
  ];

  void nextQuestion() {
    if (this._questionNumber < this._questionBank.length - 1) {
      this._questionNumber++;
    } else {
      this._isComplete = true;
    }
  }

  String getQuestionText() {
    return this._questionBank[this._questionNumber].question;
  }

  bool getAnswer() {
    return this._questionBank[this._questionNumber].answer;
  }

  int getLength() {
    return this._questionBank.length;
  }

  bool isCorrectAnswer(bool answer) {
    if (this.getAnswer() == answer) {
      this._score++;
      return true;
    }
    return false;
  }

  int getScore() {
    return this._score;
  }

  bool isComplete() {
    return this._isComplete;
  }

  void reset() {
    this._questionNumber = 0;
    this._score = 0;
    this._isComplete = false;
  }
}
