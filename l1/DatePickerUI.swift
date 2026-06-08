//
//  DatePickerUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 08/06/26.
//

import SwiftUI

struct DatePickerUI: View {
    @State var dateInfo: Date = Date()
    let startDate: Date = Calendar.current.date(from: DateComponents(year: 1973)) ?? Date()
    let endDate: Date = Date()
    
    var dateFormater: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .medium
        formater.timeStyle = .short
        return formater
    }
    
    var body: some View {
        VStack{
            Text(dateFormater.string(from: dateInfo))
//            Text(dateInfo.description)
                .font(.title)
            
            //        DatePicker("Select date", selection: $dateInfo)
            //        DatePicker("Select date",
            //                   selection: $dateInfo,
            //                   displayedComponents: [.date, .hourAndMinute]
            //        )
                    DatePicker("Select date", selection: $dateInfo, in: startDate...endDate)
                        .tint(.green)
                        .datePickerStyle(.compact)
            //            .datePickerStyle(.graphical)
            //            .datePickerStyle(.wheel)

        }
    }
}

#Preview {
    DatePickerUI()
}
