//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Rohit Saini on 14/08/21.
//

import SwiftUI

struct ExperienceView: View {
    
    //MARK:- Variables
    var experience: Experience
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width:3)
                    .padding(.leading,3)
                VStack(alignment:.leading){
                    Text(experience.role)
                        .font(.headline)
                    Text(experience.companyName)
                        .font(.subheadline)
                        .opacity(0.75)
                        .padding(.top,4)
                    Text(experience.duration)
                        .font(.footnote)
                }.padding(.leading,16)
            }
            .padding(.top,8)
        }.fixedSize()
    }
}


