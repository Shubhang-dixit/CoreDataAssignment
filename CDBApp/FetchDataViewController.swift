//
//  FetchDataViewController.swift
//  CDBApp
//
//  Created by Shubhang Dixit on 04/09/17.
//  Copyright © 2017 Shubhang Dixit. All rights reserved.
//

import UIKit
import CoreData

class FetchDataViewController: UIViewController {

    @IBOutlet weak var dataTextView: UITextView!
    var textBuffer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func getDataButton(_ sender: Any) {
    }
    
    func fetchData() {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let request = NSFetchRequest<UserMO>(entityName: "User")
    let predicate = NSPredicate(format: "name CONTAINS[cd] %@", "name")
    let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
    
    request.predicate = predicate
    request.sortDescriptors = [sortDescriptor]
    
    do {
    let objects = try context.fetch(request)
    
    print(objects)
    for item in objects {
     textBuffer += item.name!
        textBuffer += "\t"
     textBuffer += item.age!
        
        textBuffer += item.userType!
        textBuffer += "\t"
        textBuffer += item.userId!
        textBuffer += "\n"
        
        
    }
    }
    catch {
    
    }
     dataTextView.text = textBuffer
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
