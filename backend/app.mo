//import Debug "mo:base/Debug";
//Functions
//actor {
// public func addTwoNumbers(num1 :Nat, num2 : Nat): async Nat{
 // var num1 : Nat =4
  //var num2 : Nat = 6;
  //var total : Nat = num1 + num2;
 // return total;
//};
//addTwoNumbers();
//}
import Debug "mo:base/Debug";

actor {
  // Add two numbers
  public func add(num1: Nat, num2: Nat): async Nat {
    return num1 + num2;
  };

  // Subtract two numbers (return 0 if num2 > num1 to keep it safe for Nat)
  public func subtract(num1: Nat, num2: Nat): async Nat {
    if (num1 > num2) {
      return num1 - num2;
    } else {
      return 0;
    };
  };

  // Multiply two numbers
  public func multiply(num1: Nat, num2: Nat): async Nat {
    return num1 * num2;
  };

  // Divide two numbers (avoid division by zero)
  public func divide(num1: Nat, num2: Nat): async ?Nat {
    if (num2 == 0) {
      return null; // optional type means "no value" in case of divide by zero
    } else {
      return ?(num1 / num2); // wrapped in ? to indicate success
    };
  };
};
