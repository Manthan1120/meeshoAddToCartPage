//
//  segment_0.swift
//  meeshoAddToCartPage
//
//  Created by R86 on 27/01/23.
//

import UIKit

class segment_0: UIViewController {

    @IBOutlet weak var buyNowLable: UIButton!
    
    @IBOutlet weak var priseLable: UILabel!
    @IBOutlet weak var lablrForStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var greyLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
       override func viewDidLoad() {
        super.viewDidLoad()
           buyNowLable.layer.cornerRadius = 5
           buyNowLable.layer.masksToBounds = true
           stepper.value = 1
           stepper.minimumValue = 1
           stepper.maximumValue = 10
           lablrForStepper.text = Int(stepper.value).description
           greenLable.layer.cornerRadius = 18
           greenLable.layer.masksToBounds = true
           greyLable.layer.cornerRadius = 16
           greyLable.layer.masksToBounds = true
           addToCartButton.layer.borderWidth = 1.5
           addToCartButton.layer.cornerRadius = 5
           addToCartButton.layer.masksToBounds = true
       }
    @IBAction func stepperButtonAction(_ sender: UIStepper) {
        lablrForStepper.text = Int(stepper.value).description
        if lablrForStepper.text == "1" {
            priseLable.text = "$120"
        }
        else if lablrForStepper.text == "2" {
            priseLable.text = "$240"
        }
        else if lablrForStepper.text == "3" {
            priseLable.text = "$360"
        }
        else if lablrForStepper.text == "4" {
            priseLable.text = "$480"
        }
        else if lablrForStepper.text == "5" {
            priseLable.text = "$600"
        }
        else if lablrForStepper.text == "6" {
            priseLable.text = "$720"
        }
        else if lablrForStepper.text == "7" {
            priseLable.text = "$840"
        }
        else if lablrForStepper.text == "8" {
            priseLable.text = "$960"
        }
        else if lablrForStepper.text == "9" {
            priseLable.text = "$1080"
        }
        else if lablrForStepper.text == "10" {
            priseLable.text = "$1200"
        }
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 1 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "segment_1") as! segment_1
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment.selectedSegmentIndex == 2 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "segment_2") as! segment_2
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment.selectedSegmentIndex == 3 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "segment_3") as! segment_3
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment.selectedSegmentIndex == 4 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "segment_4") as! segment_4
            navigationController?.pushViewController(navigation, animated: true)
        }
    }
    
    
    @IBAction func buyButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "buyNowPage") as! buyNowPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func addToCartButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "addToCartPage") as! addToCartPage
        navigationController?.pushViewController(navigation, animated: true)
    }
}
