pub fn reply(guess: Int) -> String {
  let number: Int = 42

  case guess {
    i if i == number -> "Correct"
    i if i == number + 1 || i == number - 1 -> "So close"
    i if i < 41 -> "Too low"
    _ -> "Too high"
  }
}
