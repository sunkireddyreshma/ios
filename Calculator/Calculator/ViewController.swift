//
//  ViewController.swift
//  Calculator
//
//  Created by Sunkireddy,Reshma Reddy on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var resultLBL: UILabel!
    
    var operandOne=0.0
    var operandTwo=0.0
    var operation=""

    @IBAction func Three(_ sender: UIButton) {
        if let titleVal = sender.titleLabel?.text{
            self.resultLBL.text=titleVal
            if self.operandOne == 0.0{
                if let value = Double(titleVal){
                    self.operandOne = value
                }
            }else{
                if let value = Double(titleVal){
                    
                    self.operandTwo = value
                }
                }
            }
    }
            
    
    @IBAction func Operation(_ sender: UIButton) {
            if let titleVal = sender.titleLabel?.text{
                self.resultLBL.text=titleVal
                self.operation = titleVal
            }
    }
        
    
    @IBAction func Four(_ sender: UIButton) {
        if let titleVal = sender.titleLabel?.text{
            self.resultLBL.text=titleVal
            if self.operandTwo == 0.0{
                if let value = Double(titleVal){
                    self.operandTwo = value
                }
            }else{
                if let value = Double(titleVal){
                    
                    self.operandOne = value
                }
                }
            }
    }
        
    
    @IBAction func equals(_ sender: UIButton) {
        if self.operation == "+"
        {
            self.resultLBL.text = String(format: "%.1f", arguments: [self.operandOne + self.operandTwo])
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        self.operandOne = 0.0
        self.operandTwo = 0.0
        self.operation = ""
        self.resultLBL.text = ""
    }
}
        

