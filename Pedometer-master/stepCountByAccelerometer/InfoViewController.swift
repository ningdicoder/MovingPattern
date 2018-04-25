//
//  File.swift
//  MovingPattern
//
//  Created by nd282 on 4/21/18.
//  Copyright © 2018 nd282. All rights reserved.
//

import UIKit
class InfoViewController:UIViewController{
    @IBAction func toMain(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBAction func toSug(_ sender: UIButton) {
        if (H.text != ""){
            
            h = H.text!
        }else{
            h = "170"
        }
        if (W.text != ""){
            w = W.text!
        }else{
            w = "68"
        }
        weight = Double(w)!
        height = Double(h)!
        self.performSegue(withIdentifier: "toSug", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSug"{
            let CV = segue.destination as! SuggController
            CV.weight = Double(weight)
            CV.height = Double(height)
            CV.runSteps = runSteps
            CV.walkSteps = walkSteps
        }
    }
    @IBOutlet weak var H: UITextField!
    @IBOutlet weak var W: UITextField!
    var h = ""
    var w = ""
    var runSteps = 0
    var walkSteps = 0
    var weight = 0.0
    var height = 0.0
    override func viewDidLoad() {
        H.placeholder = "cm"
        W.placeholder = "Kg"
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        H.endEditing(true)
        W.endEditing(true)
    }
}
