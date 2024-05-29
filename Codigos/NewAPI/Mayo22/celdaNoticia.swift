//
//  celdaNoticia.swift
//  Mayo22
//
//  Created by OdioMac on 22/05/24.
//

import UIKit

class celdaNoticia: UITableViewCell {

    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var imgPortada: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
