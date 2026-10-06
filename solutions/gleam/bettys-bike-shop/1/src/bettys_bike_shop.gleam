// import the `gleam/int` module
import gleam/int as i
// import the `gleam/float` module
import gleam/float as fl
// import the `gleam/string` module
import gleam/string as str

pub fn pence_to_pounds(pence: Int) -> Float {
  i.to_float(pence) /. 100.0
}

pub fn pounds_to_string(pounds: Float) -> String {
  str.append("£", fl.to_string(fl.to_precision(pounds, 2)))
}
