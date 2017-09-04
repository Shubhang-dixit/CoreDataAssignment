//
//  UserInputViewController.swift
//  CDBApp
//
//  Created by Shubhang Dixit on 04/09/17.
//  Copyright © 2017 Shubhang Dixit. All rights reserved.
//

import UIKit
import CoreData

class UserInputViewController: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    
    @IBOutlet weak var typeField: UITextField!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var passwordd: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = UIPickerView()
        
        pickerView.delegate = self
        
        typeField.inputView = pickerView
        
        //Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addButton(_ sender: Any) {
        
        createUser()
            
            
            
        
        

    
    }
    private func createUser() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.newBackgroundContext()
        
        context.perform {
            let userEntity: UserMO = NSEntityDescription.insertNewObject(forEntityName: "User", into: context) as! UserMO
            
           userEntity.name = self.name.text
            userEntity.age = self.age.text
            userEntity.userId = self.username.text
            userEntity.password = self.passwordd.text
            userEntity.userType = self.typeField.text
            do {
                try context.save()
            }
            catch let error {
                print(error)
            }
        }
    }

    
    
    //  @IBOutlet weak var dropDown: UIPickerView!
    let myPickerData = [String](arrayLiteral: "Reader","Reporter","Blogger","Administrator")
    
 
    
   
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        typeField.text = myPickerData[row]
    }
   
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


