//
//  StepperUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 08/06/26.
//

import SwiftUI

struct StepperUI: View {
    @State var stepperVal: Int = 0
    @State var widthInc: CGFloat = 0
    
    var body: some View {
        Stepper("Stepper Val: \(stepperVal)", value: $stepperVal)
            .padding(20)
            .font(.title)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100 + widthInc, height: 100)
        
        
        Stepper("Change width size") {
//            widthInc += 20
            changeWidth(amt: 20)
        } onDecrement: {
//            widthInc -= 20
            changeWidth(amt: -20)
        }
        .padding(20)
        .font(.title)
    }
    
    func changeWidth(amt: CGFloat){
        withAnimation(.easeOut) {
            widthInc += amt
        }
    }
}

#Preview {
    StepperUI()
}
