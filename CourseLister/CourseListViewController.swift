//
//  CourseListViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit

class CourseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var courseListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.courseListTableView.dataSource = self
        self.courseListTableView.delegate = self
        
        let nib = UINib(nibName: "CourseCell", bundle: NSBundle.mainBundle())
        self.courseListTableView.registerNib(nib, forCellReuseIdentifier: "COURSE_CELL")

    }

    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("COURSE_CELL", forIndexPath: indexPath) as UITableViewCell
        cell.backgroundColor = UIColor.redColor()
        return cell

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
}

