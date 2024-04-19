
//
//  ViewController.swift
//  Qatar2022
//
//  Created by David Castillo on 16/04/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var pkvBombo: UIPickerView!
    @IBOutlet weak var lblEquipo1: UILabel!
    @IBOutlet weak var lblEquipo2: UILabel!
    @IBOutlet weak var lblEquipo3: UILabel!
    @IBOutlet weak var lblEquipo4: UILabel!
    @IBOutlet weak var imgEquipo1: UIImageView!
    @IBOutlet weak var imgEquipo2: UIImageView!
    @IBOutlet weak var imgEquipo3: UIImageView!
    @IBOutlet weak var imgEquipo4: UIImageView!
    var Equipos = ["Qatar","Belgica","Brasil","Francia","Argentina","Inglaterra","España","Portugal"]
    let Concacaf = ["Mexico","EE.UU","Canada","Costa Rica"]
    let Africa = ["Camerun","Ghana","Marruecos","Tunez"]
    let Asia = ["Arabia Saudita","Australia","Japon","Corea del Sur"]
    let Conmebol = ["Brasil","Argentina","Ecuador","Uruguay"]
    let Europeos = ["Qatar","Belgica","Francia","Inglaterra","España","Portugal","Dinamarca","Paises Bajos","Alemania","Suiza","Croacia","Iran","Serbia","Polonia","Senegal","Gales"]
    var contador = 0
    var equipoSeleccionado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pkvBombo.delegate = self
        pkvBombo.dataSource = self
        imgLogo.image = UIImage(named: "FIFA_LOGO")
    }
    
    //Numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Numero de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Equipos.count
    }
    
    //Indicar el contenido de cada fila
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Equipos[row]
    }
    
    //Obtener valor seleccionado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        equipoSeleccionado = Equipos[row]
    }
    
    //Mostrar Alerta
    func MostrarAlerta(mensaje:String,titulo:String){
        let alerta:UIAlertController
        //Crear la alerta
        alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        //Boton
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {action in print("Boton Aceptar")}))
        //Mostrar
        present(alerta,animated: true)
    }

    @IBAction func SeleccionarBombo(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            MostrarAlerta(mensaje: "Qatar \nBelgica \nBrasil \nFrancia \nArgentina \nInglaterra \nEspaña \nPortugal", titulo: "Bombo 1")
        case 1:
            MostrarAlerta(mensaje: "Dinamarca \nPaises Bajos \nAlemania \nSuiza \nCroacia \nUruguay \nMexico \nEE.UU", titulo: "Bombo 2")
        case 2:
            MostrarAlerta(mensaje: "Iran \nJapon \nSerbia \nCorea del Sur \nTunez \nPolonia \nMarruecos \nSenegal", titulo: "Bombo 3")
        case 3:
            MostrarAlerta(mensaje: "Arabia Saudita \nEcuador \nGhana \nCanada \nCamerun \nAustralia \nCosta Rica \nGales", titulo: "Bombo 4")
        default: print("Error")
        }
    }
    
    @IBAction func btnSorteo(_ sender: UIButton) {
        Equipos = []
        Equipos.append(equipoSeleccionado)
        let NumConcacaf = Int.random(in: 1...4)
        let NumAfrica = Int.random(in: 1...4)
        let NumAsia = Int.random(in: 1...4)
        let NumConmebol = Int.random(in: 1...4)
        var NumEuropeos = Int.random(in: 1...16)
        var NumGrupo:Int, S = 1, Agregado = false, Europa = 0
        if Europeos.contains(equipoSeleccionado){
            Europa = 1
        }
        while S <= 3 {
            NumGrupo = Int.random(in: 1...5)
            switch NumGrupo{
                case 1:
                    if Equipos.contains(where:Concacaf.contains){
                        Agregado = true
                    }else{
                        Equipos.append(Concacaf[NumConcacaf-1])
                        pkvBombo.reloadAllComponents()
                    }
                case 2:
                    if Equipos.contains(where:Africa.contains){
                        Agregado = true
                    }else{
                        Equipos.append(Africa[NumAfrica-1])
                        pkvBombo.reloadAllComponents()
                    }
                case 3:
                    if Equipos.contains(where:Asia.contains){
                        Agregado = true
                    }else{
                        Equipos.append(Asia[NumAsia-1])
                        pkvBombo.reloadAllComponents()
                    }
                case 4:
                    if Equipos.contains(where:Conmebol.contains){
                        Agregado = true
                    }else{
                        Equipos.append(Conmebol[NumConmebol-1])
                        pkvBombo.reloadAllComponents()
                    }
                case 5:
                    if Europa != 2 {
                        if Equipos.contains(Europeos[NumEuropeos-1]){
                            let Numero = NumEuropeos
                            while Numero == NumEuropeos{
                                NumEuropeos = Int.random(in: 1...16)
                            }
                            Equipos.append(Europeos[NumEuropeos-1])
                            pkvBombo.reloadAllComponents()
                        }else{
                            Equipos.append(Europeos[NumEuropeos-1])
                            pkvBombo.reloadAllComponents()
                        }
                        Europa += 1
                    }
                    else{
                        Agregado = true
                    }
                default: print("Error")
            }
            if Agregado == false{
                S += 1
            }else{
                Agregado = false
            }
        }
        lblEquipo1.text = Equipos[0]
        lblEquipo2.text = Equipos[1]
        lblEquipo3.text = Equipos[2]
        lblEquipo4.text = Equipos[3]
        imgEquipo1.image = UIImage(named: Equipos[0])
        imgEquipo2.image = UIImage(named: Equipos[1])
        imgEquipo3.image = UIImage(named: Equipos[2])
        imgEquipo4.image = UIImage(named: Equipos[3])
    }
    
}

