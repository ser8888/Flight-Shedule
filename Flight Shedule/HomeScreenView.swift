//
//  HomeScreenView.swift
//  Flight Shedule
//
//  Created by John Doe on 22/09/2022.
//

import SwiftUI

struct HomeScreenView: View {
    //массив полетов
 
    
    
    var body: some View {
        Image(systemName: "airplane")
            .resizable()
            .frame(width: 250, height: 250)
            .opacity(0.1)
            .rotationEffect(.degrees(270))
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
