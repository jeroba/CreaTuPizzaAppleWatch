//
//  IngredientesController.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var ingredientes = [0]
    
    var jamonEstatus = false
    var pepperoniEstatus = false
    var pavoEstatus = false
    var salchichaEstatus = false
    var aceitunaEstatus = false
    var cebollaEstatus = false
    var pimientoEstatus = false
    var pinaEstatus = false
    var anchoaEstatus = false
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var pina: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        configPizza = context as! ConfiguracionPizza
    }

    @IBAction func siguiente() {
        ingredientes.removeAll()
        if jamonEstatus{
            ingredientes.append(1)
        }
        if pepperoniEstatus{
            ingredientes.append(2)
        }
        if pavoEstatus{
            ingredientes.append(3)
        }
        if salchichaEstatus{
            ingredientes.append(4)
        }
        if aceitunaEstatus{
            ingredientes.append(5)
        }
        if cebollaEstatus{
            ingredientes.append(6)
        }
        if pimientoEstatus{
            ingredientes.append(7)
        }
        if pinaEstatus{
            ingredientes.append(8)
        }
        if anchoaEstatus{
            ingredientes.append(9)
        }
    
        configPizza.asignaIngredientes(ingredientes)
        pushControllerWithName("pantallaConfirmacion", context: configPizza)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func jamonCambio(value: Bool) {
        jamonEstatus = value
    }
    @IBAction func pepperoniCambio(value: Bool) {
        pepperoniEstatus = value
    }
    @IBAction func pavoCambio(value: Bool) {
        pavoEstatus = value
    }
    @IBAction func salchichaCambio(value: Bool) {
        salchichaEstatus = value
    }
    @IBAction func aceitunaCambio(value: Bool) {
        aceitunaEstatus = value
    }
    @IBAction func cebollaCambio(value: Bool) {
        cebollaEstatus = value
    }
    @IBAction func pimientoCambio(value: Bool) {
        pimientoEstatus = value
    }
    @IBAction func pinaCambio(value: Bool) {
        pinaEstatus = value
    }
    @IBAction func anchoaCambio(value: Bool) {
        anchoaEstatus = value
    }
}
