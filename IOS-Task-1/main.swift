//
//  main.swift
//  IOS-Task-1
//
//  Created by Maor Eini on 29/11/2016.
//  Copyright © 2016 Maor Eini. All rights reserved.
//

import Foundation

var studentdb = StudentDB.sharedInstance
let a = Student(id:"20", fName:"Cohan", iName:"Moshe", phoneNum:"1251265", degree:"None")
let b = Student(id:"30", fName:"Cohan", iName:"mashmash", phoneNum:"1251265", degree:"None")


studentdb.addStudent(student: a)
studentdb.addStudent(student: b)

studentdb.printDB()

print("Hello, World!")

