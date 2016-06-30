//
//  FinallyViewController.swift
//  bjj
//
//  Created by Student on 6/30/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class FinallyViewController: UIViewController {
    @IBOutlet weak var categoriaTextField: UILabel!

    @IBOutlet weak var imgTextField: UIImageView!
    @IBOutlet weak var movimentoTextField: UILabel!
    
    var categoriaViaSegue = ""
    var movimentoViaSegue = ""
    var imagemViaSegue = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriaTextField.text = categoriaViaSegue
        movimentoTextField.text = movimentoViaSegue
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
