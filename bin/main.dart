void main(){

  print(textReverse('hamada'));
  print(textReverse2('hamada'));
}

// solution one
String textReverse(String text){
  return text.split('').reversed.join();
}
// solution two
String textReverse2(String text){
  String reversed = '';
  for(int i = 0; i < text.length; i++){
    reversed = text[i] + reversed;
  }
  return reversed;
}

