// 8. String to Integer(atoi)
class Solution{

int myAtoi(String s) {
  int i = 0;
  int n = s.length;
  
  // 1. تخطي الفراغات في البداية
  while (i < n && s[i] == ' ') {
    i++;
  }
  
  // 2. التحقق من وجود علامة + أو -
  int sign = 1;
  if (i < n) {
    if (s[i] == '-') {
      sign = -1;
      i++;
    } else if (s[i] == '+') {
      i++;
    }
  }
  
  // 3. قراءة الأرقام مع تخطي الأصفار في البداية
  int result = 0;
  bool hasDigits = false;
  
  while (i < n && s[i].codeUnitAt(0) >= '0'.codeUnitAt(0) && s[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
    int digit = s[i].codeUnitAt(0) - '0'.codeUnitAt(0);
    hasDigits = true;

    // التحقق من تجاوز الحد الأعلى أو الأدنى لـ 32-bit signed int
    if (result > (2147483647 - digit) ~/ 10) {
      return sign == 1 ? 2147483647 : -2147483648;
    }

    result = result * 10 + digit;
    i++;
  }
  
  if (!hasDigits) return 0;

  return sign * result;
}

void main() {
  String input = "   -42 with text";
  int result = myAtoi(input);
  print(result); // رح يطبع: -42
}

}