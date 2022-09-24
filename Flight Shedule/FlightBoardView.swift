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

            // foreach перебирает массив и на основе каждого элеменита массива создает элементы интерфейса  ForEach(flightInfo, id: \.self) { flight in - если класс не подписано под проторкол Identifible.
            
//            ScrollView([.horizontal, .vertical]) {
//                ForEach(flightInfo) { flight in
        List(flightInfo) { flight in
            //            Text("\(flight.airline) \(flight.number)")
            //            Text("\(flight.flightStatus )")
            //это наша строка в расписании
            NavigationLink(destination: FlightDetailsView(flight: flight)) {
                FlightRowView(flight: flight)
            }
        
            
            //                }
        }
        
        .navigationTitle(boardName)
        .listStyle(.sidebar)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Arrival", flightInfo: FlightInformation.generateFlights())
    }
}
