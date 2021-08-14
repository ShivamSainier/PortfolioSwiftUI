//
//  HeaderView.swift
//  Portfolio
//
//  Created by Rohit Saini on 14/08/21.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK:- Variables
    var appModel:AppModel
    
    // MARK:- Views
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image("self")
                    .resizable()
                    .frame(width:100,height: 100)
                    .cornerRadius(50)
                    .padding(5)
                    .background(
                        Circle()
                            .opacity(0.7)
                            .shadow(radius: 5)
                    )
                Spacer()
            }
            
            Text(appModel.portfolio.name)
                .fontWeight(.bold)
                .font(.title)
                .padding(.top,8)
            Text(appModel.portfolio.role)
                .fontWeight(.medium)
                .font(.title2)
                .padding(.top, -5)
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appModel.portfolio.location)
                    .fontWeight(.medium)
            }
            .padding(.top,10)
            .opacity(0.7)
            
            Text(appModel.portfolio.description)
                .font(.callout)
                .opacity(0.7)
                .padding(.top,24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
    }
}
