//
//  VistaPrincipal.swift
//  Proyecto tabbar
//
//  Created by SamsungBoot on 29/04/24.
//

import UIKit

class VistaPrincipal: UIViewController {

    
    @IBOutlet weak var txtNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Validar antes de pasar a otra vista
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var realizarSegue = false
        
        if identifier == "Inicio" {
            if let nombre = txtNombre.text, nombre.count >= 3 {
                realizarSegue = true
            }else{
                let alerta = UIAlertController(title: "Advertencia", message: "El nombre no puede estar vacio o menor a tres caracteres", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "Ok", style: .default))
                present(alerta, animated:true)
                realizarSegue = false
            }
        }else {
            realizarSegue = true
        }
        
        return realizarSegue
    }
    
    //Pasar valores entre vistas
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Inicio" {
            let vistaDestino = segue.destination as! VistaInicial
            vistaDestino.nombre  = txtNombre.text!
            txtNombre.text = ""
        } else if segue.identifier == "Info"{
            let vistaInfo = segue.destination as! VistaInfo
        }
    }
}
