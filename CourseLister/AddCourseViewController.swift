//
//  AddCourseViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit
import CoreData

class AddCourseViewController: UIViewController {

    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var descriptionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleTextView.layer.borderColor = UIColor.blackColor().CGColor
        self.titleTextView.layer.borderWidth = 2
        self.descriptionTextView.layer.borderColor = UIColor.blackColor().CGColor
        self.descriptionTextView.layer.borderWidth = 2
        
        
        self.navigationItem.leftBarButtonItem?.title = "Cancel"
    }
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        
        if self.titleTextView.text.isEmpty || self.descriptionTextView.text.isEmpty {
            println("no text")
            
        } else {
            let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
            let managedObjectContext = appDelegate.managedObjectContext!
            
            let newCourse = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: managedObjectContext) as Course
            newCourse.courseTitle = self.titleTextView.text
            newCourse.courseDescription = self.descriptionTextView.text
            
            var error : NSError?
            managedObjectContext.save(&error)
            
            if error != nil {
                println("There was an error saving to core data: \(error!.localizedDescription)")
            }
        }
    }

    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
