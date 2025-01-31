class TPricingCalculator{
  TPricingCalculator._();




//   calculate price on based of tax and shipping
static double calculateTotalPrice(double productPrice, String location)
{
  double taxRate=getTaxRateForLocation(location);
  double taxAmount= productPrice*taxRate;

  double shippingCost=getShippingCost(location);
   double totalPrice=productPrice+taxAmount+shippingCost;

   return totalPrice;
}

// calculate shipping cost
static String calculateShippingCost(double productPrice,String location){
  double shippingCost=getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
}
// calculate tax

static String calculateTax(double productPrice, String location){
  double taxRate=getTaxRateForLocation(location);
  double taxAmount=productPrice*taxRate;
  return taxAmount.toStringAsFixed(2);
}

static double getTaxRateForLocation(String location){
  // lookup the tax rate  for given  location   from a tax rate database or API.
  return 0.10; //Example tax rate of 10%
}

static double getShippingCost(String location){
//   lookup the shipping cost for given location using a shipping rate API.
// Calculate the shipping cost based  on various factor like distance , weight etc.
return 5.00;//Example shipping cost $5
}

//  sum all  cart values and return total amount

// static double calculateCartTotal(CartModel cart){
//   return cart.items.map((e)=>e.price).fold(0,(previousPrice,currentPrice)=>previousPrice+(currentPrice??0));
// }
}