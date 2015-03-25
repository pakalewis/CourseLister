//
//  CourseDetailViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit
import CoreData
class CourseDetailViewController: UIViewController {

    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var titleHeightConstraint: NSLayoutConstraint!
    var course : Course?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleTextView.text = self.course?.courseTitle
        self.descriptionTextView.text = self.course?.courseDescription

        println("\(self.course?.courseTitle)")
        println("\(self.titleTextView.text)")

        self.titleTextView.editable = false
        self.descriptionTextView.editable = false
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem()

    }

    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // This sizes the height of the title textView to fit the content.
        // Some layout issues occur when the number of lines of text changes
        self.titleHeightConstraint.constant = self.titleTextView.sizeThatFits(CGSizeMake(self.titleTextView.frame.size.width, CGFloat.max)).height
    }

    
    // This gets called with the edit/done button is pressed
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        if editing {
            // Switch to editing mode
            self.titleTextView.editable = true
            self.descriptionTextView.editable = true
            
        } else {
            // First check if the edits are valid
            let whiteSpace = NSCharacterSet.whitespaceAndNewlineCharacterSet()
            if countElements(self.titleTextView.text.stringByTrimmingCharactersInSet(whiteSpace)) == 0 || countElements(self.descriptionTextView.text.stringByTrimmingCharactersInSet(whiteSpace)) == 0 {
                let alertController = UIAlertController(title: "Please fill in both the course title and description", message: "", preferredStyle: UIAlertControllerStyle.Alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
                alertController.addAction(okAction)
                self.presentViewController(alertController, animated: true, completion: nil)
            } else {
                // Edits are valid. Disable editing mode and save the changes
                self.titleTextView.editable = false
                self.descriptionTextView.editable = false
                
                let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
                let managedObjectContext = appDelegate.managedObjectContext!
                var fetchRequest = NSFetchRequest(entityName: "Course")
                fetchRequest.predicate = NSPredicate(format: "courseTitle = %@", self.course!.courseTitle)
                if let fetchResult = managedObjectContext.executeFetchRequest(fetchRequest, error: nil) as? [Course] {
                    if fetchResult.count != 0 {
                        var courseToEdit = fetchResult[0]
                        courseToEdit.setValue(self.titleTextView.text, forKey: "courseTitle")
                        courseToEdit.setValue(self.descriptionTextView.text, forKey: "courseDescription")
                        managedObjectContext.save(nil)
                    }
                }
            }
        }
    }
    
}
