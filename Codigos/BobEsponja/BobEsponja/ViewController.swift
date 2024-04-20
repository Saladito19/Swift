//
//  ViewController.swift
//  BobEsponja
//
//  Created by OdioMac on 19/04/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblOrden: UILabel!
    @IBOutlet weak var lblPago: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var imgMenu: UIImageView!
    @IBOutlet weak var pkvMenu: UIPickerView!
    @IBOutlet weak var swDescuento: UISwitch!
    var Descuento = false, HS = 0, HQ = 0, PF = 0, R = 0, P=0, Propina = 0, Cantidad = 0, Seleccion = 0
    let Menu = ["Hamburguesa sencilla $40","Hamburguesa con queso $50","Papas fritas $20","Refresco $12","Postre $8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pkvMenu.delegate = self
        pkvMenu.dataSource = self
        imgMenu.image = UIImage(named: "HamburguesaSencilla")
    }
    
    //Numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Numero de renglones
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Menu.count
    }
    
    //Indicar el contenido de cada fila
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Menu[row]
    }
    
    //Obtener valor seleccionado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Seleccion = row
        switch row {
            case 0: imgMenu.image = UIImage(named: "HamburguesaSencilla")
            case 1: imgMenu.image = UIImage(named: "HamburguesaConQueso")
            case 2: imgMenu.image = UIImage(named: "PapasFritas")
            case 3: imgMenu.image = UIImage(named: "Refresco")
            case 4: imgMenu.image = UIImage(named: "Postre")
            default: print("Error")
        }
    }
    
    @IBAction func swDescuento(_ sender: UISwitch) {
        if sender.isOn{
            Descuento = true
        }else{
            Descuento = false
        }
    }
    
    @IBAction func stCantidad(_ sender: UIStepper) {
        Cantidad = Int(sender.value)
        lblCantidad.text = String(Cantidad)
    }
    
    @IBAction func btnAgregar(_ sender: UIButton) {
        if (Seleccion == 0){
            HS = HS + Cantidad
            lblOrden.text = (lblOrden.text ?? "") + ", Hamburguesa sencilla \(HS)"
        }else if(Seleccion == 1){
            HQ = HQ + Cantidad
            lblOrden.text = (lblOrden.text ?? "") + ", Hamburguesa con queso \(HQ)"
        }else if(Seleccion == 2){
            PF = PF + Cantidad
            lblOrden.text = (lblOrden.text ?? "") + ", Papas fritas \(PF)"
        }else if(Seleccion == 3){
            R = R + Cantidad
            lblOrden.text = (lblOrden.text ?? "") + ", Refresco \(R)"
        }else{
            P = P + Cantidad
            lblOrden.text = (lblOrden.text ?? "") + ", Postre \(P)"
        }
    }
    
    @IBAction func btnPropina(_ sender: UIButton) {
        let alerta:UIAlertController
        //Crear la alerta
        alerta = UIAlertController(title: "Propina", message: "Selecciona la cantidad", preferredStyle: .actionSheet)
        //Botones
        alerta.addAction(UIAlertAction(title: "3%", style: .default, handler: {action in self.Propina = 3}))
        alerta.addAction(UIAlertAction(title: "10%", style: .default, handler: {action in self.Propina = 10}))
        alerta.addAction(UIAlertAction(title: "15%", style: .default, handler: {action in self.Propina = 15}))
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        //Mostrar
        present(alerta,animated: true)
    }
    
    @IBAction func btnPagar(_ sender: UIButton) {
        let MiOrden = Orden(HS, HQ, PF, R, P)
        lblPago.text = MiOrden.CalcularPago(Propina: Propina, Descuento: Descuento)
    }
    
    @IBAction func CambiarMesa(_ sender: UISegmentedControl) {
        lblCantidad.text = "0"
        swDescuento.isOn = false
        lblPago.text = "Pago"
        Descuento = false
        HS = 0
        HQ = 0
        PF = 0
        R = 0
        P=0
        Propina = 0
        Cantidad = 0
        switch sender.selectedSegmentIndex {
            case 0: lblOrden.text = "Orden Mesa 1: "
            case 1: lblOrden.text = "Orden Mesa 2: "
            case 2: lblOrden.text = "Orden Mesa 3: "
            default: print("Error")
        }
    }
}

