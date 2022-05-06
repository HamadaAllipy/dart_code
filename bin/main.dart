import 'dart:math' as math;

void main() {

  int number = 7140;
  // print(getNumberByDigitNumber(number, 2));
  print(getNumberByDigitNumber2(number, 1));
}

void swapTwoVariable() {
  int num1 = 55;
  int num2 = 23;
  num1 = num1 + num2; // 55 + 23 = 78
  num2 = num1 - num2; // 78 - 23 = 55
  num1 = num1 - num2; // 78 - 55 = 23
  print('num1 = $num1');
  print('num2 = $num2');
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

// اكتب فانكشن بتاخد ليست وبترجع الارقام الفردية في ليستا تانيه
List<int> listOdd(List<int> numbers) {
  List<int> odd = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 1) {
      odd.add(numbers[i]);
    }
  }
  return odd;
}

List<int> listOddd(List<int> numbers) {
  List<int> result = [];
  void helper(List<int> list) {
    if (list.isEmpty) {
      return;
    }
    if (list[0] % 2 != 0) {
      result.add(list[0]);
    }
    list = list.sublist(1, list.length);
    helper(list);
  }

  helper(numbers);
  return result;
}

// ١- خوارزمية البحث الخطي
int linearSearch(List list, var value) {
  return list.indexOf(value);
}

int linearSearch2(List list, var value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1;
}

// خوارزمية البحث الثنائي
//   [ 5 , 8 , 12 , 16 , 19 , 25 , 30 ]
int binarySearch(List list, int key) {
  int start = 0;
  int end = list.length - 1;
  int middle = ((start + end) / 2).floor();
  while (list[middle] != key && start < end) {
    print('start = $start, middle = $middle, end = $end');
    if (list[middle] > key) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
    middle = ((start + end) / 2).floor();
  }
  if (list[middle] == key) {
    return middle;
  }
  return -1;
}

int binarySearch2(List list, int key) {
  int start = 0;
  int end = list.length - 1;
  int middle = ((start + end) / 2).floor();
  while (list[middle] != key && start < end) {
    if (list[middle] > key) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
    middle = ((start + end) / 2).floor();
  }
  if (list[middle] == key) {
    return middle;
  }
  return -1;
}

// sort with built in method
void sortBuiltInMethod() {
  List<int> list = [0, -1, 343, 3, -44, 10];
  List<String> listString = ['zaid', 'hamada', 'ahmed', 'mohamed'];
  listString.sort((a, b) => a.length.compareTo(b.length));
  print(list..sort());
  print(listString);
}

void sortMap() {
  List<Map<String, dynamic>> clothes = [
    {
      'name': 'shoes',
      'price': 300,
    },
    {
      'name': 'shirt',
      'price': 200,
    },
    {
      'name': 'swatter',
      'price': 450,
    },
    {
      'name': 'bow',
      'price': 25,
    },
  ];
  clothes.sort(((a, b) => a['price'].compareTo(b['price'])));
  print(clothes);
}

// Sorting
// 1- Bubble Sorting
List<int> bubbleSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    print(list);
    for (int j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {
        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
  }
  return list;
}

// optimize bubble sorting
List<int> bubbleSort2(List<int> list) {
  int count = 0;
  bool noSwap;
  for (int i = list.length; i > 0; i--) {
    print(list);
    noSwap = true;
    for (int j = 0; j < i - 1; j++) {
      count++;
      if (list[j] > list[j + 1]) {
        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
        noSwap = false;
      }
    }
    if (noSwap) break;
  }
  print(count);
  return list;
}

List<int> selectionSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    int min = i;
    for (int j = i + 1; j < list.length; j++) {
      if (list[j] < list[min]) {
        min = j;
      }
    }
    if (min != i) {
      int temp = list[i];
      list[i] = list[min];
      list[min] = temp;
    }
  }
  return list;
}

void insertionSort() {
  List<int> list = [80, 11, 15, 6, 77, 7, 64];
  for (int i = 1; i < list.length; i++) {
    int current = list[i];
    int j;
    for (j = i - 1; (j > -1) && current < list[j]; j--) {
      list[j + 1] = list[j];
    }
    list[j + 1] = current;
  }
  print(list);
}

//[2,15,7,32,48,15,7,78,28,29,35];
List<int> mergeSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int middleIndex = (list.length / 2).floor();
  List<int> leftList = mergeSort(list.sublist(0, middleIndex));
  List<int> rightList = mergeSort(list.sublist(middleIndex));
  return merge(leftList, rightList);
}

// create function merge
List<int> merge(List<int> list1, List<int> list2) {
  List<int> merged = [];
  int i = 0;
  int j = 0;
  while (i < list1.length && j < list2.length) {
    if (list1[i] < list2[j]) {
      merged.add(list1[i]);
      i++;
    } else {
      merged.add(list2[j]);
      j++;
    }
  }
  while (i < list1.length) {
    merged.add(list1[i]);
    i++;
  }
  while (j < list2.length) {
    merged.add(list2[j]);
    j++;
  }
  return merged;
}

// quick sorting
List<int> quickSort(List<int> list, [left = 0, int right = -2]) {
  if (right == -2) {
    right = list.length;
  }
  if (left < right) {
    int pivotIndex = pivot(list, left, right);
    // left
    quickSort(list, left, pivotIndex - 1);
    // right
    quickSort(list, pivotIndex + 1, right);
  }
  return list;
}

int pivot(List<int> list, [int start = 0, int end = -1]) {
  if (end == -1) {
    end = list.length - 1;
  }
  int pivott = list[start];
  int swapIndex = start;
  for (int i = start + 1; i < list.length; i++) {
    if (pivott > list[i]) {
      swapIndex++;
      swap(list, swapIndex, i);
    }
  }
  swap(list, start, swapIndex);
  return swapIndex;
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

// digits counter
int digitCount(int num) {
  if (num == 0) return 1;
  int log10(x) => math.log(x) ~/ math.ln10;
  int digits = log10(num.abs()) + 1;
  return digits;
}

int digitCount2(int num) {
  int digits;
  if (num.toString().contains('-')) {
    digits = num.toString().length.abs() - 1;
  } else {
    digits = num.toString().length.abs();
  }
  return digits;
}

void mostDigit(List<int> list) {
  int maxDigit = 0;
  for (int i = 0; i < list.length; i++) {
    maxDigit = math.max(maxDigit, digitCount2(list[i]));
  }
  print('maxDigit = $maxDigit');
}

// left to right
int getNumberByDigitNumber(int number, int digit) {
  // 9 4 0 3
  String numString = '-1';
  if (number.toString().length >= digit && digit != 0) {
    numString = number.toString().split('')[digit - 1];
  }
  return int.parse(numString);
}
// right to left
int getNumberByDigitNumber2(int num, int indexFromRight) {
  int number = (num.abs() / math.pow(10, indexFromRight)).floor() % 10;
  return number;
}


