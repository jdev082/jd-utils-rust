use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let num1 = &args[1];
    let oper = &args[2];
    let num2 = &args[3];
    if oper == '+' {
        let val = num1 + num2;
        println!("Result: {}")
    }
    println!("Result: {}", val);
}
