//
//  ViewController.swift
//  bjj
//
//  Created by Student on 27/06/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var begginers: [bas] = [bas]()
    var inters: [inter] = [inter]()
    var advs: [adv] = [adv]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let basic1 = bas(categoria: "Guard basic", movimento: "armlock", img: "teste")
        let basic2 = bas(categoria: "Guard", movimento: "armlock", img: "teste")
        let basic3 = bas(categoria: "Guard", movimento: "armlock", img: "teste")
        
        begginers.append(basic1)
        begginers.append(basic2)
        begginers.append(basic3)
        
        let inter1 = inter(categoria: "Guard inter", movimento: "armlock", img: "teste")
        let inter2 = inter(categoria: "Guard", movimento: "armlock", img: "teste")
        let inter3 = inter(categoria: "Guard", movimento: "armlock", img: "teste")
        
        inters.append(inter1)
        inters.append(inter2)
        inters.append(inter3)
        
      
        let adv1 = adv(categoria: "Guard advr", movimento: "armlock", img: "teste")
        let adv2 = adv(categoria: "Guard", movimento: "armlock", img: "teste")
        let adv3 = adv(categoria: "Guard", movimento: "armlock", img: "teste")
        
        advs.append(adv1)
        advs.append(adv2)
        advs.append(adv3)

        
        self.table!.delegate = self
        self.table!.dataSource = self
    }
    

    
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var table: UITableView?
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnValue = 0
        
        switch(mySegmentedControl.selectedSegmentIndex)
        {
        case 0:
            //returnValue = beginners.count
            returnValue = begginers.count
            break
        case 1:
            returnValue = inters.count
            break
            
        case 2:
            returnValue = advs.count
            break
            
        default:
            break
            
        }
        return returnValue
    }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            let myCell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
          
            switch(mySegmentedControl.selectedSegmentIndex)
            {
            case 0:
                myCell.textLabel?.text = begginers[indexPath.row].categoria

                break
            case 1:
                myCell.textLabel?.text = inters[indexPath.row].categoria
                break
                
            case 2:
                myCell.textLabel?.text = advs[indexPath.row].categoria
                break
                
            default:
                break
                
            }
            
            return myCell
        }
        
    
    @IBAction func mySegementedControlAction(sender: UISegmentedControl) {
       
        if let tb = self.table {
            tb.reloadData()
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SendDataSegue" {
            if let destination = segue.destinationViewController as? MovimentViewController {
                
                switch(mySegmentedControl.selectedSegmentIndex)
                {
                case 0:
                    //linha selecionada
                    //let path = table?.indexPathForSelectedRow
                    destination.begginersViaSegue = begginers
                    break
                case 1:
                    //let path = table?.indexPathForSelectedRow
                    destination.intersViaSegue = inters
                    break
                    
                case 2:
                    //let path = table?.indexPathForSelectedRow
                    destination.advsViaSegue = advs
                    
                    break
                    
                default:
                    break
                    
                }

                
                
                
            }
        }
    //override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      //  super.prepareForSegue(segue, sender: sender)
        
      //  let index: Int = table?.indexPathForSelectedRow?.row
        
       // let dx = segue.destinationViewController as!
        
        //dx.
        
    }
}

