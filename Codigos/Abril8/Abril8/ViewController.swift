//
//  ViewController.swift
//  Abril8
//
//  Created by Saladito on 08/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swicthConfiguracion: UISwitch!
    @IBOutlet weak var txtTexto: UITextField!
    @IBOutlet weak var lblSemestre: UILabel!
    @IBOutlet weak var sliderSemestre: UISlider!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var lblStepper: UILabel!
    @IBOutlet weak var Descarga: UIProgressView!
    var valorProgreso = 0
    @IBOutlet weak var lblProgreso: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        swicthConfiguracion.isEnabled = false
        indicator.color = .black
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        lblStepper.text = "1"
    }
    
    @IBAction func btnActivar(_ sender: Any) {
        swicthConfiguracion.isEnabled = true
        let actual = valorProgreso
        let maximo = 10
        if actual <= maximo {
            let rellenado = Float(actual) / Float(maximo)
            //Indicar el rellenado
            Descarga.progress = Float(rellenado)
            valorProgreso += 1
            lblProgreso.text = "Procesando \(actual) de \(maximo)"
        }else{valorProgreso = 0}
    }
    
    
    @IBAction func InvertirSentido(_ sender: UISwitch) {
        if sender.isOn{
            indicator.startAnimating()
            txtTexto.isHidden = false
            lblSemestre.text = "7"
            sliderSemestre.setValue(7, animated: false)
        }else{
            indicator.stopAnimating()
            txtTexto.isHidden = true
            lblSemestre.text = ""
            sliderSemestre.setValue(1, animated: true)
        }
    }
    
    
    @IBAction func SeleccionarSemestre(_ sender: UISlider) {

        let semestre = Int(sender.value)
        lblSemestre.text = String(semestre)
        print("Semestre: \(semestre),Valor Minimo: \(sender.minimumValue), Valor Maximo: \(sender.maximumValue)")
    }
    
    
    @IBAction func Semestre(_ sender: UIStepper) {
        let valor = Int(sender.value)
        lblStepper.text = String(valor)
    }
    
    
    @IBAction func SeleccionarEquipo(_ sender: UISegmentedControl) {
        print("Total de segmentos: \(sender.numberOfSegments)")
        print("Selecciono el segmento: ", sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex{
        case 0: print(sender.titleForSegment(at: sender.selectedSegmentIndex)!)
        case 1: print("Chivas")
        case 2: print("Santos")
        case 3: print("Pumas")
        default: print("Error")
        }
    }
}

