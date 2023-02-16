//
//  StudentListModel.swift
//  logIn
//
//  Created by Thinkwik 27 on 10/01/23.
//

import Foundation
import UIKit

struct studentList: Codable {
    
    var studentName: String?
    var studentImage: String?
    var studentSemester: String?
    var studentDepartment: String?
    
    
}

struct stdListAdmin: Codable{
    
    var studentFName: String?
    var studentSem: String?
    var studentImageAdmin: String?
    var studentDeptAdmin: String?
}

struct studentResult: Codable{
    
    var subjectName: String?
    var subjectMarks: String?
}

struct studentNotification : Codable{
    
    var studentNotificationImage: String?
    var studentNotificationTitle: String?
    var studentNotificationBrief: String?
}

struct FaQ : Codable{
    
    var stdQue : String?
    var stdAns : String?
    
}

struct eventCheck : Codable {
    
    var eventTitle : String?
    var eventDate : String?
}

struct faqCheck : Codable{
    
    var que : String?
    
}

struct feedback : Codable
{
    
    var title : String?
}
struct attendanceCheck : Codable
{
    var subject : String?
    var lecDone : String?
    var lecAttend : String?
}

struct assignmentCheck : Codable
{
    var assignTitle : String?
    var assignDate : String?
}

struct assignmentAssigned : Codable
{
    var aTitle : String?
    var aDate : String?
}

struct assignmentDone : Codable
{
    var aDoneTitle : String?
    
}

struct noticeCheck : Codable
{
    var noticeTitle : String?
    var noticeimage : String?
    
}
struct showAllCheck : Codable
{
    var noticeTitle : String?
    var noticeImage : String?
}



