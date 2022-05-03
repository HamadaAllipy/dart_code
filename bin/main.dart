
//0:00:00.013532
void main() {
  sortMap();
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
  while(list[middle] != key && start < end){
    print('start = $start, middle = $middle, end = $end');
   if(list[middle] > key){
     end = middle - 1;
   }
   else{
     start = middle + 1;
   }
   middle = ((start + end) / 2).floor();
  }
  if(list[middle] == key){
    return middle;
  }
  return -1;
}


int binarySearch2(List list, int key){
  int start = 0;
  int end = list.length - 1;
  int middle = ((start + end ) / 2).floor();
  while(list[middle] != key && start < end){
    if(list[middle] > key){
      end = middle -1;
    }
    else{
      start = middle + 1;
    }
     middle = ((start + end ) / 2).floor();
  }
  if(list[middle] == key){
    return middle;
  }
  return -1;
}

// sort with built in method
void sortBuiltInMethod(){
  List<int> list = [0, -1, 343, 3, -44, 10];
  List<String> listString = ['zaid','hamada', 'ahmed', 'mohamed'];
  listString.sort((a, b) => a.length.compareTo(b.length));
  print(list..sort());
  print(listString);
}

void sortMap(){
  List<Map<String, dynamic>> clothes = [
    {
      'name':'shoes',
      'price': 300,
    },
    {
      'name':'shirt',
      'price': 200,
    },
    {
      'name':'swatter',
      'price': 450,
    },
    {
      'name':'bow',
      'price': 25,
    },
  ];
  clothes.sort(((a, b) => a['price'].compareTo(b['price'])));
  print(clothes);
}
