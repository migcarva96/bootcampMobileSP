import UIKit

// MARK: EXERCISE 2.a
func randomStringNumber(type: String) -> String {
  var stringNumber: String
  switch type {
  case "TipoA":
    stringNumber = "54"
  case "TipoB":
    stringNumber = "08"
  default:
    return "El tipo de dato ingresado es incorrecto"
  }
  for _ in 1...8{
    var randomInt = Int.random(in: 0..<10)
    stringNumber = stringNumber + String(randomInt)
  }
  return stringNumber
}

print(randomStringNumber(type: "TipoA"))


// MARK: EXERCISE 2.b
func orderNumber(numbersArray: Array<Int>, order: String) -> Array<Int> {
  var numbers = numbersArray
  if order != "Asc", order != "Desc"{
    print("El tipo de orden ingresado es incorrecto")
  }
  for i in 0..<numbers.count {
        var number = numbers[i]
        for j in i..<numbers.count{
          if order == "Asc"{
            if numbers[j] <= number {
              number = numbers[j]
              let element = numbers.remove(at: j)
              numbers.insert(element, at: i)
            }
          } else if order == "Desc" {
            if numbers[j] > number {
              number = numbers[j]
              let element = numbers.remove(at: j)
              numbers.insert(element, at: i)
            }
          }
        }
      }
  return numbers
}

let exampleArray = [22, 4, 12, 8, 9, 2, 5]
print(orderNumber(numbersArray: exampleArray, order: "Asc"))
