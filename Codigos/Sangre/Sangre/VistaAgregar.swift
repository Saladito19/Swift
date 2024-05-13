//
//  VistaAgregar.swift
//  Sangre
//
//  Created by OdioMac on 03/05/24.
//

import UIKit

class VistaAgregar: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var pkvSangre: UIPickerView!
    let tipoSangre = ["","A+","O+","B+","AB+","A-","O-","B-","AB-"]
    var TipoSeleccionado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pkvSangre.dataSource = self
        pkvSangre.delegate = self
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String, let peso = UserDefaults.standard.value(forKey: "udPeso") as? String, let sangre = UserDefaults.standard.value(forKey: "udSangre") as? String {
            txtNombre.text = nombre
            txtPeso.text = peso
            TipoSeleccionado = sangre
            if let index = tipoSangre.firstIndex(of: sangre) {
                pkvSangre.selectRow(index, inComponent: 0, animated: true)
            }
        }else{
            mostrarAlerta("No hay datos guardados")
        }
    }
    
    //Numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Numero de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoSangre.count
    }
    
    //Indicar el contenido de cada fila
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoSangre[row]
    }
    
    //Obtener valor seleccionado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        TipoSeleccionado = tipoSangre[row]
    }
    
    @IBAction func btnGuardar(_ sender: Any) {
        //Tomar datos
        let nombre = txtNombre.text ?? ""
        let peso = txtPeso.text ?? ""
        let sangre = TipoSeleccionado
        let vacio = ""
        if nombre != "" && peso != "" && sangre != "" {
            //UserDefault son pares de llave-valor
            UserDefaults.standard.set(nombre, forKey: "udNombre")
            UserDefaults.standard.set(peso, forKey: "udPeso")
            UserDefaults.standard.set(sangre, forKey: "udSangre")
            txtNombre.text = ""
            txtPeso.text = ""
            TipoSeleccionado = vacio
            if let index = tipoSangre.firstIndex(of: vacio) {
                pkvSangre.selectRow(index, inComponent: 0, animated: true)
            }
            mostrarAlerta("Se guardaron los datos")
        }else{
            mostrarAlerta("No puede dejar los campos vacios")
        }
    }
    
    
    @IBAction func btnEliminar(_ sender: Any) {
        let vacio = ""
        UserDefaults.standard.removeObject(forKey: "udNombre")
        UserDefaults.standard.removeObject(forKey: "udPeso")
        UserDefaults.standard.removeObject(forKey: "udSangre")
        mostrarAlerta("Se han eliminado los datos")
        txtNombre.text = ""
        txtPeso.text = ""
        TipoSeleccionado = vacio
        if let index = tipoSangre.firstIndex(of: vacio) {
            pkvSangre.selectRow(index, inComponent: 0, animated: true)
        }
    }
    
    func mostrarAlerta(_ mensaje:String){
        let alerta = UIAlertController(title: "Aviso", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alerta,animated: true)
    }
}
