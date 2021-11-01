/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view displaying information about a hike, including an elevation graph.
*/

import SwiftUI

extension AnyTransition {
    static var showAndFade: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        // Provide different in/out animation
        return asymmetric(insertion: insertion, removal: removal)
    }
}

struct TicketView: View {
    var ticket: Ticket
    @State private var showDetail = false

    var body: some View {
        VStack {
            HStack {
                ModelData().landmarks.first(where: { $0.id == ticket.id})?.image
                    .resizable()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    Text(ticket.name)
                        .font(.headline)
                    Text(ticket.priceText)
                }

                Spacer()

                Button(action: {
                    withAnimation {
                        self.showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.25 : 1)
                        .padding()
                }
            }

            if showDetail {
                TicketDetail(ticket: ticket)
                // Transition to show the detail view
                    .transition(.showAndFade)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TicketView(ticket: ModelData().tickets[0])
                .padding()
            Spacer()
        }
    }
}
