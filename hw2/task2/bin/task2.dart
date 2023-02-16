
void main() {
var list = [60, 'new'];
var searchingValue = 'new';
var value = false;
for (var i in list) {
  if (searchingValue == i){
    value = true;
    break;
  }
}
print(value);
}
