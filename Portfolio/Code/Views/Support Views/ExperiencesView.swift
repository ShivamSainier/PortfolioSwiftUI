//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by Rohit Saini on 14/08/21.
//

import SwiftUI

struct ExperiencesView: View {
    
    //MARK:- Varibale
    
    var experiences: [Experience]
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment:.leading,spacing: 24){
            HStack{
                Text("Experiences")
                    .fontWeight(.bold)
                    .font(.title2)
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)){
                        showExperiences.toggle()
                    }
                    
                } label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(self.showExperiences ? .zero: .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())

            }
            .padding(.bottom,14)
            if (showExperiences){
                
                ForEach(experiences){exp in
                    ExperienceView(experience: exp)
                }
                
                
            }
            
        }
    }
}


