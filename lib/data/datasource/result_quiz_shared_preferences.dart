import 'dart:convert';

import 'package:quiz_app/data/model/quiz_result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultQuizSharedPreferences {
  final _sharedPreferences = SharedPreferences.getInstance();
  static const String _key = 'quiz_results';

  Future<void> saveQuizResult(QuizResult quizResult) async {
    final jsonList = (await _sharedPreferences).getStringList(_key) ?? [];
    jsonList.add(json.encode(quizResult.toMap()));
    (await _sharedPreferences).setStringList(_key, jsonList);
  }

  Future<List<QuizResult>> loadQuizResults() async {
    final jsonList = (await _sharedPreferences).getStringList(_key) ?? [];
    return jsonList.map((e) => QuizResult.fromMap(json.decode(e))).toList();
  }
}
