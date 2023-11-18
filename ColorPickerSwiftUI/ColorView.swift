//
//  ColorView.swift
//  ColorPickerSwiftUI
//
//  Created by Rudolf Amiryan on 18.11.23.
//

import SwiftUI




struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 4))
        .frame(height: 130)
    }
        
}

#Preview {
    ColorView(red: 100, green: 100, blue: 100)
}
