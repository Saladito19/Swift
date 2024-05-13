//
//  ViewController.swift
//  Mayo2
//
//  Created by OdioMac on 02/05/24.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {

    
    @IBOutlet weak var wkvNavegador: WKWebView!
    let miUrl = "https://www.apple.com/mx/"
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ConsultarPaginaWebKitView(_ sender: Any) {
        wkvNavegador.load(URLRequest(url: URL(string: miUrl)!))
    }
    
    @IBAction func ConsultarPaginaSafari(_ sender: Any) {
        let vistaSafari = SFSafariViewController(url: URL(string: miUrl)!)
        present(vistaSafari, animated: true)
    }
    
    @IBAction func Guardar(_ sender: Any) {
        //Tomar datos
        let nombre = txtNombre.text ?? ""
        let apellido = txtApellido.text ?? ""
        
        if nombre != "" && apellido != "" {
            //UserDefault son pares de llave-valor
            UserDefaults.standard.set(nombre, forKey: "udNombre")
            UserDefaults.standard.set(apellido, forKey: "udApellido")
            txtNombre.text = ""
            txtApellido.text = ""
            mostrarAlerta("Se guardaron los datos  ")
        }else{
            mostrarAlerta("No puede dejar los campos vacios")
        }
    }
    
    @IBAction func Consultar(_ sender: Any) {
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String, let apellido = UserDefaults.standard.value(forKey: "udApellido") as? String {
            txtNombre.text = nombre
            txtApellido.text = apellido
        }else{
            mostrarAlerta("No hay datos guardados")
        }
    }
    
    @IBAction func Eliminar(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "udNombre")
        UserDefaults.standard.removeObject(forKey: "udApellido")
        mostrarAlerta("Se han eliminado los datos")
        txtNombre.text = ""
        txtApellido.text = ""
    }
    
    func mostrarAlerta(_ mensaje:String){
        let alerta = UIAlertController(title: "Aviso", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alerta,animated: true)
    }
}

