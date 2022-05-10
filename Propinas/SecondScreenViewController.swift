//
//  SecondScreenViewController.swift
//  Propinas
//
//  Created by mac17 on 09/05/22.
//

import UIKit

class SecondScreenViewController: UIViewController {

    
    @IBOutlet weak var lblMontoCU: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    var total: String?
    var montoCU:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblTotal.text = total ?? "No hay"
        lblMontoCU.text=montoCU ?? "no hay"
    }
    

    

}
