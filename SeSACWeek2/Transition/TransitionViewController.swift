//
//  TransitionViewController.swift
//  SeSACWeek2
//
//  Created by 강민혜 on 7/15/22.
//

import UIKit

class TransitionViewController: UIViewController {

    
    @IBOutlet weak var randomNUmberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        randomNUmberLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }

    @IBAction func unwindTransition(jackSegue: UIStoryboardSegue) {
        
        
    }
    

}
