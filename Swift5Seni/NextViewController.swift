//
//  NextViewController.swift
//  Swift5Seni
//
//  Created by 西谷恭紀 on 2020/11/25.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var label2: UILabel!
    
    var count2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(count2)
        label2.text = String(count2)

    }
    
  
    
   

}
