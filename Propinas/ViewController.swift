//
//  ViewController.swift
//  Propinas
//
//  Created by mac17 on 09/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotal: UITextField!

    @IBOutlet weak var tfPropina: UITextField!
    @IBOutlet weak var tfNumPersonas: UITextField!

    var totalS :String = ""
    var propinaS:String = ""
    var t: Double = 0.0
    var p: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalS = self.tfTotal?.text ?? ""
        t = Double(totalS) ?? 0.0

        
        
    }

    @IBAction func btnSend(_ sender: UIButton) {

        performSegue(withIdentifier: "sendData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendData"{
            let objDestino = segue.destination as! SecondScreenViewController
            objDestino.total=t
            objDestino
                .montoCU = 0.0
        }
    }
    
}

