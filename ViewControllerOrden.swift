//
//  ViewControllerOrden.swift
//  Pizza
//
//  Created by Alejandro Alvarez on 11/15/15.
//  Copyright © 2015 Alejandro Alvarez. All rights reserved.
//

import UIKit

class ViewControllerOrden: UIViewController {
    
    var tamano : String = ""
    var masa : String = ""
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

    let alertView = UIAlertController(title: "FELICITACIONES!!!", message: "TU ORDEN HA SIDO ENVIADA A LA COCINA", preferredStyle: .Alert)
    
    @IBOutlet weak var tamanoPantalla: UILabel!
    @IBOutlet weak var masaPantalla: UILabel!
    @IBOutlet weak var listaIngredientes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        tamanoPantalla.text = tamano
        masaPantalla.text = masa
        listaIngredientes.text = ing1 + ing2 + ing3 + ing4 + ing5 + ing6 + ing7 + ing8 + ing9 + ing10
    }
    
    
    
    @IBAction func enviarOrden(sender: AnyObject) {
        presentViewController(alertView, animated: true, completion: nil)
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
