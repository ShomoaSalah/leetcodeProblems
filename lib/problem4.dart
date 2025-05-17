//1023 Camelcase matching

class Solution {

List<bool> camelMatch(List<String> queries, String pattern) {


  List<bool> result = [];

  for (String query in queries) {
    int j = 0; // مؤشر النمط

    for (int i = 0; i < query.length; i++) {
      if (j < pattern.length && query[i] == pattern[j]) {
        j++;
      } else if (query[i].toUpperCase() == query[i]) {
        // إذا كانت حرف كبير ولا يتطابق مع النمط
        j = -1; // مباشرة نخرج من الحلقة
        break;
      }
    }

    // نضيف النتيجة بناءً على تطابق كامل النمط
    result.add(j == pattern.length);
  }

  return result;
    
      }


void main() {
  List<String> queries = ['FooBar', 'FooBarTest', 'FootBall', 'FrameBuffer', 'ForceFeedBack'];
  String pattern = 'FB';

  List<bool> result = camelMatch(queries, pattern);
  print(result); // يجب أن تكون: [true, false, true, true, false]
}


  

}
