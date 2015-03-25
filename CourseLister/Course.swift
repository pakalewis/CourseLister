//
//  Course.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit
import CoreData

class Course: NSManagedObject {
   
    @NSManaged var courseTitle: String
    @NSManaged var courseDescription: String

    
    
}
