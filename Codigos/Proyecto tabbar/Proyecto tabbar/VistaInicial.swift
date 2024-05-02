//
//  VistaInicial.swift
//  Proyecto tabbar
//
//  Created by SamsungBoot on 29/04/24.
//

import UIKit

class VistaInicial: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    var nombre:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNombre.text = "Hola \(nombre)"
    }

}
