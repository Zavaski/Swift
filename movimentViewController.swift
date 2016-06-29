//
//  MovimentViewController.swift
//  bjj
//
//  Created by Student on 29/06/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class MovimentViewController: UIViewController {

    @IBOutlet weak var movimentoSegue: UILabel!
    @IBOutlet weak var categoriaSegue: UILabel!
    var viaSegue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriaSegue.text = viaSegue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
