//
//  ViewController.swift
//  FiguraArea
//
//  Created by David Castillo on 10/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblPrimero: UILabel!
    @IBOutlet weak var lblSegundo: UILabel!
    @IBOutlet weak var txtPrimero: UITextField!
    @IBOutlet weak var txtSegundo: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SeleccionarFigura(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0: lblPrimero.text = "Largo"
            lblSegundo.text = "Ancho"
            lblSegundo.isHidden = false
            txtSegundo.isHidden = false
            txtPrimero.text = ""
            txtSegundo.text = ""
            
        case 1: lblPrimero.text = "Radio"
            lblSegundo.isHidden = true
            txtSegundo.isHidden = true
            txtPrimero.text = ""
            
        case 2: lblPrimero.text = "Altura"
            lblSegundo.text = "Base"
            lblSegundo.isHidden = false
            txtSegundo.isHidden = false
            txtPrimero.text = ""
            txtSegundo.text = ""
            
        default: print("Error")
        }
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        let Primero = Double(txtPrimero.text ?? "0") ?? 0
        let Segundo = Double(txtSegundo.text ?? "0") ?? 0
        if(lblPrimero.text == "Largo"){
            let miRectangulo = Rectangulo(Primero,Segundo)
            lblResultado.text = "Area rectangulo: \(miRectangulo.CalcularArea())"
        } else if(lblPrimero.text == "Radio"){
            let miCirculo = Circunferecia(Primero)
            lblResultado.text = "Area circulo: \((miCirculo.CalcularArea() * 100).rounded() / 100)"
        }else{
            let miTriangulo = Triangulo(Primero,Segundo)
            lblResultado.text = "Area triangulo: \(miTriangulo.CalcularArea())"
        }
    }
    
}

