List fromStringToNumber (List listOfLine) {
  int position = 1;
  List value = [];
  
  for (String i in listOfLine) {
    List listOfCodes = i.codeUnits;
    int summ = 0;
    
    for (int j in listOfCodes) {
      if (j==32) continue;
      summ += j - 96;
    }

    value.add(summ*position);
    position+=1;
  }

  return value;
}

void main() {
  print(fromStringToNumber(["dart", "abc", "good luck"]));
}
