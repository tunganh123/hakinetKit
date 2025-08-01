//
//  ErrorTimeViewController.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import UIKit

class ErrorTimeViewController: UIViewController {

    @IBOutlet weak var doneButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI(){
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = UIColor(hex: "CBD5E1").cgColor
    }
}
