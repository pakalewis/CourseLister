//
//  SampleCourses.swift
//  CourseLister
//
//  Created by Parker Lewis on 3/24/15.
//  Copyright (c) 2015 Parker Lewis. All rights reserved.
//

import Foundation
import CoreData


class SampleCourses {
    
    var managedObjectContext : NSManagedObjectContext!
    
    init (context : NSManagedObjectContext) {
        self.managedObjectContext = context
    }

    func loadCourses() {
        let course01 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course01.courseTitle = "Functional Limitation Reporting"
        course01.courseDescription = "This course will focus on the Medicare G-codes and the mandated reporting of the patient's primary functional limitation receiving outpatient therapy services at the initial evaluation. Additional attention will given to the outset of a therapy episode of care, at least at every 10 visits, at the conclusion of a functional limitation, at the beginning of a new functional limitation, and at discharge. Scenarios that will be discussed include:\n1. Medicare beneficiaries who are unexpectedly discharged from the emergency room or observation status and then return to outpatient therapy for the same or different condition.\n2. A Medicare beneficiary who self discharges and then returns to the same organization within 60 calendar days of their last visit.\n3. A Medicare beneficiary who is being treated for one condition, but has multiple functional limitations.\n4. A Medicare beneficiary who has 2 conditions and is being treated by 2 different therapists of the same discipline in the same organization.\n5. A Medicare beneficiary who, while being treated for 1 condition and 1 functional limitation category, presents with a referral for a second condition that results in a different functional limitation category being selected than what was being reported on for the first condition."
        
        
        let course02 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course02.courseTitle = "Working with Dementia: Understanding Changes in Movement and Sensation"
        course02.courseDescription = "There are many changes in behavior, communication, and interactive ability that take place when someone is living with Dementia. Behaviors observed may appear strange, unusual, dangerous, or frustrating to others. This course is designed to help professionals better understand “why” things they see are happening and “how” behaviors are connected to an individual’s change in sensation, sensory processing, and motor skill abilities due to the onset, then worsening, of various Dementias. The goal of the course is to provide learners with explanation of behavioral response to what someone might ‘see, hear, smell, taste, or feel’ as well as helpful strategies for the purpose of applying this knowledge and modifying environments, cues, tasks, props, routines, or expectations for better outcomes and interactions for all involved."

        
        let course03 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course03.courseTitle = "Bringing Back Play"
        course03.courseDescription = "It is well established that play is the primary way young children learn and develop, but what happens when society’s view on play changes? Play trends and early development suffer when adults change the way they view play, change the environments children play in, and change materials children play with.\nIn this course, therapists will explore the changing culture of play in current society, including what factors have influenced this change, as well as the evolution of play, and the importance of play in 5 domains of child development (gross motor, fine motor, cognitive, social-emotional, and speech and language). Special attention will be given to sensory development and the role that play has in sensory regulation. With attention to purposeful play, the presenters will model pairing 3 detailed milestones in each of the 5 developmental domains (15 total examples), with hands on, easily reproducible, purposeful play activities that can be incorporated quickly into pediatric practice. The course covers practical strategies for choosing types of toys and materials to meet the goals of each stage of development, recommendations for play spaces, resources that support traditional, developmental play, and the role of the pediatric therapist in becoming an advocate for play."
        
        
        let course04 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course04.courseTitle = "Understanding the Events of Swallowing in Normal and Disordered Adults: A Research-Based Course"
        course04.courseDescription = "This course, with Dr. Ianessa Humbert, offers an in depth assessment of six important swallowing events: triggering the swallow, posterior lingual propulsion, velar elevation, pharyngeal constriction and elevation, laryngeal vestibule closure, and upper esophageal sphincter opening. For each swallowing event, normal and abnormal movements and/or sensation are described, and probing strategies are discussed (i.e. modifying the event with bolus volume, head position, swallowing maneuvers). The information presented is based in research literature, including full citations for further review. This course shows each swallowing event using a combination of representative video fluoroscopic studies and anatomical animations of each abnormal swallowing event."
        
        
        let course05 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course05.courseTitle = "Practical Voice Therapy Part A - Clinical Examination"
        course05.courseDescription = "This course, by Robert Grider, MS, CCC-SLP, incorporates ideas and strategies to help the busy clinical speech language pathologist effectively treat voice problems. The course focuses on manual assessment and vocal tract shaping strategies using speech sound production tasks. Concepts pertaining to the initial client interview, and a detailed examination of areas related to voice will be presented and demonstrated through a patient case study."
        
        
        let course06 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course06.courseTitle = "Update on Neuroscience Applications to Treatment of Cognitive Disorders"
        course06.courseDescription = "This course will review the current neuroscience on cognitive and communication disorders associated with traumatic head injury and early stage dementias. The course will stress clinical aspects of patient management. The focus of the second section will be a review and demonstration of cognitive assessments available for use by SLP's and other allied health professionals. The course will conclude with an overview of evidence-based interventions for attention, memory and executive function."
        
        
        let course07 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course07.courseTitle = "Neuroscience Updates for Right Hemisphere Stroke"
        course07.courseDescription = "This course will review the current neuroscience on cognitive and communication disorders associated with focal right hemisphere lesions in adults. The clinical emphasis of the course will begin with a review of symptoms associated with focal right hemisphere lesions including neglect, aprosodia, emotional processing, and visual spatial problems. The newer research from neuroscience on the role of the right hemisphere in neurocognitive processing will then be reviewed. The course will conclude with current theoretical explanations for the range of cognitive/communicative impairments seen after right CVA and an overview of therapeutic interventions."
        

        let course08 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course08.courseTitle = "Assessment and Treatment of Right Hemisphere Stroke Issues"
        course08.courseDescription = "This practical course will review and demonstrate currently available assessments for Right Hemisphere dysfunction in adults that are designed for use by SLP's and other allied health professionals. The course will then review and demonstrate a range of evidenced-based interventions for cognitive/communication impairments associated with right hemisphere dysfunction. Interventions for impairments of neglect will be reviewed and demonstrated. Evidence-based interventions for prosodic impairment will be summarized in detail. Interventions for other cognitive impairments will also be reviewed."

        
        let course09 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course09.courseTitle = "Aphasia Models"
        course09.courseDescription = "The purpose of this course is to provide a basic background and definition of aphasia, review the model upon which the classical aphasia syndromes originates, discuss how the classical syndromes might be lacking in terms of sensitivity and specificity of linguistic impairment, review a connectionist model of language, and learn how patient errors can aid in the development of a sensitive and specific treatment plan."

        
        let course10 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course10.courseTitle = "Practical Voice Therapy Part B - Objective Voice Therapy"
        course10.courseDescription = "This course, by Robert Grider, MS, CCC-SLP, outlines an objective pathway for the participant to help clients to feel, see, and hear what changes they can make in order to recover more normal voice using their speech production. Using the strategies in this course, the participant will be able to lead the voice client to a better resting state of the larynx and the vocal tract to relieve excessive pressure or tension. Objective therapy tools for difficult voice and speech production problems will be described and demonstrated. "

        let course11 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course11.courseTitle = "Dysphagia and Cognitive Impairment, Part 1 - Normal Aging and the Role of Dementia, Delirium, and Mental Illness"
        course11.courseDescription = "Clinicians are regularly faced with the challenge of managing swallowing disorders in elderly individuals with impaired cognition. This course will review the medical consequences of aging, including frailty and sarcopenia, and will discuss the impact of cognitive impairment on swallowing functions. Dementia, delirium and cognitive impairment secondary to mental illness will be discussed and the impact of these impairments on the diagnosis and management of individuals with dysphagia will be outlined."

        let course12 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course12.courseTitle = "Dysphagia and Cognitive Impairment, Part 2 - Intervention and End of Life Issues"
        course12.courseDescription = "Individuals with cognitive impairment present specific challenges to the dysphagia clinician. This course will provide participants with strategies for implementation of effective management plans to address dysphagia in the context of dementia, delirium and/or mental illness. Suggestions for management of the feeding environment, diet modifications, medication administration, and oral care will be provided. Strategies for management of care-resistive behaviors, guidance for the management of practical, legal, and ethical issues at end of life will also be provided."

        let course13 = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.managedObjectContext!) as Course
        course13.courseTitle = "Practical Voice Therapy Part C - Vowel Shaping for Voice"
        course13.courseDescription = "In this course the participant will explore the use of vowel shaping to help clients develop control of voice production. These techniques are useful in working with clients who need voice therapy to recover from voice loss, weakness, or dysphonia. These tasks are also helpful for the client who wants to improve either singing or speaking skills. While the vowels, diphthongs and blends will be particular to American English, the movements and patterns may be adapted to vowels common in other languages or cultures."

        
        var error : NSError?
        self.managedObjectContext?.save(&error)
        
        if error != nil {
            println("There was an error saving to core data: \(error!.localizedDescription)")
        }

    }
    
    

}