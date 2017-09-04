//
//  ArticleInputViewController.swift
//  CDBApp
//
//  Created by Shubhang Dixit on 04/09/17.
//  Copyright © 2017 Shubhang Dixit. All rights reserved.
//

import UIKit
import CoreData

class ArticleInputViewController: UIViewController {

    @IBOutlet weak var articleName: UITextField!
    
    @IBOutlet weak var reporterName: UITextField!
    
    @IBOutlet weak var bloggerName: UITextField!
    
    @IBOutlet weak var articleDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        
        
        
    }
    
    private func createArticle() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.newBackgroundContext()
        
        context.perform {
            let articleEntity: Article = NSEntityDescription.insertNewObject(forEntityName: "Article", into: context) as! Article
            
         articleEntity.title = self.articleName.text
         articleEntity.date = self.articleDate.date as NSDate
        articleEntity.blogger = self.bloggerName.text
            articleEntity.reporter = self.reporterName.text
            articleEntity.read = 0
            articleEntity.type = 1
            
            
            
            do {
                try context.save()
            }
            catch let error {
                print(error)
            }
        }
    }
}
