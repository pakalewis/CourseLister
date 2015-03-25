//
//  AddCourseViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit
import CoreData

class AddCourseViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var descriptionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleTextView.delegate = self
        self.descriptionTextView.delegate = self
        
        self.titleTextView.layer.borderColor = UIColor.blackColor().CGColor
        self.titleTextView.layer.borderWidth = 2
        self.descriptionTextView.layer.borderColor = UIColor.blackColor().CGColor
        self.descriptionTextView.layer.borderWidth = 2
        
        
        self.navigationItem.leftBarButtonItem?.title = "Cancel"
    }
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        // Check if either text is blank
        let whiteSpace = NSCharacterSet.whitespaceAndNewlineCharacterSet()
        if countElements(self.titleTextView.text.stringByTrimmingCharactersInSet(whiteSpace)) == 0 || countElements(self.descriptionTextView.text.stringByTrimmingCharactersInSet(whiteSpace)) == 0 {

            let alertController = UIAlertController(title: "Please fill in both the course title and description", message: "", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alertController.addAction(okAction)
            self.presentViewController(alertController, animated: true, completion: nil)
            
        } else {
            // Check to see if title is unique. If so, save course in CoreData and dismiss the view
            let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
            let managedObjectContext = appDelegate.managedObjectContext!
            var fetchRequest = NSFetchRequest(entityName: "Course")
            fetchRequest.predicate = NSPredicate(format: "courseTitle = %@", self.titleTextView.text)
            if let fetchResult = managedObjectContext.executeFetchRequest(fetchRequest, error: nil) as? [Course] {
                if fetchResult.count != 0 { // Already a course with this title
                    let alertController = UIAlertController(title: "There is already a course with this title", message: "", preferredStyle: UIAlertControllerStyle.Alert)
                    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
                    alertController.addAction(okAction)
                    self.presentViewController(alertController, animated: true, completion: nil)

                } else { // Save new course
                    let newCourse = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: managedObjectContext) as Course
                    newCourse.courseTitle = self.titleTextView.text
                    newCourse.courseDescription = self.descriptionTextView.text
                    
                    managedObjectContext.save(nil)
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
            }
        }
    }

    
    // These two funcs remove or add the placeholder text if necessary
    func textViewDidBeginEditing(textView: UITextView) {
        if (textView == self.titleTextView && textView.text == "Enter course title") || (textView == self.descriptionTextView && textView.text == "Enter course description") {
            textView.text = ""
            textView.textColor = UIColor.blackColor()
        }
        textView.becomeFirstResponder()
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        if textView.text == "" {
            if textView == self.titleTextView {
                textView.text = "Enter course title"
                textView.textColor = UIColor.lightGrayColor()
            } else {
                textView.text = "Enter course description"
                textView.textColor = UIColor.lightGrayColor()
            }
        }
        textView.resignFirstResponder()
    }
    
    
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
