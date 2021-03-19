//
//  Cramer2x2ViewController.swift
//  linearSystemSolver
//
//  Created by Alessio Garzia Marotta Brusco on 02/03/2021.
//

import UIKit

class Cramer2x2ViewController: UIViewController {
    
    var yes = Int()
    
    
    @IBOutlet var x1: UITextField!
    @IBOutlet var y1: UITextField!
    @IBOutlet var n1: UITextField!
    @IBOutlet var x2: UITextField!
    @IBOutlet var y2: UITextField!
    @IBOutlet var n2: UITextField!
    @IBOutlet var outPutLabel: UILabel!
    @IBOutlet var solveButton: UIButton!
    
    

    
    var cramer2x2System = System2x2(method: .cramer, x1: Double(), x2: Double(), y1: Double(), y2: Double(), n1: Double(), n2: Double())
    
    @IBAction func x1(_ sender: Any) {
        if Double(x1.text!) != nil{
       cramer2x2System.x1 = Double(x1.text!)!
            yes += 1
        outPutLabel.text = String(yes)
        } else{
            outPutLabel.text = "Error: Cannot insert non numerical values"
        }
    }
    
    
    @IBAction func y1(_ sender: Any) {
        if Double(y1.text!) != nil{
           cramer2x2System.y1 = Double(y1.text!)!
            yes += 1
            outPutLabel.text = String(yes)
            } else{
                outPutLabel.text = "Error: Cannot insert non numerical values"
            }
    }
    
    @IBAction func n1(_ sender: Any) {
        if Double(n1.text!) != nil{
       cramer2x2System.n1 = Double(n1.text!)!
            yes += 1
        outPutLabel.text = String(yes)
        } else{
            outPutLabel.text = "Error: Cannot insert non numerical values"
        }
    }
    
    @IBAction func x2(_ sender: Any) {
        if Double(x2.text!) != nil{
       cramer2x2System.x2 = Double(x2.text!)!
            yes += 1
        outPutLabel.text = String(yes)
        } else{
            outPutLabel.text = "Error: Cannot insert non numerical values"
        }
    }
    
    @IBAction func y2(_ sender: Any) {
        if Double(y2.text!) != nil{
       cramer2x2System.y2 = Double(y2.text!)!
            yes += 1
        outPutLabel.text = String(yes)
        } else{
            outPutLabel.text = "Error: Cannot insert non numerical values"
        }
    }
    
    @IBAction func n2(_ sender: Any) {
        if Double(n2.text!) != nil{
       cramer2x2System.n2 = Double(n2.text!)!
            yes += 1
        outPutLabel.text = String(yes)
        } else{
            outPutLabel.text = "Error: Cannot insert non numerical values"
        }
    }
    
    
    @IBAction func solveButton(_ sender: Any) {
        print(yes)
        if yes >= 5{
            if cramer2x2System.compatibility == .compatible {
                outPutLabel.text = "x = \(cramer2x2System.solution()[0]);\ny = \(cramer2x2System.solution()[1])"
                print(cramer2x2System.solution())
                yes = 0
            }else if cramer2x2System.compatibility == . incompatible{
                outPutLabel.text = "System not compatible"
            }else {
                outPutLabel.text = "System undefined"
            }
        }else{
            outPutLabel.text = "Error: Insert all values"
            yes = 0
        }
    }
    
    @IBAction func unwindToCramer2x2(_ sender: UIStoryboardSegue){}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
