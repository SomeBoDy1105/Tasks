import 'mobile.dart';

void main() {
  var phone1 = mobile("Samsung", "Galaxy S20", 60000, 10);
  phone1.printDetails();
  print("\n");
  var phone2 = mobile("Apple", "iPhone 10", 80000, 50);
  phone2.printDetails();
  print("\n");
  var phone3 = mobile("OnePlus", "7", 50000, 20);
  phone3.printDetails();
  print("\n");
}