//
void main() {
  print(fact(5));
}

// *1 example
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
// *2 example
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

// *3 example
// اكتب فانكشن بتاخد ليست وبتحسب مجموع الارقام داخل الليست
// time complexity
int sum(List<int> numbers) {
  int total = 0;
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  return total;
}

// *4 example
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
  for (int i = 0; i < lowerCase.length; i++) {
    String character = lowerCase[i];
    if (result.containsKey(character)) {
      result[character] += 1;
    } else {
      result[character] = 1;
    }
  }
  return result;
}

// *5 example
// recursion -- recursive function
// اكتب فانشكن بتاخد رقم وتتطبع من رقم الي الصفر
// solution one best
void recursion(int n) {
  if (n < 0) {
    return;
  }
  print(n);
  n--;
  recursion(n--);
}

// solution two bad
void recursion2(int n) {
  for (n; n >= 0; n--) {
    print(n);
  }
}

void countDown(int number) {
  if (number <= 0) {
    /// base case;;;;;  هو الشرط اللي هويقف استدعاء الفانشكن
    print('all done');
    return;
  }
  print(number);
  number--;
  countDown(number);
}

// *6 example
// اكتب فانشكن بتاخد ليست وتطبع الارقام الزوجية فقط
void isOdd(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      print(numbers[i]);
    }
  }
}

// الحل بتاعي
void isOddRecursion(List<int> numbers) {
  if (numbers.isEmpty) {
    return;
  }
  if (numbers[0] % 2 == 0) {
    print(numbers[0]);
  }
  numbers.removeAt(0);
  isOddRecursion(numbers);
}

// اكتب فانكشن بتاخد رقم وبتضرب في الارقام اللي قبلها لحد ١ (المضروب)
// input = 5   ,  5 * 4 * 3 * 2 * 1 = ?
void factonial(int number) {
  int total = 1;
  for (int i = 2; i <= number; i++) {
    total *= i;
  }
  print(total);
}

int fact(int number) {
  // base case
  if (number == 1) {
    return 1;
  }
// 5 * 3 * 2 * 1
  // 5
  int total = number * fact(number - 1);
  return total;
}
