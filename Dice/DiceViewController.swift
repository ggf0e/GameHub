    //
    //  ViewController.swift
    //  Dicee-iOS13
    //
    //  Created by Angela Yu on 11/06/2019.
    //  Copyright © 2019 London App Brewery. All rights reserved.
    //

import UIKit

final class DiceViewController: UIViewController {

        //MARK: IB Outlets
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!

        //MARK: Action
    @IBAction func rollButton(_ sender: UIButton) {
        animate()
    }

    private func animate() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 0.7) { [weak self] in
            guard let self else { return }

            self.diceImageViewOne.transform = CGAffineTransform(translationX: 0, y: -50)
                .rotated(by: .pi / 4 )

            self.diceImageViewTwo.transform = CGAffineTransform(translationX: 0, y: -50)
                .rotated(by: .pi / 4 )

        } completion: { _ in
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5) { [weak self] in
                guard let self else { return }

                self.diceImageViewOne.transform = .identity
                self.diceImageViewTwo.transform = .identity

                let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]

                diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
                diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
            }

        }
    }

}

