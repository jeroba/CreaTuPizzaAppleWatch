//
//  ProcesadaController.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit
import Foundation


class ProcesadaController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    @IBAction func aceptar() {
        popToRootController()
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
