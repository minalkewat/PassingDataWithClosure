//
//  ViewControllerA.swift
//  PassingDataWithClosure
//
//  Created by apple on 04/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToNextAction(_ sender: UIButton) {
        let stroryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = stroryboard.instantiateViewController(identifier: "vcB") as? ViewControllerB
        vc?.completionHandler = {  text in
            print("text restuned from VC b is  : \(text)")
            return text.count
        }
        present(vc!, animated: true, completion: nil)
    }
    

}
