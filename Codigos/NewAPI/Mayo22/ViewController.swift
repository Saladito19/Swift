//
//  ViewController.swift
//  Mayo22
//
//  Created by OdioMac on 22/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var dpFecha: UIDatePicker!
    @IBOutlet weak var pkvTemas: UIPickerView!
    @IBOutlet weak var tvNoticias: UITableView!
    var listadoNoticias : [Noticia] = [] //VECTOR VACIO
    let temas = ["","Microsoft","Windows","Apple","Android","Huawei","Xiaomi","Netflix","Hbo","Disney","Tesla"]
    var temaSeleccionado = ""
    var idiomaSeleccionado = "es"
    var mesInicial:Date?
    var mesFinal:Date?
    var Inicio = ""
    var Final = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tvNoticias.delegate = self
        tvNoticias.dataSource = self
        pkvTemas.dataSource = self
        pkvTemas.delegate = self
        dpFecha.datePickerMode = .date
    }
    
    
    @IBAction func fechaCambio(_ sender: UIDatePicker) {
        //Obtener fecha
        mesInicial = sender.date
        //Crear calendario
        var dataComponent = DateComponents()
        dataComponent.month = 2
        //sumar dos meses
        if let sumaDos = Calendar.current.date(byAdding: dataComponent, to: mesInicial!){
            mesFinal = sumaDos
        }
        //Crear formato
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        //Asignar formato
        Inicio = dateFormatter.string(from: mesInicial!)
        Final = dateFormatter.string(from: mesFinal!)
        print("fecha inicial: ",Inicio)
        print("fecha final: ",Final)
        fetchNoticias()
    }
    
    //PICKER
    //Numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Numero de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temas.count
    }
    
    //Indicar el contenido de cada fila
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return temas[row]
    }
    
    //Obtener valor seleccionado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        temaSeleccionado = temas[row]
        fetchNoticias()
    }
    
    //TABLE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listadoNoticias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let articulo = listadoNoticias[indexPath.row]
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaNoticia") as! celdaNoticia
        
        celda.lblTitulo.text = articulo.title
        if let urlImagen = URL(string: articulo.urlToImage ?? ""){
            let dataTask = URLSession.shared.dataTask(with: urlImagen){data,response,error in
                guard let imagenData = data else {return}
                DispatchQueue.main.async {
                    celda.imgPortada.image = UIImage(data: imagenData)
                }
            }
            dataTask.resume()
        }
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    //Celda seleccionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Transicion
        performSegue(withIdentifier: "noticiaSeleccionada", sender: self)
        //Deseleccionar celda
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    //Pasar datos
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? noticiaCompleta {
            destino.NoticiaSeleccionada = listadoNoticias[tvNoticias.indexPathForSelectedRow!.row]
        }
    }
     
    func fetchNoticias(){
        //print("NETWORKING")
        //1.- Crear la URL
        let cadenaConexion =  "https://newsapi.org/v2/everything?q=\(temaSeleccionado)&from=\(Inicio)&to=\(Final)&sortBy=popularity&language=\(idiomaSeleccionado)&apiKey=58f032ba00af419dabd2fc17b091c2e9"
            
        if let url = URL(string: cadenaConexion){
            //2.- Crear un URL Session (Es quien hara la conexion)
            let sesion = URLSession(configuration: .default)
                
            //3.- Darle un task a la sesion
            let task = sesion.dataTask(with: url){data, response, error in
            if error != nil{
                print(error!)
                return
            }
                    
            if let datosRegresados = data{
                //let respuesta = String(data:datosRegresados, encoding: .utf8)
                //print(respuesta)
                //Descomponer JSON
                //Decodificador
                let decoder = JSONDecoder()
                do {
                    let decodificado = try decoder.decode(Noticias.self, from: datosRegresados)
                    //print(decodificado.articles.count)
                    //Pasamos articulos al vector
                    self.listadoNoticias = decodificado.articles
                    //Actualizar la tabla una vez se regrese al hilo principal
                    DispatchQueue.main.async {
                        self.tvNoticias.reloadData()
                    }
                }
                catch{
                    print(error)
                }
            }
            }
            //4.- Empezar la tarea
            task.resume()
        }
    }
    
    @IBAction func Idioma(_ sender: UISwitch) {
        if sender.isOn{
            idiomaSeleccionado = "en"
            fetchNoticias()
        }else{
            idiomaSeleccionado = "es"
            fetchNoticias()
        }
    }
}

