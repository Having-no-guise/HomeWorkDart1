Function fromListToNumber = (List line) 
  {
    if (line.isEmpty) {
      print("$line => 0");
      return 0;
    }
    int summ = 0;
    for (String i in line) {
      summ+=i.length;
    }
    print("$line => $summ");
  };

Function positiveNumbers = (List line) 
  {
    if (line.isEmpty) {
      print("$line => 0");
      return 0;
    }
    int summ = 0;
    for (int i in line) {
      if (i>0) {
        summ+=i;
      }
    }
    print("$line => $summ");
  };
void main() {
  print('-----------task1---------');
  fromListToNumber([]);
  print("\n\n-----------task2---------------");
  positiveNumbers([1, 2]);
}
