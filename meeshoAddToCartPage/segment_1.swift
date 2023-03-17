//
//  segment_1.swift
//  meeshoAddToCartPage
//
//  Created by R86 on 25/01/23.
//

import UIKit

class segment_1: UIViewController {
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
            priseLable.text = "$350"
        }
        else if lablrForStepper.text == "2" {
            priseLable.text = "$700"
        }
        else if lablrForStepper.text == "3" {
            priseLable.text = "$1050"
        }
        else if lablrForStepper.text == "4" {
            priseLable.text = "$1400"
        }
        else if lablrForStepper.text == "5" {
            priseLable.text = "$1750"
        }
        else if lablrForStepper.text == "6" {
            priseLable.text = "$2100"
        }
        else if lablrForStepper.text == "7" {
            priseLable.text = "$2450"
        }
        else if lablrForStepper.text == "8" {
            priseLable.text = "$2800"
        }
        else if lablrForStepper.text == "9" {
            priseLable.text = "$3150"
        }
        else if lablrForStepper.text == "10" {
            priseLable.text = "$3500"
        }
        
        
        
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
    
        if segment.selectedSegmentIndex == 0 {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "segment_0") as! segment_0
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

