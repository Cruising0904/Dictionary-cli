class Dic {
  late final String word, definition;
  Dic({
    required this.word,
    required this.definition,
  });

  String printDic() {
    return ("${this.word}, ${this.definition}");
  }
}

Map<String, String> wordList = {};

void register(dicHead, dicTail) {
  print("successfully added $dicHead");
  wordList[dicHead] = dicTail;
}

void get(word) {
  print("definition : ${wordList[word]}");
}

void delete(dicHead) {
  wordList.remove(dicHead);
  print("command finished");
}

void update(word, content) {
  wordList.update(word, (value) => content);
  print("updated");
  print("${wordList[word]}");
}

void showAll() {
  wordList.entries.forEach((element) {
    final key1 = element.key;
    final value1 = element.value;
    print('$key1 : $value1');
  });
}

void count() {
  print(wordList.length);
}

void upsert(word, definition) {
  // wordList.remove(word);

  if (exists(word)) {
    register(word, definition);
  } else {
    update(word, definition);
    // wordList[word] = definition;
  }

  print("updated");
  print("${wordList[word]}");
}

bool exists(word) {
  if ((wordList[word]) != "") {
    wordList.keys.map((word) => print(word));
    return true;
  }
  return false;
}

typedef tempList = Map<String, String>;
typedef toDelete = List<String>;
void bulkAdd(tempList lm) {
  wordList.addAll(lm);
}

void bulkDelete(toDelete lm) {
  lm.forEach((element) {
    wordList.remove(element);
  });
}
