


// main(){
//   print('Hello World...!!!');
// }


// main()=> print("hello world...");


// main()  {
//   print("dart"+"lang");
//   print("object");
//   print("2+2 = ${2+2}");
//   print(true);
//   print(true && false);
//     print("7.0/3.0 =${7.0/3.0}");
// }


// main() {
  
//   var a =2;
//   a=5;
//   print(a);

//   num b=3;
//   b=6;
//   print(b);

//   final num c =5;
  

//   c.toString();
//   print(  c.toString());
// }


// For Loops


//   fun(a,[b=2,c]){
//     print(a);
//        print(b);
//           print(c);
//   }

// main() {
  
//   for (var i = 0; i < 6; i++) {
//     print(i);
//   }

// var collection = [2,3,4];
//   for (var item in collection) {
//     print(item);
//   }

// fun(56);

// }


// #################

// main(){

//   var name = "charan kumar";

//   var getUpperCase = (){
//     print(name.toUpperCase());
//   };


//   var addNumber = (num i){
//     return (num j)=>i+j;
//   };


//   getUpperCase();

//   var addTwo =addNumber(7);
//   print("add two :=> ${addTwo(2)}");
// }


main(){
  var monday="Doctor";
  var tuesday;

  var next = tuesday ?? monday;
  print("First : $next");



  var wednesday = "teacher";
   next=null;
  next ??= wednesday;
  print("Second : $next");


  var thursday="pilot";
  print(thursday?.toUpperCase());

}
