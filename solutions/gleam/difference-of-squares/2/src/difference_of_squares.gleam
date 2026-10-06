// Didn't occur to me to think that there were already formulas for these!

pub fn square_of_sum(n: Int) -> Int {
  let sum: Int = n * { 1 + n } / 2
  sum * sum
}

pub fn sum_of_squares(n: Int) -> Int {
  n * { n + 1 } * { n + n + 1 } / 6
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
