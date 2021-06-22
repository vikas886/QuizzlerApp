import 'dart:convert';

class Question {
  String questionText;
  bool ans;
  Question({
    required this.questionText,
    required this.ans,
  });

  Question copyWith({
    String? questionText,
    bool? ans,
  }) {
    return Question(
      questionText: questionText ?? this.questionText,
      ans: ans ?? this.ans,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionText': questionText,
      'ans': ans,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      questionText: map['questionText'],
      ans: map['ans'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source));

  @override
  String toString() => 'Question(questionText: $questionText, ans: $ans)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Question &&
      other.questionText == questionText &&
      other.ans == ans;
  }

  @override
  int get hashCode => questionText.hashCode ^ ans.hashCode;
}
