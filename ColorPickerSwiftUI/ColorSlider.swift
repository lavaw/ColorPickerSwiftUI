//
//  ColorSlider.swift
//  ColorPickerSwiftUI
//
//  Created by Rudolf Amiryan on 18.11.23.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
    
        HStack{
            SliderValueLabel(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            SliderValueTF(value: $sliderValue)
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        
        
        
    }
}

#Preview {
    ColorSlider(sliderValue: .constant(100), color: .red)
}
