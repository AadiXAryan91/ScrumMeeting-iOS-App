//
//  HistoryView.swift
//  ScrumdingerX
//
//  Created by Aditya Singh on 24/04/24.
//

import SwiftUI


struct HistoryView: View {
    let history: History
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}


extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(id: UUID(),
                date: Date(),
                attendees: [
                    DailyScrum.Attendee(name: "Jon"),
                    DailyScrum.Attendee(name: "Darla"),
                    DailyScrum.Attendee(name: "Luis")
                ],
                transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI...")
    }
    
    static var previews: some View {
        HistoryView(history: history)
    }
}
