import 'dart:io';

void main(){
  //Taking Input as String
  String rawInput = stdin.readLineSync() ?? "";
  //Dividing the input by space
  List<String> lst = rawInput.split(" ");
  //Adding into map and converting to double
  var cgpa = lst.map((item){
    return double.tryParse(item) ?? 0.0;
  });
  //again map to List 
  List<double> mainCgpa = cgpa.toList();
  
  if(mainCgpa.contains(0.0)){
    print("Result: Failed");
  }
  else{
    double total = cgpa.reduce((a,b){
      return a+b;
    });

    double result = total/mainCgpa.length;
    print("Result is ${result.toStringAsFixed(2)}");
  }
}