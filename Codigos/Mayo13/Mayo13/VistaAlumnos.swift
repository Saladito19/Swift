//
//  ViewController.swift
//  Mayo13
//
//  Created by OdioMac on 13/05/24.
//

import UIKit

class VistaAlumnos: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tablaAlumnos: UITableView!
    var alumnos:[Alumno]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaAlumnos.dataSource = self
        tablaAlumnos.delegate = self
        rellenarArregloAlumnos()
    }
    
    //Total de Celdas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        alumnos.count
    }
    
    //Contenido de la celda, cada que aparece una celda se llama
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Tomar objeto en el vector
        let alumnoCelda = alumnos[indexPath.row]
        //Crear celda
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumno
        celda.AsignarAlumno(alumno: alumnoCelda)
        return celda
    }
    
    //Definir alto de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    //Celda seleccionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Transicion
        performSegue(withIdentifier: "seleccionarAlumno", sender: self)
        //Deseleccionar celda
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    //Pasar datos
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? AlumnoDetalle {
            destino.AlumnoSeleccionado = alumnos[tablaAlumnos.indexPathForSelectedRow!.row]
        }
    }
    
    func rellenarArregloAlumnos(){
        let alumno1 = Alumno(UIImage(named: "1")! , "Javier Campos", 23100234, 89)
        let alumno2 = Alumno(UIImage(named: "2")! , "Victor Torres", 23100189, 100)
        let alumno3 = Alumno(UIImage(named: "3")! , "Rogelio Castillo", 23100035, 73)
        let alumno4 = Alumno(UIImage(named: "4")! , "Maria Gonzalez", 23100845, 90)
        let alumno5 = Alumno(UIImage(named: "5")! , "Rosa Hernandez", 23100341, 91)
        let alumno6 = Alumno(UIImage(named: "6")! , "Ana Montes", 23100202, 60)
        alumnos.append(alumno1)
        alumnos.append(alumno2)
        alumnos.append(alumno3)
        alumnos.append(alumno4)
        alumnos.append(alumno5)
        alumnos.append(alumno6)
    }
}

