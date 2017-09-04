//
//  Article+CoreDataProperties.swift
//  CDBApp
//
//  Created by Shubhang Dixit on 04/09/17.
//  Copyright © 2017 Shubhang Dixit. All rights reserved.
//

import Foundation
import CoreData


extension Article {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article")
    }

    @NSManaged public var title: String?
    @NSManaged public var content: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var type: Int16
    @NSManaged public var points: String?
    @NSManaged public var reporter: String?
    @NSManaged public var blogger: String?
    @NSManaged public var read: Int32

}
