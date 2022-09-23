//
//  FlightBoardView.swift
//  Flight Shedule
//
//  Created by John Doe on 22/09/2022.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    //обьявляем массив,чтобы передать данные из основного экрана
    let flightInfo: [FlightInformation]
    
    
    var body: some View {
        Text(boardName)
            .font(.title)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Arrival", flightInfo: FlightInformation.generateFlights())
    }
}
