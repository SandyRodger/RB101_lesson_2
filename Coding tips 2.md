<u>Coding tips 2</u>

1. Using new lines to organise code: They may seem nit-picky, but new lines are actually important visual cues in your code. Formatting is as important in coding as it is in literature. It's for other coders, but more for your future self. Over time you'll get a fel for it, so work on having good habits now.
2. Should a method return or display ? You must understand if a method returns a value, has an array, or both. In general, if a method has both side effects and a meaningful return value, it's a red flag. Try to avoid writing methods that do this, as it will be very difficult to use these methods in the future.
3. Name methods appropriately: If you have some methods that output values, then preface those methods with `display_` or `print_`. For example, if you see a method named `print_total`, you can be certain it will output a total and not return anything. Following this convention will save you from constantly looking at the implementation to recall how to use a method. All this goes back to one bit of advice: a method should do one thing, and be named appropriately. If you can treat a method as a "black box", then it's a well designed method. 

You should be able to use a method called `total` and understand that it returns a value, and a method called `print_total` returns nil, without looking at the implementation of either. On the other hand, if there's a method called `total!`, then it's a sign that there is some side effect somewhere.



You can, however, mutate the individual elements within that collection, just not the collection itself. Otherwise, you'll get unexpected behavior.



#### Don't use assignment in a conditional

We recommend that you never use assignment in a conditional. It's not clear whether you meant to use `==` or if you indeed meant to do assignment.



#### Use underscore for unused parameters

#### Gain experience through struggling