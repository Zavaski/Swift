//
//  MovimentViewController.swift
//  bjj
//
//  Created by Student on 29/06/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class MovimentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var table: UITableView?
   

    
    
    
    var begginersViaSegue: [bas] = [bas]()
    var intersViaSegue: [inter] = [inter]()
    var advsViaSegue: [adv] = [adv]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.table!.delegate = self
        self.table!.dataSource = self
    }


    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            var returnValue = 0
            if(begginersViaSegue.count > 0){
                returnValue = begginersViaSegue.count
            }
            else if(intersViaSegue.count > 0){
                returnValue = intersViaSegue.count
            }else if(advsViaSegue.count > 0){
                    returnValue = advsViaSegue.count
            }
            return returnValue
        }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCellID", forIndexPath: indexPath)
            
            if(begginersViaSegue.count > 0){
              myCell.textLabel?.text = begginersViaSegue[indexPath.row].movimento
            }
            else if(intersViaSegue.count > 0){
                myCell.textLabel?.text = intersViaSegue[indexPath.row].movimento
            }else if(advsViaSegue.count > 0){
                myCell.textLabel?.text = advsViaSegue[indexPath.row].movimento
            }

            
            return myCell
        }
        
    
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "SendDataSegueFinally" {
                if let destination = segue.destinationViewController as? FinallyViewController {
                    
                    
                    let path = table?.indexPathForSelectedRow
                    if(begginersViaSegue.count > 0){
                        destination.categoriaViaSegue = begginersViaSegue[path!.row].categoria
                        destination.movimentoViaSegue = begginersViaSegue[path!.row].movimento
                    }
                    else if(intersViaSegue.count > 0){
                        destination.categoriaViaSegue = intersViaSegue[path!.row].categoria
                        destination.movimentoViaSegue = intersViaSegue[path!.row].movimento
                    }else if(advsViaSegue.count > 0){
                        destination.categoriaViaSegue = advsViaSegue[path!.row].categoria
                        destination.movimentoViaSegue = advsViaSegue[path!.row].movimento
                    }

                    
                    
                    /*  switch(table?.allowsSelection)
                    {
case 0:
                        let path = table?.indexPathForSelectedRow
                        destination.categoriaViaSegue = begginersViaSegue[path!.row].categoria
                        destination.movimentoViaSegue = begginersViaSegue[path!.row].movimento
                        break
                    case 1:
                        let path = table?.indexPathForSelectedRow
                        destination.categoriaViaSegue = intersViaSegue[path!.row].categoria
                        destination.movimentoViaSegue = intersViaSegue[path!.row].movimento
                        break
                        
                    case 2:
                        let path = table?.indexPathForSelectedRow
                        destination.categoriaViaSegue = advsViaSegue[path!.row].categoria
                        destination.movimentoViaSegue = advsViaSegue[path!.row].movimento
                        
                        break
                        
                    default:
                        break
                        
                    }
                    */
                    
                    
                    
                }
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
}
