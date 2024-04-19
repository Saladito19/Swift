//
//  ViewController.swift
//  Figura_Irregular
//
//  Created by Saladito on 01/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var txtX: UITextField!
    @IBOutlet weak var txtY: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnCalcular(_ sender: Any) {
        if let ancho = Int(txtAncho.text!), let alto = Int(txtAlto.text!), let x = Int(txtX.text!), let y = Int(txtY.text!){
            let perimetro = ancho * 2 + alto * 2
            let area = (ancho * y) + (alto - y) * x
            lblResultado.text = "Perimetro: \(perimetro) \nArea: \(area)"
        }else{
            lblResultado.text = "Error"
        }
    }
}

