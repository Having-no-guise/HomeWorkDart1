

void main() {

  print('Task 1:\n\n');
  for (int i = 1; i <=100; ++i) {
    
    if (i%3 == 0 && i%5 == 0) {
      print('Super Quiz');
    }
    
    else if (i%3 == 0) {
      print('Super');
    }

    else if (i%5 == 0) {
      print('Quiz');
    }
    else {
      print(i);
    }
  }


  print('\n\nTask 2:\n\n');
  /*
  с вводом через консоль танцы с бубном, и т.к. я хз где ты будешь проверять,
  переменную хардкодим (=
  */
  int number = 22222;
  int count = 0;
  while (number>0) {
    ++count;
    number = number~/10;
  }
  print(count);

  print('\n\nTask 3:\n\n');
  int year = 2023;
  int centuary;
  if (year % 100 == 0) {
    centuary = year ~/ 100;
  }
  else {
    centuary = year ~/ 100 + 1;
  }
  print(centuary);
}