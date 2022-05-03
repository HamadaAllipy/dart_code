//
void main() {

  final numbers = [1,2,3,4,5,6,7,8,9];
  isOdd(numbers);
}


// *example
// اكتب فانشكن بتاخد نص وبتعكسه
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
// *example
// اكتب فانكشن بتاخد رقم وبتجمع مجموع الرقم والارقام اللي قبليها
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

// *example
// اكتب فانكشن بتاخد ليست وبتحسب مجموع الارقام داخل الليست
// time complexity
int sum(List<int> numbers) {
  int total = 0;
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  return total;
}

// *example
// اكتب فانشكن بتنسخ الليست في ليستا تانيه
void doubleListItem(List<int> numbers) {
  List<int> newList = [];
  for (int i = 0; i < numbers.length; i++) {
    newList.add(2 * numbers[i]);
  }
  print(newList);
}

Map charCounter(String text) {
  Map result = {};
  String lowerCase = text.replaceAll(' ', '')..toLowerCase();
  print(lowerCase);
  for(int i = 0; i < lowerCase.length; i++){
    String character = lowerCase[i];
    if(result.containsKey(character)){
      result[character] += 1;
    }
    else{
      result[character] = 1;
    }
  }
  return result;
}

// *example
// اكتب فانشكن بتاخد رقم وتتطبع من رقم الي الصفر
// solution one best
void recursion(int n){
  if(n < 0){
    return;
  }
  recursion(n-1);
  print(n);

}
// solution two bad
void recursion2(int n){
  for(n; n >= 0; n--){
    print(n);
  }
}

// *example
// اكتب فانشكن بتاخد ليست وتطبع الارقام الزوجية فقط
void isOdd(List<int> numbers){
  for(int i = 0 ; i < numbers.length; i++){
    if(numbers[i] % 2 == 0){
      print(numbers[i]);
    }
  }
}