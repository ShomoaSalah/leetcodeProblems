// 1287. Element Appearing more than 25% in sorted array

class Solution {
  int findSpecialInteger(List<int> arr) {
    int n = arr.length;
    for (int i=0;i<n;++i){
        if (arr[i]==arr[i+(n>>2)]){
            return arr[i];
        }
    }
    return 0;
  }


void main() {
 
 var arr = [1,2,2,6,6,6,6,7,10];
 print(findSpecialInteger(arr));

  var arr2 = [1,1];
 print(findSpecialInteger(arr2));

}

}