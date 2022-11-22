//
//  ViewController.swift
//  Challenge 2
//
//  Created by Miguel Urrea on 21/11/22.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var diceImage: UIImageView!
  @IBOutlet weak var rollButtonOutlet: UIButton!
  @IBOutlet weak var sizeDiceImageConstraint: NSLayoutConstraint!
  var diceFaceImageName = UIImage(named: "dice6")
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  //MARK: Functions
  func diceAnimation(){
    UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 2, options: .autoreverse) {
      self.sizeDiceImageConstraint?.constant = 280
      self.view.layoutIfNeeded()
    }
    completion: { _ in
      self.sizeDiceImageConstraint?.constant = 250
      self.diceImage.image = self.diceFaceImageName
    }
  }
  
  func randomDice(){
    let randomNumber = Int.random(in: 1...6)
    switch randomNumber {
    case 1:
      self.diceFaceImageName = UIImage(named: "dice1")
    case 2:
      self.diceFaceImageName = UIImage(named: "dice2")
    case 3:
      self.diceFaceImageName = UIImage(named: "dice3")
    case 4:
      self.diceFaceImageName = UIImage(named: "dice4")
    case 5:
      self.diceFaceImageName = UIImage(named: "dice5")
    case 6:
      self.diceFaceImageName = UIImage(named: "dice6")
    default:
      self.diceFaceImageName = UIImage(named: "dice1")
    }
  }
  
  //MARK: Actions
  @IBAction func rollButtonAction(_ sender: Any) {
    randomDice()
    diceAnimation()
  }
}

