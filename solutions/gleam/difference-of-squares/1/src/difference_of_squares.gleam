//import gleam/int as i
//import gleam/float as fl

pub fn square_of_sum(n: Int) -> Int {
  let sum: Int = square_of_sum_loop(n - 1, n)
  sum * sum
}

fn square_of_sum_loop(n: Int, sum: Int) {
  case n {
    0 -> sum
    _ -> square_of_sum_loop(n - 1, n + sum)
  }
}

pub fn sum_of_squares(n: Int) -> Int {
  sum_of_squares_loop(n - 1, n * n)
}

fn sum_of_squares_loop(n: Int, sum: Int) {
  case n {
    0 -> sum
    _ -> sum_of_squares_loop(n - 1, n * n + sum)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
