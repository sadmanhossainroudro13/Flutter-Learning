//Counting total words from a paragraph using map in dart.
class WordWrapper {
  Map<String, int> wordWrapper(String paragraph) {
    paragraph = paragraph.toLowerCase();
    Map<String, int> map = {};
    String str = "";
    for (var i in paragraph.split("")) {
      if (i == " " || i == "," || i == ".") {
        String char = str;
        if (str.isNotEmpty) {
          if (map.containsKey(char)) {
            map[char] = map[char]! + 1;
          } else {
            map[char] = 1;
          }
        }
        str = "";
      } else {
        str += i;
      }
    }
    return map;
  }
}

void main() {
  String paragraph =
      "Literature is full of repetition. Literary writers constantly use the literary device of repeated words. I think the only type of repetition which is bad is sloppy repetition. Repetition which is unintentional, which sounds awkward.";

  WordWrapper w = WordWrapper();
  Map map = w.wordWrapper(paragraph);
  //Total words
  num totalWords = 0;
  map.forEach((key, value) {
    totalWords += value;
  });

  print(map);
  print('Total word count is:$totalWords');
}
