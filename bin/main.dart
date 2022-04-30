//
void main() {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  print(addToUp(5).toInt());
  print(addToUp2(5).toInt());
  print(sum([1,2,3,4,5]));
  doubleListItem([1,2,3,4,5]);
  print(stopwatch.elapsed);

}

// solution one
String textReverse(String text) {
  return text.split('').reversed.join();
}

// solution two
String textReverse2(String text) {
  String reversed = '';
  for (int i = 0; i < text.length; i++) {
    reversed = text[i] + reversed;
  }
  return reversed;
}

//////////////////////////////////////////////////////////////
// solution one
double addToUp(double max) {
  return max * (max + 1) / 2;
}

// solution two
int addToUp2(int max) {
  int total = 0;
  for (int i = 1; i <= max; i++) {
    total += i;
  }
  return total;
}


// time complexity
int sum(List<int> numbers){
  int total = 0;
  for(int i = 0; i < numbers.length; i++){
    total += numbers[i];
  }
  return total;
}

void doubleListItem(List<int> numbers) {
  List<int> newList = [];
  for (int i = 0; i < numbers.length; i++) {
    newList.add(2 * numbers[i]);
  }
  print(newList);
}
