//
//  ViewController.swift
//  SeSACWeek2
//
//  Created by 강민혜 on 7/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var originalView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        originalView.layer.cornerRadius = 20
        originalView.clipsToBounds = true

    }

    

}

