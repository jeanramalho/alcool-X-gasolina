//
//  ViewController.swift
//  alcoolXgasolina
//
//  Created by Jean Ramalho on 13/07/23.
//  Copyright © 2023 Lab 7 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        let precoAlcool = precoAlcoolCampo.text
        let precoGasolina = precoGasolinaCampo.text
        
        if (precoAlcool != "" && precoGasolina != "") {
            self.calcularMelhorPreco(alcoolPrice: precoAlcool, gasPrice: precoGasolina)
            
        } else {
            resultadoLegenda.text =  "Preencha todos os campos para realizar o cálculo"
        }
    }
    
    func calcularMelhorPreco (alcoolPrice: String!, gasPrice: String!) {
        if let valorAlcool = Double(alcoolPrice) {
            if let valorGasolina = Double(gasPrice) {
                
                let resultadoPreco = valorAlcool / valorGasolina
                
                if resultadoPreco >= 0.7 {
                    self.resultadoLegenda.text = "A melhor opção é a Gasolina"
                    self.precoAlcoolCampo.text = ""
                    self.precoGasolinaCampo.text = ""
                } else {
                    self.resultadoLegenda.text = "A melhor opção é o Alcool"
                    self.precoAlcoolCampo.text = ""
                    self.precoGasolinaCampo.text = ""
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

