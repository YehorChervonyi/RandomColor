//
//  ColorsDetailsVCViewController.swift
//  RandomColors
//
//  Created by ferret on 21.04.2024.
//

import UIKit

class ColorsDetailsVC: UIViewController {
    
    var color:UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .none
    }
}
