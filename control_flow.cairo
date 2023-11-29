use debug::PrintTrait;

fn main() {
    let number = 3;

    if number == 5 {
        'condition was true'.print();
    } else {
        'condition was false'.print();
    }
    if number == 12 {
        'number is 12'.print();
    } else if number == 3 {
        'number is 3'.print();
    } else if number - 2 == 1 {
        'number minus 2 is 1'.print();
    } else {
        'number not found'.print();
    }
// using if in a let statement

    let condition = true;
    let number = if condition {
    5}
    else {
    6};
}

// The loop keyword tells Cairo to execute a block of code 
// over and over again forever or until you explicitly tell it to stop.

fn looper(){
    ley mut i : usize = 0;
    loop {
        if i> 10 {
        break;
        }
    'again'.print();
    i += 1;
    }
}

// Note: Cairo prevents us from running program with infinite loops by including a gas meter. The gas meter is a mechanism that limits the amount of computation that can be done in a program. By setting a value to the --available-gas flag, we can set the maximum amount of gas available to the program. Gas is a unit of measurement that expresses the computation cost of an instruction. When the gas meter runs out, the program will stop. In this case, the program panicked because it ran out of gas, as the stop condition was never reached. It is particularly important in the context of smart contracts deployed on Starknet, as it prevents from running infinite loops on the network. If you're writing a program that needs to run a loop, you will need to execute it with the --available-gas flag set to a value that is large enough to run the program.

