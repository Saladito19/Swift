//
//  ViewController.swift
//  17Abril
//
//  Created by David Castillo on 17/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func MostrarAlerta(tipoAlerta:Int,mensaje:String,titulo:String){
        let alerta:UIAlertController
        //Alerta tradicional
        if tipoAlerta == 1{
            //Crear la alerta
            alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
            //Botones
            //Estilos
            //.default --> OK
            //.cancel --> Cancelar y texto se mira en negritas
            //.destrutive --> Texto color rojo
            alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {action in print("Boton Aceptar")}))
            //Mostrar
            present(alerta,animated: true)
        }
        else if tipoAlerta == 2{
            //Crear la alerta
            alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .actionSheet)
            //Botones
            alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {action in print("Boton Aceptar")}))
            alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: {action in print("Boton Cancelar")}))
            alerta.addAction(UIAlertAction(title: "Eliminar", style: .destructive, handler: {action in print("Boton Destructive")}))
            //Mostrar
            present(alerta,animated: true)
        }
        else if tipoAlerta == 3{
            //Crear la alerta
            alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
            //Botones
            alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {action in print("Boton Aceptar")}))
            alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: {action in print("Boton Cancelar")}))
            alerta.addAction(UIAlertAction(title: "Eliminar", style: .destructive, handler: {action in print("Boton Destructive")}))
            //Mostrar
            present(alerta,animated: true)
        }
    }
    
    @IBAction func btnAlerta1(_ sender: UIButton) {
        MostrarAlerta(tipoAlerta: 1, mensaje: "Alerta tradicional", titulo: "Aviso")
    }
    
    @IBAction func btnAlerta2(_ sender: UIButton) {
        MostrarAlerta(tipoAlerta: 2, mensaje: "Alerta Action Sheet", titulo: "Aviso")
    }
    
    @IBAction func btnAlerta3(_ sender: UIButton) {
        MostrarAlerta(tipoAlerta: 3, mensaje: "Alerta tradicional varios botones", titulo: "Aviso")
    }
    
    @IBAction func btnAlerta4(_ sender: UIButton) {
    }
    
    @IBAction func btnAlerta5(_ sender: UIButton) {
    }
}

