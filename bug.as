The following ActionScript 3 code attempts to access a property of an object before checking if the object is null:

```actionscript
var myObject:MyObject = someFunctionThatMightReturnNull();
var value:String = myObject.someProperty;
```

If `someFunctionThatMightReturnNull()` returns `null`, accessing `myObject.someProperty` will throw a `NullPointerException`. This is a common error, but the subtle aspect here is that it's often missed in situations where the function *usually* returns a non-null object, leading to intermittent crashes that are difficult to debug.