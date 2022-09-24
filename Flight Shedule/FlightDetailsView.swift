//
//  FlightDetailsView.swift
//  Flight Shedule
//
//  Created by John Doe on 23/09/2022.
//

import SwiftUI

struct FlightDetailsView: View {
    // при переходе в детали - нам надо выбрать жкземпляр выбранный и передать сюда
    let flight: FlightInformation
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .font(.largeTitle)
                Spacer()
                Button("Done") {
                    
                }
                
            }
            Text("\(flight.direction == .arrival ? "From" : "To" ) \(flight.otherAirport)")
            Text(flight.flightStatus)
                .foregroundColor(Color(flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
        .navigationTitle("Flight Information")
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView(flight: FlightInformation.generateFlight())
    }
}
