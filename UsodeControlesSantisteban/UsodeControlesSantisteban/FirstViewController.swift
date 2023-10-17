//
//  FirstViewController.swift
//  UsodeControlesSantisteban
//
//  Created by Alumno on 13/10/23.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var txtRpta: UITextField!
    
    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    var nro1:Double = 0
    var nro2:Double = 0
    var rpta:Double = 0
    
    //funcion de limpieza
    func Limpiar() {
        self.txtNumero1.text = "0"
        self.txtNumero2.text = "0"
        self.txtRpta.text = "0"
    }
    
    //funcion de alerta
    func mostrarAlerta(titulo: String, mensaje: String) {
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        let limpiar = UIAlertAction(title: "Limpiar", style: .default, handler: {(action) in
                self.Limpiar()
            })
            
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler:{(action) in
                
            })
            alerta.addAction(limpiar)
            alerta.addAction(cancelar)
            present(alerta,animated: true, completion: nil)
            }
    
    //funcion de ocultar teclado
    @objc func ocultarTeclado(){
        view.endEditing(true)
    }
    
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 + nro2
            print(rpta)
                txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
        
    }
    
    
    @IBAction func btnRestar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 - nro2
            print(rpta)
                txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    
    @IBAction func btnDividir(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 / nro2
            print(rpta)
                txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 * nro2
            print(rpta)
                txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func btnLimpiar(_ sender: Any) {
        Limpiar()
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
