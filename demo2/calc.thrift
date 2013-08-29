 enum BinaryOperation {
  ADDITION = 1,
  SUBTRACTION = 2,
  MULTIPLICATION = 3,
  DIVISION = 4,
  MODULUS = 5
 }
 struct ArithmeticOperation {
  1:BinaryOperation op,
  2:double lh_term,
  3:double rh_term,
 }

 exception ArithmeticException {
  1:string msg,
  2:optional double x,
 }

 service Calculator {
  double calc(1:ArithmeticOperation op) throws (1:ArithmeticException ae),
   oneway void run_task()
 }

