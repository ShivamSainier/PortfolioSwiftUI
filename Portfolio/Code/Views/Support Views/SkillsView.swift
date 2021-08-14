//
//  SkillsView.swift
//  Portfolio
//
//  Created by Rohit Saini on 14/08/21.
//

import SwiftUI

struct SkillsView: View {
    
    //MARK:- Variables
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text("Skills")
                    .fontWeight(.bold)
                    .font(.title2)
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)){
                        showSkills.toggle()
                    }
                    
                } label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(self.showSkills ? .zero: .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())

            }
            if (showSkills){
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], alignment: .leading, spacing: 12){
                    ForEach(skills){skill in
                        SkillView(skill: skill, width: width / 3 - 15)
                    }
                }
                .padding(.top,38)
            }
           
        }
    }
}


