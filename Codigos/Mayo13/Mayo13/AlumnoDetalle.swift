//
//  AlumnoDetalle.swift
//  Mayo13
//
//  Created by OdioMac on 13/05/24.
//

import UIKit

class AlumnoDetalle: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblNumControl: UILabel!
    @IBOutlet weak var lblPromedio: UILabel!
    var AlumnoSeleccionado:Alumno?
    override func viewDidLoad() {
        super.viewDidLoad()
        cargarDatos()
    }
    
    func cargarDatos(){
        imgFoto.image = AlumnoSeleccionado?.fotoPerfil
        lblNombre.text = AlumnoSeleccionado?.nombre
        if let numControl = AlumnoSeleccionado?.numeroControl{
            lblNumControl.text = String(numControl)
        } else{
            lblNumControl.text = ""
        }
        if let promedio = AlumnoSeleccionado?.promedio{
            lblPromedio.text = String(promedio)
        } else{
            lblPromedio.text = ""
        }
    }
}
