
main(){

  Colors colors = Colors.black();


  print(colors);
}
class Colors {
   int red;
   int green;
   int blue;

  Colors.black()
      : red = 0,
        green = 0,
        blue = 0{
    print('Named constructor');
  }
}
