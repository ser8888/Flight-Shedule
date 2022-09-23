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
      
        VStack {
            Text(boardName)
                .font(.title)
            // fireach перебирает массив и на основе каждого элеменита массива создает элементы интерфейса  ForEach(flightInfo, id: \.self) { flight in - если класс не подписано под проторкол Identifible.
            
            ForEach(flightInfo) { flight in
                Text("\(flight.airline) \(flight.number)")
            }
            
        }
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Arrival", flightInfo: FlightInformation.generateFlights())
    }
}
