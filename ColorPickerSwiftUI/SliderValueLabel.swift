//
//  SliderValueLabel.swift
//  ColorPickerSwiftUI
//
//  Created by Rudolf Amiryan on 18.11.23.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

#Preview {
    SliderValueLabel(value: 120)
}
