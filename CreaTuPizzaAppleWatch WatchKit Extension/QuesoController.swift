//
//  QuesoController.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var queso = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        configPizza = context as! ConfiguracionPizza
    }
    
    @IBAction func mozarela() {
        queso = 1
        llamaSiguienteVista()
    }
    
    @IBAction func cheddar() {
        queso = 2
        llamaSiguienteVista()
    }
    
    @IBAction func parmesano() {
        queso = 3
        llamaSiguienteVista()
    }
    
    @IBAction func sinqueso() {
        queso = 4
        llamaSiguienteVista()
    }
    
    func llamaSiguienteVista(){
        configPizza.asignaQueso(queso)
        pushControllerWithName("pantallaIngredientes", context: configPizza)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
