//
//  ViewControllerTamano.swift
//  Pizza
//
//  Created by Alejandro Alvarez on 11/15/15.
//  Copyright © 2015 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewControllerTamano: UIViewController {

    @IBOutlet weak var pequena: UISwitch!
    @IBOutlet weak var mediana: UISwitch!
    @IBOutlet weak var grande: UISwitch!
   
    var tamano : String = ""
    
    let alertView = UIAlertController(title: "ERROR", message: "Debes seleccionar un Tamaño", preferredStyle: .Alert)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func accionPequena(sender: AnyObject) {
        if(pequena.on){
            mediana.setOn(false, animated: true)
            grande.setOn(false, animated: true)
            tamano = "Pequeña"
        }
    }
    
    
    @IBAction func accionMediana(sender: AnyObject) {
        if(mediana.on){
            pequena.setOn(false, animated: true)
            grande.setOn(false, animated: true)
            tamano = "Mediana"
        }
    }
    
    
    @IBAction func accionGrande(sender: AnyObject) {
        if(grande.on){
            pequena.setOn(false, animated: true)
            mediana.setOn(false, animated: true)
            tamano = "Grande"
        }
    }
    
    
    
    @IBAction func alertaTamano(sender: AnyObject) {
        
        if ((pequena.on == false) && (mediana.on == false) && (grande.on == false) ){
            presentViewController(alertView, animated: true, completion: nil)
        }
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let masaVC = segue.destinationViewController as! ViewControllerMasa
        masaVC.tamano = tamano
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
