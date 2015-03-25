//
//  CourseDetailViewController.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var course : Course?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = self.course?.courseTitle
        self.descriptionTextView.text = self.course?.courseDescription

    }
}
