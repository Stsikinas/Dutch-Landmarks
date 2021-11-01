//
//  DetailView.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 1/11/21.
//

import SwiftUI

struct TicketDetail: View {
    var ticket: Ticket
    
    var body: some View {
        return VStack {
            Image("Ticket")
                .frame(height: 150
                )
            HStack {
                Text("Discount")
                    .font(.subheadline)
                Image(systemName: ticket.discount ? "checkmark.circle.fill" : "xmark.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(ticket.discount ? .green : .red)
            }
        }
    }
}

struct TicketDetail_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetail(ticket: ModelData().tickets[0])
        TicketDetail(ticket: ModelData().tickets[1])
    }
}
