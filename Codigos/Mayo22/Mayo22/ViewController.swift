//
//  ViewController.swift
//  Mayo22
//
//  Created by OdioMac on 22/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvNoticias: UITableView!
    var listadoNoticias : [Noticia] = [] //VECTOR VACIO
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchNoticias()
        tvNoticias.delegate = self
        tvNoticias.dataSource = self
            // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listadoNoticias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let articulo = listadoNoticias[indexPath.row]
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaNoticia") as! celdaNoticia
        
        celda.lblTitulo.text = articulo.title
        
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
     
    func fetchNoticias(){
        //print("NETWORKING")
        //1.- Crear la URL
        let cadenaConexion = "https://newsapi.org/v2/everything?q=microsoft&from=2024-05-01&to=2024-05-24&sortBy=popularity&pageSize=30&language=es&apiKey=1f52f28a0f8f4cef8fc32018f2a7a6b3" //Link de la profe
            
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
}

