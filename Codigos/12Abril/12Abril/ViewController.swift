//
//  ViewController.swift
//  12Abril
//
//  Created by David Castillo on 12/04/24.
//

import UIKit

class ViewController: UIViewController
, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var pkvColores: UIPickerView!
    @IBOutlet weak var imgColor: UIImageView!
    let colores = ["","azul","amarillo","gris","morado","verde","rojo","cafe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Conexion con los valores
        pkvColores.delegate = self
        pkvColores.dataSource = self
    }
    
    //Numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Numero de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
    }
    
    //Indicar el contenido de cada fila
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    
    //Obtener valor seleccionado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblColor.text = colores[row]
        //Se puede usar el switch
        imgColor.image = UIImage(named: colores[row])
    }
    
    @IBAction func SeleccionPickerView (_ sender:UISwitch){
        if sender.isOn{
            pkvColores.selectRow(4, inComponent: 0, animated: true)
        }else{
            pkvColores.selectRow(0, inComponent: 0, animated: false)
        }
    }
}

