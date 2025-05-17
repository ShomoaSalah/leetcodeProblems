// 9. palindrome number

class Solution {
bool isPalindrome(int x) {
  // Convert the integer to a string
  String str = x.toString();

  // Check if the string is a palindrome
  int left = 0;
  int right = str.length - 1;

  while (left < right) {
    if (str[left] != str[right]) {
      return false; // Not a palindrome
    }
    left++;
    right--;
  }

  return true; // Palindrome
}

void main() {
  print(isPalindrome(121));   // Output: true
  print(isPalindrome(-121));  // Output: false
  print(isPalindrome(10));     // Output: false
}
}