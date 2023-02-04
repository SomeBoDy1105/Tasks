// ignore_for_file: camel_case_types

class mobile  {
  var brand = "";
  var model = "";
  var mrp= 0.0;
  var discount = 0.0;

  mobile(this.brand, this.model, this.mrp, this.discount){
    print("Mobile object created");
  }


  // Method to calculate the discount price
  double getActualPrice() {
    return mrp - (mrp * discount / 100);
  }

  // methode to display the details of the mobile
  void printDetails() {
    print("Brand: $brand");
    print("Model: $model");
    print("mrp: $mrp");
    print("Discount: $discount");
    print("Discount Price: ${getActualPrice()}");
  }
}