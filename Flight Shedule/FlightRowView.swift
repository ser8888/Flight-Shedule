//
//  FlightRowView.swift
//  Flight Shedule
//
//  Created by John Doe on 23/09/2022.
//

import SwiftUI

struct FlightRowView: View {
    //свойство для открытия детального экрана
    @State private var isPresented = false
    //сюда передпем flight из List
    let flight: FlightInformation
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .frame(width:120, alignment: .leading)
                Text(flight.otherAirport)
                    .frame(alignment: .leading)
                Spacer()
                Text(flight.flightStatus)
                    .frame(alignment: .trailing)
            }
            //для открытия молального окна
            .sheet(isPresented: $isPresented) {
                FlightDetailsView(isPresented: $isPresented, flight: flight)
        }
        }
    }
}

struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}
