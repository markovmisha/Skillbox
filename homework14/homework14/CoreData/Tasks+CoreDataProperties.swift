//
//  Tasks+CoreDataProperties.swift
//  
//
//  Created by Serg Fedotov on 11.04.2020.
//
//

import Foundation
import CoreData

extension Tasks {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tasks> {
        return NSFetchRequest<Tasks>(entityName: "Tasks")
    }

    @NSManaged public var text: String?
    @NSManaged public var date: String?
    @NSManaged public var name: String?

}
