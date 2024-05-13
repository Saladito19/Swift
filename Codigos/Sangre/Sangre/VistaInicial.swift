//
//  VistaInicial.swift
//  Sangre
//
//  Created by OdioMac on 03/05/24.
//

import UIKit
import SafariServices

class VistaInicial: UIViewController {

    @IBOutlet weak var lblDatos: UILabel!
    let miUrl = "https://www.gob.mx/salud"
    override func viewDidLoad() {
        super.viewDidLoad()
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String, let peso = UserDefaults.standard.value(forKey: "udPeso") as? String, let sangre = UserDefaults.standard.value(forKey: "udSangre") as? String {
            lblDatos.text = "Nombre: \(nombre)"
            lblDatos.text = (lblDatos.text ?? "") + "\nPeso: \(peso)"
            lblDatos.text = (lblDatos.text ?? "") + "\nTipo de sangre: \(sangre)"
        }else{
            lblDatos.text = "Ningun valor registrado"
            mostrarAlerta("No hay datos guardados")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String, let peso = UserDefaults.standard.value(forKey: "udPeso") as? String, let sangre = UserDefaults.standard.value(forKey: "udSangre") as? String {
            lblDatos.text = "Nombre: \(nombre)"
            lblDatos.text = (lblDatos.text ?? "") + "\nPeso: \(peso)"
            lblDatos.text = (lblDatos.text ?? "") + "\nTipo de sangre: \(sangre)"
        }else{
            lblDatos.text = "Ningun valor registrado"
            mostrarAlerta("No hay datos guardados")
        }
    }
    
    func mostrarAlerta(_ mensaje:String){
        let alerta = UIAlertController(title: "Aviso", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alerta,animated: true)
    }
    
    @IBAction func btnConsultar(_ sender: Any) {
        let vistaSafari = SFSafariViewController(url: URL(string: miUrl)!)
        present(vistaSafari, animated: true)
    }
    
    //Validar antes de pasar a otra vista
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
    //Pasar valores entre vistas
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaAgregar = segue.destination as! VistaAgregar
    }
}
