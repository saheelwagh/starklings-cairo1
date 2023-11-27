use debug::PrintTrait;
fn main(){
    'Hello Wolrd!'.print();
    let x = 5;
    x.print();
//runs first
//TODO set up async work chat for koolwebs
Second, the print() function called is a method from the trait PrintTrait.
 This trait is imported from the Cairo core library, and it defines how to print values to the screen for different data types. In our case, our text is defined as a "short string", which is an ASCII string that can fit in Cairo's basic data type, which is the felt252 type. By calling Hello, world!'.print(), 
we're calling the print() method of the felt252 implementation of the PrintTrait trait.
}

mod hello_world // add this line in lib.cario


// immutable vars by default
But mutability can be very useful, and can make code more convenient to write. Although variables are immutable by default, you can make them mutable by adding mut in front of the variable name. Adding mut also conveys intent to future readers of the code by indicating that other parts of the code will be changing this variable’s value.

let mut y  = 5
y =6;

Like immutable variables, constants are values 
that are bound to a name and are not allowed to change, 
but there are a few differences between constants and variables.


Constants can only be declared in the global scope, which makes them useful for values that many parts of code need to know about.


The last difference is that constants may be set only to a constant expression, not the result of a value that could only be computed at runtime. Only literal constants are currently supported.


const ONE_HOUR_IN_SECONDS: u32 = 3600;

Cairo's naming convention for constants is to use all uppercase with underscores between words.


shadowing
Variable shadowing refers to the declaration of a new variable 
with the same name as a previous variable. 
Caironautes say that the first variable is shadowed by the second, 
which means that the second variable is what the compiler will see
 when you use the name of the variable.
 In effect, the second variable overshadows the first, 
 taking any uses of the variable name to itself until 
 either it itself is shadowed or the scope ends.
  We can shadow a variable by using the same variable’s name 
  and repeating the use of the let keyword as follows:


use debug::PrintTrait;
fn main() {
    let x = 5;
    let x = x + 1;
    {
        let x = x * 2;
        'Inner scope x value is:'.print();
        x.print()
    }
    'Outer scope x value is:'.print();
    x.print();
}

fn notmain() {
    let x: u64 = 2;
    x.print();
    let x: felt252 = x.into(); // converts x to a felt, type annotation is required.
    x.print()
}

