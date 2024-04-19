//
//  ViewController.swift
//  Ejercicio_Manzanas_Naranjas
//
//  Created by Saladito on 01/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtManzanas: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: Any) {
        if let manzanas = Int(txtManzanas.text!){
            let naranjas:Int
            naranjas = (manzanas/5)*3
            let restManzanas = manzanas % 5
            lblResultado.text = "Naranjas: \(naranjas) \nManzanas: \(restManzanas)"
        }
    }
    
}

