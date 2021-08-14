//
//  AppModel.swift
//  Portfolio
//
//  Created by Rohit Saini on 14/08/21.
//

import Foundation

class AppModel: ObservableObject{
    var portfolio: Portfolio = Portfolio(name: "Rohit Saini", role: "Software Engineer", description: "Just committed to improve day by day and learn from everything so that i can calculate my self on daliy basis to do better then yesterday", location: "Kurukshetra", skills: [Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),Skill(id: UUID().uuidString, skillName: "Swift5", image: "swift"),Skill(id: UUID().uuidString, skillName: "Watch OS", image: "applewatch"),Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays")], experiences: [Experience(id: UUID().uuidString, companyName: "LambdaTest", role: "Senior Software Engineer", duration: "May 2021 - Present"),Experience(id: UUID().uuidString, companyName: "AppKnit", role: "Senior iOS Developer", duration: "Aug 2018 - May 2021"),Experience(id: UUID().uuidString, companyName: "Visions", role: "iOS Developer", duration: "July 2017 - Mar 2018")])
}
