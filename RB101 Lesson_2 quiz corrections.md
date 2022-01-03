6. I'm sure this was mis-entered, because I remember knowing that all four answers were viable.

   12. Select all of the statements which are true regarding local variable scope in Ruby:

       'Any code delimited by either curly braces `{}` or `do/end` defines a new scope.', was ticked, but is not correct because:

        Blocks are delimited by either curly braces `{}` or `do/end`; however, code enclosed in this way does not **always** constitute a block. It is considered a block (and thereby creates a new scope for variables) if the `{}` or `do/end` immediately follows a method invocation. For example, following the `while` keyword with `do/end` does not constitute a block:

       `while true do`
         `a = 5`
         `break`
       `end`

       > `a # => 5`

       Along with that, writing `do` is optional for keywords such as `for`, `while`, and `until`:

13. Which statement most accurately describes why the last line of the code below outputs `"hi"`?

    `def extend_greeting(greeting)`
      `greeting + " there"`
    `end`

    `greeting = "hi"`
    `extend_greeting(greeting)`

    puts greeting

14. Because the `String#+` method does not mutate the caller.

16. What do we mean when we talk about *variables as pointers* in Ruby? Select all answers that apply.

I selected: **A**

You can't have more than one variable pointing to the same memory address at the same time.

which is not true

17. Why is the `name` method invoked instead of the local variable `name` on line 8 in the following example?

`def name`
  `"George"`
`end`

`name = "Lisa"`

`def display_name`
  `puts name`
`end`

`display_name`

Answer: Local variables that are initialized outside of a method can't be accessed from within the method definition.



Obviously (now) - hence parameters.



19. In the following example, why does Ruby reference the local variable `name` on line 8 instead of invoking the `name` method?

    `name = "Lisa"`

    `def name`
      `"George"`
    `end`

    `loop do`
      `puts name`
      `break`
    `end`

My answer: The local variable `name` is initialized before the `name` method is defined, so the local variable takes precedence. -  incorrect

The correct answer: Local variables initialized outside of a block (in the outer scope) can be accessed from within the block's inner scope. Inside the block, both the local variable and the method are in scope, but by default Ruby first references the local variable.

When a local variable is initialized in the outer scope, it can be referenced from within the block's inner scope, but not vice versa. Even though the local variable and the method have the same name, Ruby gives precedence to the local variable.