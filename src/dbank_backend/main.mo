import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor Dbank {
  var currentValue = 300;
  currentValue := 100;

 // Debug.print("Hello");
 //Debug.print(debug_show(currentValue));
  let id = 24894305897654;

 //Debug.print(debug_show(id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  // Allow users to withdrawl an amount from the current value
  // Decrease the current value by the amount

  public func withdrawl(amount : Nat) {
    let tempValue: Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large currentValue less than zero")
    }
  }
}
