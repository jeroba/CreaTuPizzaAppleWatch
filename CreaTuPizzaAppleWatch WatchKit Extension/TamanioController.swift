//
//  TamanioController.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit
import Foundation


class TamanioController: WKInterfaceController {
    var tamanio:Int = 0
    @IBOutlet var botonChica: WKInterfaceButton!
    @IBOutlet var botonMediana: WKInterfaceButton!
    @IBOutlet var botonGrande: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    @IBAction func chica() {
        tamanio = 1
        llamaSiguienteVista()
    }
    
    @IBAction func mediana() {
        tamanio = 2
        llamaSiguienteVista()
    }
    
    @IBAction func grande() {
        tamanio = 3
        llamaSiguienteVista()
    }
    
    func llamaSiguienteVista(){
        
        let configPizza = ConfiguracionPizza()
        configPizza.asignaTamanio(tamanio)
        pushControllerWithName("pantallaMasa", context: configPizza)
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
