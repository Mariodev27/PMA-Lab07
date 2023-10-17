//
//  SecondViewController.swift
//  UsodeControlesSantisteban
//
//  Created by Alumno on 13/10/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var controlSegmento: UISegmentedControl!
    
    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    @IBOutlet weak var lblRespuesta: UILabel!
    
    var nro1:Double = 0
    var nro2:Double = 0
    
    //Funcion operacion
    func Operacion(n1:Double, n2:Double, op:String) -> String{
        switch op{
        case "+":
            return String(n1 + n2)
            
        default:
            return "Error"
        }
    }
    
    //funcion de ocultar teclado
    @objc func ocultarTeclado(){
        view.endEditing(true)
    }
    
    @IBAction func elegirSegmento(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
                nro1 = Double(txtNumero1.text!)!
                nro2 = Double(txtNumero2.text!)!
                let opcion = controlSegmento.selectedSegmentIndex
                var resultado = 0.0
                
                switch opcion {
                case 0:
                    resultado = nro1 + nro2
                case 1:
                    resultado = nro1 - nro2
                case 2:
                    resultado = nro1 * nro2
                case 3:
                    if nro2 != 0 {
                        resultado = nro1 / nro2
                    } else {
                        lblRespuesta.text = "Error: División por cero"
                        return
                    }
                default:
                    lblRespuesta.text = "Operación no soportada"
                    return
                }
                
                lblRespuesta.text = String(resultado)
            } else {
                lblRespuesta.text = "Error: Debe introducir solo valores numéricos"
            }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:
            #selector(ocultarTeclado))
        view.addGestureRecognizer(tap)
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
