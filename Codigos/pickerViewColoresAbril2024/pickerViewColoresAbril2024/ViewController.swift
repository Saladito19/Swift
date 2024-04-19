//
//  ViewController.swift
//  pickerViewColoresAbril2024
//
//

import UIKit

class ViewController: UIViewController
        , UIPickerViewDelegate
        , UIPickerViewDataSource{
    
    @IBOutlet weak var pkvColores: UIPickerView!
    let colores = ["","Azul", "Amarillo", "Gris", "Morado", "Verde","Rojo","Cafe","Negro"]
    //let colores = ["","blue", "yellow", "gray", "purple", "green","Rojo","Cafe","Negro"]
            @IBOutlet weak var lblColor: UILabel!
            @IBOutlet weak var imgColor: UIImageView!
           
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //conexion con los datos
        pkvColores.delegate = self
        pkvColores.dataSource = self
    }
    
    //Numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //numero de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
    }
    
    //Indicar el contenido de cada fila
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colores[row]
    }
    
    //Obtener el valor seleccionado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblColor.text = colores[row]
       
        switch row{
        case 1:
            imgColor.image = UIImage(named: "blue")
        case 2:
            imgColor.image = UIImage(named: "yellow")
        case 3:
            imgColor.image = UIImage(named: "gray")
        case 4:
            imgColor.image = UIImage(named: "purple")
        case 5:
            imgColor.image = UIImage(named: "green")
        default:
            imgColor.image = nil
        }
        //imgColor.image = UIImage(named: colores[row])
    }
            
    @IBAction func SeleccionPickerView (_ sender: UISwitch){
        if sender.isOn{
            pkvColores.selectRow(4, inComponent: 0, animated: true)
        }else{
            pkvColores.selectRow(0, inComponent: 0, animated: false)
        }
    }
}

/*Pasos para agregar el pickerview
 
 1. agregar el control en la vista
 2. conectar el control
 3. Agregar los elementos
 UIPickerViewDelegate
 , UIPickerViewDataSource
 
 4.Implementar los protocolos
 //Numero de componentes (columnas)
 func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 1
 }
 
 //numero de renglones
 func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     return colores.count
 }
 
 5. Hacer la conexion con los datos
 pkvColores.delegate = self
 pkvColores.dataSource = self
 
 6. Indicar el contenido de cada fila
 //Indicar el contenido de cada fila
 func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return colores[row]
 }
 
 7. Atrapar el valor seleccionado
 //Obtener el valor seleccionado
 func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
 */
