//
//  CourseListViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit

class CourseListViewController: UIViewController, UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var courseListTableView: UITableView!
    let sampleCourses = SampleCourses()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.delegate = self
        self.automaticallyAdjustsScrollViewInsets = false;

        self.courseListTableView.dataSource = self
        self.courseListTableView.delegate = self
        
        let nib = UINib(nibName: "CourseCell", bundle: NSBundle.mainBundle())
        self.courseListTableView.registerNib(nib, forCellReuseIdentifier: "COURSE_CELL")

    }

    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("COURSE_CELL", forIndexPath: indexPath) as CourseCell
        cell.titleLabel.text = self.sampleCourses.titles[indexPath.row]
        cell.descriptionLabel.text = self.sampleCourses.descriptions[indexPath.row]
//        cell.backgroundColor = UIColor.lightGrayColor()
        return cell

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sampleCourses.titles.count
    }
    
}

