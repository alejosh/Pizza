//
//  ViewControllerIngredientes.swift
//  Pizza
//
//  Created by Alejandro Alvarez on 11/15/15.
//  Copyright © 2015 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewControllerIngredientes: UIViewController {

    var tamano : String = ""
    var masa : String = ""
    var listaIngredientes : String = ""
    
    var ing1:String=""
    var ing2:String=""
    var ing3:String=""
    var ing4:String=""
    var ing5:String=""
    var ing6:String=""
    var ing7:String=""
    var ing8:String=""
    var ing9:String=""
    var ing10:String=""
    
    let alertView = UIAlertController(title: "ERROR", message: "Debes seleccionar un al menos UN INGREDIENTE", preferredStyle: .Alert)
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var tocino: UISwitch!
    @IBOutlet weak var aceitunas: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var anchoas: UISwitch!
    @IBOutlet weak var pina: UISwitch!
    
    @IBOutlet weak var textPrueba: UITextView!
    
    func ingred(){
    
        if (jamon.on){
            ing1="\nJamon"
        }else{
            ing1=""
        }
        
        if (pepperoni.on && ing1 == ""){
            ing2 = "Pepperoni"
        }else if(pepperoni.on){
            ing2 = "\nPepperoni"
        }else{
            ing2 = ""
        }
        
        if (salchicha.on && ing2 == ""){
            ing3 = "\nSalchicha"
        }else if(salchicha.on){
            ing3 = "\nSalchicha"
        }else{
            ing3 = ""
        }
        
        if (tocino.on && ing3 == ""){
            ing4 = "\nTocino"
        }else if(tocino.on){
            ing4 = "\nTocino"
        }else{
            ing4 = ""
        }
        
        if (aceitunas.on && ing4 == ""){
            ing5="\nAceitunas"
        }else if(aceitunas.on){
            ing5="\nAceitunas"
        }else {
            ing5 = ""
        }
        
        if (cebolla.on && ing5==""){
            ing6="\nCebolla"
        }else if (cebolla.on){
            ing6="\nCebolla"
        }else {
            ing6 = ""
        }
        
        if (pimiento.on && ing6==""){
            ing7="\nPimiento"
        }else if (pimiento.on){
            ing7="\nPimiento"
        }else{
            ing7=""
        }
        
        if (pavo.on && ing7==""){
            ing8="\nPavo"
        }else if(pavo.on){
            ing8="\nPavo"
        }else{
            ing8 = ""
        }
        
        if (anchoas.on && ing8 == ""){
            ing9="\nAnchoas"
        }else if(anchoas.on){
            ing9="\nAnchoas"
        }else{
            ing9=""
        }
        
        if (pina.on && ing9==""){
            ing10="\nPiña"
        }else if(pina.on){
            ing10="\nPiña"
        }else{
            ing10=""
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
    
    @IBAction func alertaIngredientes(sender: AnyObject) {
        if((jamon.on==false) && (pepperoni.on==false) && (salchicha.on==false) && (tocino.on==false) && (aceitunas.on==false) && (cebolla.on==false) && (pimiento.on==false) && (pavo.on==false) && (anchoas.on==false) && (pina.on==false)){
        
            presentViewController(alertView, animated: true, completion: nil)
            
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ordenVC = segue.destinationViewController as! ViewControllerOrden
        ordenVC.tamano = tamano
        ordenVC.masa = masa
        ingred()
        ordenVC.ing1 = ing1
        ordenVC.ing2 = ing2
        ordenVC.ing3 = ing3
        ordenVC.ing4 = ing4
        ordenVC.ing5 = ing5
        ordenVC.ing6 = ing6
        ordenVC.ing7 = ing7
        ordenVC.ing8 = ing8
        ordenVC.ing9 = ing9
        ordenVC.ing10 = ing10
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
