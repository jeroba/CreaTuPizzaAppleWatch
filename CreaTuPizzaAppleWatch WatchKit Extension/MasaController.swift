//
//  MasaController.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var masa = 0
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        configPizza = context as! ConfiguracionPizza
    }
    
    @IBAction func delgada() {
        masa = 1
        llamaSiguienteVista()
    }
    
    @IBAction func crujiente() {
        masa = 2
        llamaSiguienteVista()
    }
    
    @IBAction func gruesa() {
        masa = 3
        llamaSiguienteVista()
    }
    
    func llamaSiguienteVista(){
        configPizza.asignaMasa(masa)
        pushControllerWithName("pantallaQueso", context: configPizza)
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
