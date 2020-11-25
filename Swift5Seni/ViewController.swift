//
//  ViewController.swift
//  Swift5Seni
//
//  Created by 西谷恭紀 on 2020/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(count)
        
    }
    
    
    @IBAction func plus(_ sender: Any) {
        
        //数字が10になったらNextViewControllerに遷移する
        count = count + 1
        label.text = String(count)
        
        if count == 10 {
            //画面を遷移する
            //モーダルの場合
            //  performSegue(withIdentifier: "next", sender: nil)
            
            //Showの場合
            let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
            nextVC.count2 = count
            navigationController?.pushViewController(nextVC, animated: true)
            count = 0
            
        }
    }
    
    //モーダルの場合
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.count2 = count
    }
    
    
}

