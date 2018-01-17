//
//  ViewController.swift
//  PopOverExample
//
//  Created by marlon mauro arteaga morales on 16/01/18.
//  Copyright © 2018 marlon mauro arteaga morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func click(_ sender: Any) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "idPopOverViewController") as! PopOverViewController
        vc.delegate = self
        self.addChildViewController(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
}

extension ViewController: PopOverDelegate {
    
    func close() {
        print("dismiss")
        self.dismiss(animated: true)
        //self.view.removeFromSuperview()
    }
}
