void main() {
  print(findPair([2, 7, 11, 15], 9));   
  print(findPair([3, 2, 4], 6));       
  print(findPair([3, 3], 6));           
  print(findPair([1, 2, 3], 10));       
  print(findPair([], 5));               
}

List<int> findPair(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}

