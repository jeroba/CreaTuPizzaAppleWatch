//
//  ConfirmacionController.swift
//  CreaTuPizzaAppleWatch
//
//  Created by Jesus Rodriguez Barrera on 10/03/16.
//  Copyright © 2016 Aplicapp. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionController: WKInterfaceController {
    var configPizza = ConfiguracionPizza()
    var ingredienteString = ""

    @IBOutlet var tamanioLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    @IBOutlet var errorLabel: WKInterfaceLabel!
    @IBOutlet var botonOrdenar: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        configPizza = context as! ConfiguracionPizza
        
        if configPizza.tamanio == 1{
            tamanioLabel.setText("Chica")
        }else{
            if configPizza.tamanio == 2{
                tamanioLabel.setText("Mediana")
            }else{
                if configPizza.tamanio == 3{
                    tamanioLabel.setText("Grande")
                }
            }
        }
        
        if configPizza.masa == 1{
            masaLabel.setText("Delgada")
        }else{
            if configPizza.masa == 2{
                masaLabel.setText("Crujiente")
            }else{
                if configPizza.masa == 3{
                    masaLabel.setText("Gruesa")
                }
            }
        }
        
        if configPizza.queso == 1{
            quesoLabel.setText("Mozarela")
        }else{
            if configPizza.queso == 2{
                quesoLabel.setText("Cheddar")
            }else{
                if configPizza.queso == 3{
                    quesoLabel.setText("Parmesano")
                }else{
                    if configPizza.queso == 4{
                        quesoLabel.setText("Sin queso")
                    }
                }
            }
        }
        
        var contarIngredientes = 0
        for ingrediente in configPizza.ingredientes{
            if ingrediente == 1{
                ingredienteString += "Jamon, "
                contarIngredientes += 1
            }else{
                if ingrediente == 2{
                    ingredienteString += "Pepperoni, "
                    contarIngredientes += 1
                }else{
                    if ingrediente == 3{
                        ingredienteString += "Pavo, "
                        contarIngredientes += 1
                    }else{
                        if ingrediente == 4{
                            ingredienteString += "Salchicha, "
                            contarIngredientes += 1
                        }else{
                            if ingrediente == 5{
                                ingredienteString += "Aceituna, "
                                contarIngredientes += 1
                            }else{
                                if ingrediente == 6{
                                    ingredienteString += "Cebolla, "
                                    contarIngredientes += 1
                                }else{
                                    if ingrediente == 7{
                                        ingredienteString += "Pimiento, "
                                        contarIngredientes += 1
                                    }else{
                                        if ingrediente == 8{
                                            ingredienteString += "Piña, "
                                            contarIngredientes += 1
                                        }else{
                                            if ingrediente == 9{
                                                ingredienteString += "Anchoa, "
                                                contarIngredientes += 1
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
        ingredientesLabel.setText(ingredienteString)
        
        if contarIngredientes < 1{
            botonOrdenar.setHidden(true)
            errorLabel.setText("Selecciona por lo menos 1 ingrediente.")
        }else{
            if contarIngredientes > 5{
                botonOrdenar.setHidden(true)
                errorLabel.setText("Selecciona menos de 5 ingredientes.")
            }else{
                botonOrdenar.setHidden(false)
                errorLabel.setText("")
            }
        }
        
    }

    @IBAction func accionOrdenar() {
        pushControllerWithName("pantallaProcesada", context: configPizza)
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
