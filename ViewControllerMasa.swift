//
//  ViewControllerMasa.swift
//  Pizza
//
//  Created by Alejandro Alvarez on 11/15/15.
//  Copyright © 2015 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController {

    @IBOutlet weak var delgada: UISwitch!
    @IBOutlet weak var crujiente: UISwitch!
    @IBOutlet weak var gruesa: UISwitch!
    
    var tamano: String = ""
    var masa : String = ""
   
    let alertView = UIAlertController(title: "ERROR", message: "Debes seleccionar un Tipo de Masa", preferredStyle: .Alert)
    
    @IBAction func accionDelgada(sender: AnyObject) {
        if(delgada.on){
            crujiente.setOn(false, animated: true)
            gruesa.setOn(false, animated: true)
            masa = "Delgada"
        }
    }
  
    @IBAction func accionCrujiente(sender: AnyObject) {
        if(crujiente.on){
            delgada.setOn(false, animated: true)
            gruesa.setOn(false, animated: true)
            masa = "Crujiente"
        }
    }
    
    @IBAction func accionGruesa(sender: AnyObject) {
        if(gruesa.on){
            crujiente.setOn(false, animated: true)
            delgada.setOn(false, animated: true)
            masa = "Gruesa"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func alertaMasa(sender: AnyObject) {
        
        if((delgada.on==false) && (crujiente.on==false) && (gruesa.on==false)){
            presentViewController(alertView, animated: true, completion: nil)
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredientesVC = segue.destinationViewController as! ViewControllerIngredientes
        ingredientesVC.tamano = tamano
        ingredientesVC.masa = masa
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
