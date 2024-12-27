The solution is to add a null check before accessing `myObject.someProperty`:

```actionscript
var myObject:MyObject = someFunctionThatMightReturnNull();
if (myObject != null) {
  var value:String = myObject.someProperty;
} else {
  // Handle the case where myObject is null
  var value:String = ""; // Or some default value
  trace("myObject is null"); // Or some other error handling
}
```

This ensures that the code only attempts to access `someProperty` if `myObject` is a valid object.  The `else` block provides a mechanism to handle the null case gracefully, preventing the `NullPointerException`.