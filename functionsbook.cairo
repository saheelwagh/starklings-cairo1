// defined in snake case
use debug::PrintTrait;
fn another_function(x: felt252) {
    x.print();
}
fn foo(x:u6, y:u8){}

fn main() {
    'Hello, world!'.print();
    another_function(5);
    let first_arg = 1'
    let second_arg = 2;
    foo(x=first_arg, y=second_arg);
    let x = 1;
    let mut y = 3;
    foo(:x, :y);
    let y = {
        let x = 3;
        x + 1
    };
    let fifer = five();
    fifer.print();
}


// Note that we defined another_function before the main function in
//  the source code; we could have defined it after as well. 
//  Cairo doesn’t care where you define your functions, only that 
//  they’re 
// defined somewhere in a scope that can be seen by the caller.

// In function signatures, you must declare the type of each parameter.
//  This is a deliberate decision in Cairo’s design: 
//  requiring type annotations in function definitions
//   means the compiler almost never needs you to use them 
//   elsewhere in the code to figure out what type you mean.
//    The compiler is also able to give more helpful error messages  
//    if it knows what types the function expects.


// In Cairo, named parameters 
// allow you to specify the names of arguments 
// when you call a function. 
// \This makes the function calls more readable
//  and self-descriptive. If you want to use named parameters,
//   you need to specify the name of the parameter
//    and the value you want to pass to it. 
//    The syntax is parameter_name: value. 
//    If you pass a variable that has the same name as the parameter,
//     you can simply write :parameter_name 
// instead of parameter_name: variable_name.

// Statements are instructions that perform some action and do not return a value.
// Expressions evaluate to a resultant value. Let’s look at some examples.

//fns with return
// We don’t name return values,
//  but we must declare their type after an arrow (->). I
//  In Cairo, the return value of the function is synonymous with 
//  the value of the final expression in the block of 
//  the body of a function. You can return early from a function by 
//  using the return keyword and specifying a value, 
// but most functions return the last expression implicitly

fn five() -> u32 {
    5
    //refer call in main
}
fn plus_one(x:u32) -> u32 {
    x+1
}

