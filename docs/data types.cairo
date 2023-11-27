// Keep in mind that Cairo is a statically typed language, 
// which means that it must know the types of all variables at compile time. 
//  The compiler can usually infer the desired type based on 
//  the value and its usage. In cases when many types are possible, 
//  we can use a cast method where we specify the desired output type.

fn main() {
    let x: felt252 = 3;
    let y: u32 = x.try_into().unwrap();
}
// A scalar type represents a single value. 
// Cairo has three primary scalar types: 
// felts, integers, and booleans.
//  You may recognize these from other programming languages. 

// n Cairo, if you don't specify the type of a variable or argument,
//  its type defaults to a field element, 
//  represented by the keyword felt252. 
//  In the context of Cairo, when we say “a field element” 
// we mean an integer in the range 0 <= x < P

// it is highly recommended for programmers to use the integer types instead of the felt252 type whenever possible, as the integer types come with added security features that provide extra protection against potential vulnerabilities in the code, such as overflow checks. By using these integer types, programmers can ensure that their programs are more secure and less susceptible to attacks or other security threats.
//  An integer is a number without a fractional component.

fn main() {
    let t = true;

    let f: bool = false; // with explicit type annotation
}

// type casting
// In Cairo, you can convert types scalar types
//  from one type to another by using the 
//  try_into and into methods provided by the TryInto and Into traits, respectively.


To perform the conversion, 
call var.into() or var.try_into() 
on the source value to cast it to another type. 
The new variable's type must be explicitly defined, 
as demonstrated in the example below.

fn main() {
    let my_felt252 = 10;
    // Since a felt252 might not fit in a u8, we need to unwrap the Option<T> type
    let my_u8: u8 = my_felt252.try_into().unwrap();
    let my_u16: u16 = my_u8.into();
    let my_u32: u32 = my_u16.into();
    let my_u64: u64 = my_u32.into();
    let my_u128: u128 = my_u64.into();
    // As a felt252 is smaller than a u256, we can use the into() method
    let my_u256: u256 = my_felt252.into();
    let my_usize: usize = my_felt252.try_into().unwrap();
    let my_other_felt252: felt252 = my_u8.into();
    let my_third_felt252: felt252 = my_u16.into();
}

tuple
A tuple is a general way of grouping together a number of values 
with a variety of types into one compound type.
Tuples have a fixed length: once declared, 
they cannot grow or shrink in size.


We create a tuple by writing a 
comma-separated list of values inside parentheses.
 Each position in the tuple has a type,
  and the types of the different values in the tuple 
  don’t have to be the same. 
  We’ve added optional type annotations in this example:

fn main() {
    let tup: (u32, u64, bool) = (10, 20, true);
}

The variable tup binds to the entire tuple because a tuple is considered a single compound element. To get the individual values out of a tuple, we can use pattern matching to destructure a tuple value, like this:



use debug::PrintTrait;
fn main() {
    let tup = (500, 6, true);

    let (x, y, z) = tup;

    if y == 6 {
        'y is six!'.print();
    }
}
This program first creates a tuple and binds it to the variable tup. It then uses a pattern with let to take tup and turn it into three separate variables, x, y, and z. This is called destructuring because it breaks the single tuple into three parts. Finally, the program prints y is six as the value of y is 6.

We can also declare the tuple with value and types at the same time. For example:
fn main() {
    let (x, y): (felt252, felt252) = (2, 3);
}