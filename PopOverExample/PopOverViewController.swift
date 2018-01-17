//
//  PopOverViewController.swift
//  PopOverExample
//
//  Created by marlon mauro arteaga morales on 16/01/18.
//  Copyright © 2018 marlon mauro arteaga morales. All rights reserved.
//

import UIKit

protocol PopOverDelegate {
    
    func close()
}

class PopOverViewController: UIViewController {
    var delegate: PopOverDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(close))
        self.view.addGestureRecognizer(tap)
    }
    
    @IBAction func actionClose(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    @objc func close() {
        self.view.removeFromSuperview()
    }
}
