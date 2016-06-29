//
//  ViewController.swift
//  bjj
//
//  Created by Student on 27/06/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit


struct begginer
{
    
    var categoria: String!
    var movimento: String!
    var img: String!
    
    init(categoria: String, movimento: String, img: String)
    {
        self.categoria = categoria
        self.movimento = movimento
        self.img = img
    }
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var begginers: [begginer] = [begginer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let basic1 = begginer(categoria: "Guard", movimento: "armlock", img: "teste")
        
        let basic2 = begginer(categoria: "Guard", movimento: "armlock", img: "teste")
        
        let basic3 = begginer(categoria: "Guard", movimento: "armlock", img: "teste")
        
        begginers.append(basic1)
        begginers.append(basic2)
        begginers.append(basic3)
        
        self.table!.delegate = self
        self.table!.dataSource = self
    }
    

    
    
    let basicList:[String] = ["Private item 1", "Private item 2"]
    let intermediateList:[String] = ["Friend item1","Friend item 2", "Friend item 3"]
    let advancedList:[String] = ["Public item 1", "Public item 2","Public item 3", "Public item 4"]
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
            returnValue = intermediateList.count
            break
            
        case 2:
            returnValue = advancedList.count
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
                myCell.textLabel?.text = intermediateList[indexPath.row]
                break
                
            case 2:
                myCell.textLabel?.text = advancedList[indexPath.row]
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
                    let path = table?.indexPathForSelectedRow
                    destination.viaSegue = basicList[path!.row]
                    break
                case 1:
                    let path = table?.indexPathForSelectedRow
                    destination.viaSegue = intermediateList[path!.row]
                    break
                    
                case 2:
                    let path = table?.indexPathForSelectedRow
                    destination.viaSegue = advancedList[path!.row]
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

