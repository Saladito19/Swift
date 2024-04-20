//
//  Menu.swift
//  BobEsponja
//
//  Created by OdioMac on 19/04/24.
//

import Foundation
class Orden {
    //Atributos
    private var hamburguesaSencilla:Int = 0
    private var hamburguesaConQueso:Int = 0
    private var papasFritas:Int = 0
    private var refresco:Int = 0
    private var postre:Int = 0
    
    //Constructor
    init(_ hamburguesaSencilla: Int,_ hamburguesaConQueso: Int,_ papasFritas: Int,_ refresco: Int,_ postre: Int) {
        self.hamburguesaSencilla = hamburguesaSencilla
        self.hamburguesaConQueso = hamburguesaConQueso
        self.papasFritas = papasFritas
        self.refresco = refresco
        self.postre = postre
    }
    
    //Propiedades
    var HamburguesaSencilla:Int{
        get{return hamburguesaSencilla}
        set{hamburguesaSencilla = newValue}
    }
    
    var HamburguesaConQueso:Int{
        get{return hamburguesaConQueso}
        set{hamburguesaConQueso = newValue}
    }
    
    var PapasFritas:Int{
        get{return papasFritas}
        set{papasFritas = newValue}
    }
    
    var Refresco:Int{
        get{return refresco}
        set{refresco = newValue}
    }
    
    var Postre:Int{
        get{return postre}
        set{postre = newValue}
    }
    

    //Metodo
    func CalcularPago(Propina:Int,Descuento:Bool) -> String{
        var HS = 0, HQ = 0, PF = 0, R = 0, P=0, PRO = 0.0, SUBTOTAL = 0,OR = "",TOTAL = 0.0
        if Descuento == true{
            HS = hamburguesaSencilla * 20
            HQ = hamburguesaConQueso * 25
            PF = papasFritas * 10
            R = refresco * 6
            P = postre * 4
        }else{
            HS = hamburguesaSencilla * 40
            HQ = hamburguesaConQueso * 50
            PF = papasFritas * 20
            R = refresco * 12
            P = postre * 8
        }
        if HS > 0{OR = "Hamburguesa sencilla: \(hamburguesaSencilla)"}
        if HQ > 0{OR = OR + "\nHamburguesa con queso: \(hamburguesaConQueso)"}
        if PF > 0{OR = OR + "\nPapas fritas: \(papasFritas)"}
        if R > 0{OR = OR + "\nRefresco: \(refresco)"}
        if P > 0{OR = OR + "\nPostre: \(postre)"}
        SUBTOTAL = HS + HQ + PF + R + P
        OR = OR + "\n"
        OR = OR + "\nSubtotal: $\(SUBTOTAL)"
        if(Propina > 0){
            PRO = Double(Propina * SUBTOTAL)/100
            OR = OR + "\nPropina: \(Propina)% $\((PRO * 100).rounded() / 100)"
        }
        TOTAL = Double(SUBTOTAL)
        OR = OR + "\nTotal a pagar: $\(TOTAL+PRO)"
        return OR
    }
}
