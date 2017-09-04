//
//  UserMO+CoreDataProperties.swift
//  CDBApp
//
//  Created by Shubhang Dixit on 04/09/17.
//  Copyright © 2017 Shubhang Dixit. All rights reserved.
//

import Foundation
import CoreData


extension UserMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserMO> {
        return NSFetchRequest<UserMO>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var userId: String?
    @NSManaged public var age: String?
    @NSManaged public var password: String?
    @NSManaged public var userType: String?
    @NSManaged public var relationship: NSOrderedSet?

}

// MARK: Generated accessors for relationship
extension UserMO {

    @objc(insertObject:inRelationshipAtIndex:)
    @NSManaged public func insertIntoRelationship(_ value: Article, at idx: Int)

    @objc(removeObjectFromRelationshipAtIndex:)
    @NSManaged public func removeFromRelationship(at idx: Int)

    @objc(insertRelationship:atIndexes:)
    @NSManaged public func insertIntoRelationship(_ values: [Article], at indexes: NSIndexSet)

    @objc(removeRelationshipAtIndexes:)
    @NSManaged public func removeFromRelationship(at indexes: NSIndexSet)

    @objc(replaceObjectInRelationshipAtIndex:withObject:)
    @NSManaged public func replaceRelationship(at idx: Int, with value: Article)

    @objc(replaceRelationshipAtIndexes:withRelationship:)
    @NSManaged public func replaceRelationship(at indexes: NSIndexSet, with values: [Article])

    @objc(addRelationshipObject:)
    @NSManaged public func addToRelationship(_ value: Article)

    @objc(removeRelationshipObject:)
    @NSManaged public func removeFromRelationship(_ value: Article)

    @objc(addRelationship:)
    @NSManaged public func addToRelationship(_ values: NSOrderedSet)

    @objc(removeRelationship:)
    @NSManaged public func removeFromRelationship(_ values: NSOrderedSet)

}
