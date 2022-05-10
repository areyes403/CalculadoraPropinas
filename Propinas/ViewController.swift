//
//  ViewController.swift
//  Propinas
//
//  Created by mac17 on 09/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    var calculador=Cerebrocalculadora()
    
    @IBOutlet weak var tfTotal: UITextField!
    @IBOutlet weak var tfNumPersonas: UITextField!
    @IBOutlet weak var slPropina: UISlider!
    @IBOutlet weak var lblSlider: UILabel!
    
    var total:Float = 0.0
    var propina:Float = 0.0
    var personas:Int=0
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func slider(_ sender: UISlider) {
        lblSlider.text="\(String(format: "%.2f", sender.value)) %"
        propina = sender.value
    }
    
    
    @IBAction func btnSend(_ sender: UIButton) {
        let sTotal =  tfTotal.text!
        let sPersonas = tfNumPersonas.text!
        
        if let t = Float(sTotal){
            if let p = Float(sPersonas){
                calculador.calcularPropina(total: t, personas: Int(p), prop: propina)
            }
        }
        
    

        performSegue(withIdentifier: "sendData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendData"{
            let objDestino = segue.destination as! SecondScreenViewController
            objDestino.total = calculador.retornarTotal()
            objDestino
                .montoCU = calculador.retornarMonto()
        }
    }
    
}

struct Propina{
    let total: Float
    let porcentaje:Float
    let monto:Float
}

struct Cerebrocalculadora {
    var propina: Propina?
    
    mutating func calcularPropina(total:Float,personas:Int,prop: Float){
        let valor = total/Float(personas)
        let tot=total
        let p=prop
        propina = Propina(total: tot, porcentaje: p,monto: valor)
        
    }
    func retornarMonto() -> String{
        return "Monto: "+String(format: "%.2f", propina?.monto ?? 0.0 )
    }
    
    func retornarTotal() -> String{
        return "Total: "+String(format: "%.2f", propina?.total ?? 0.0 )
    }
    
    func retornarPorc() -> String{
        return "Porcentaje: "+String(format: "%.2f", propina?.porcentaje ?? 0.0 )
    }

}

