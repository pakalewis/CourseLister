//
//  CourseListViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit
import CoreData

class CourseListViewController: UIViewController, UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var courseListTableView: UITableView!
    var courses : [Course] = [Course]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.delegate = self
        self.automaticallyAdjustsScrollViewInsets = false;

        self.courseListTableView.dataSource = self
        self.courseListTableView.delegate = self
        
        let nib = UINib(nibName: "CourseCell", bundle: NSBundle.mainBundle())
        self.courseListTableView.registerNib(nib, forCellReuseIdentifier: "COURSE_CELL")

        
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedObjectContext = appDelegate.managedObjectContext!
        let sampleCourses = SampleCourses(context: managedObjectContext)
        
        var fetchRequest = NSFetchRequest(entityName: "Course")
        var sortDescriptor = NSSortDescriptor(key: "courseTitle", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        var fetchResult = managedObjectContext.executeFetchRequest(fetchRequest, error: nil)
        if fetchResult?.count == 0 {
            // Nothing found in CoreData so load in the sample courses
            sampleCourses.loadCourses()
            // populate array with the fetch result
            fetchResult = managedObjectContext.executeFetchRequest(fetchRequest, error: nil)
            self.courses = fetchResult as [Course]
        } else {
            self.courses = fetchResult as [Course]
        }

        
    }

    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("COURSE_CELL", forIndexPath: indexPath) as CourseCell
        cell.titleLabel.text = self.courses[indexPath.row].courseTitle
        cell.descriptionLabel.text = self.courses[indexPath.row].courseDescription
        return cell

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.courses.count
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("COURSE_DETAIL") as CourseDetailViewController
        detailVC.course = self.courses[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        // This is a magic number for convenience. Should change depending on device or if cells will be different heights.
        return 120
    }
}

