func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func unprotectSecret(decodingPassword: String) -> String {
    if decodingPassword == password {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }

  return unprotectSecret
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstNumber = f(room)
  let secondNumber = f(firstNumber)
  let thirdNumber = f(secondNumber)

  return (firstNumber, secondNumber, thirdNumber)
}
