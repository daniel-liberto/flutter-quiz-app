class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

// shuffle() method changes the original list, so create a copy is necessary
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // create copy list
    shuffledList.shuffle(); // shuffle the coppied list
    return shuffledList; // returning a shuffled list
  }
}
