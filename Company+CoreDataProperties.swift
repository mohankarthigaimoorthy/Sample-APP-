//
//  Company+CoreDataProperties.swift
//  dataCore
//
//  Created by Mohan K on 13/03/23.
//
//

import Foundation
import CoreData


extension Company {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Company> {
        return NSFetchRequest<Company>(entityName: "Company")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: Int16
    @NSManaged public var location: String?
    @NSManaged public var shift: String?

}

extension Company : Identifiable {

}
