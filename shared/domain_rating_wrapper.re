type t =
  | Poor(int)
  | Average(int)
  | Good(int);

let unwrap =
  fun
  | Poor(x)
  | Average(x)
  | Good(x) => x;

let wrap =
  fun
  | x when x < 33 => Poor(x)
  | x when x < 66 => Average(x)
  | x => Good(x);