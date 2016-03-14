//
//  ConfiguracionPizza.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit

class ConfiguracionPizza: NSObject {
    var tamanio:Int = 0
    var masa:Int = 0
    var queso:Int = 0
    var ingredientes:[Int] = [0]
    
    func inicializa(){
        tamanio = 0
        masa = 0
        queso = 0
        ingredientes = [0]
    }
    
    func asignaTamanio(valor:Int){
        tamanio = valor
    }
    
    func asignaMasa(valor:Int){
        masa = valor
    }
    
    func asignaQueso(valor:Int){
        queso = valor
    }
    
    func asignaIngredientes(valor:[Int]){
        ingredientes = valor
    }
    
}
