//
//  noticiaCompleta.swift
//  Mayo22
//
//  Created by OdioMac on 29/05/24.
//

import UIKit
import SafariServices

class noticiaCompleta: UIViewController {
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var imgNoticia: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    var NoticiaSeleccionada:Noticia?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitulo.text = NoticiaSeleccionada?.title
        if let urlImagen = URL(string: NoticiaSeleccionada?.urlToImage ?? ""){
            let dataTask = URLSession.shared.dataTask(with: urlImagen){data,response,error in
                guard let imagenData = data else {return}
                DispatchQueue.main.async {
                    self.imgNoticia.image = UIImage(data: imagenData)
                }
            }
            dataTask.resume()
        }
        lblDescripcion.text = NoticiaSeleccionada?.description
    }
    
    @IBAction func btnSafari(_ sender: UIButton) {
        let vistaSafari = SFSafariViewController(url: URL(string: NoticiaSeleccionada?.url ?? "")!)
        present(vistaSafari,animated:true)
    }
}
