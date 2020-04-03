//
//  ViewControllerB.swift
//  PassingDataWithClosure
//
//  Created by apple on 04/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {
    
    var completionHandler: ((String) -> Int)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToBackAction(_ sender: UIButton) {
        let result = completionHandler?("Hi, Closure called")
        print("Completion handler return : \(result ?? 0)")
        dismiss(animated: true, completion: nil)
    }
    
}
