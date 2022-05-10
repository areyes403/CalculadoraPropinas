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
