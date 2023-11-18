//
//  ContentView.swift
//  ColorPickerSwiftUI
//
//  Created by Rudolf Amiryan on 18.11.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0.3765624762, blue: 0.7304599881, alpha: 1)).ignoresSafeArea()
            
            VStack {
                VStack(spacing: 40) {
                 ColorView(red: red, green: green, blue: blue)
                    
                    VStack {
                        ColorSlider(sliderValue: $red, color: .red)
                        ColorSlider(sliderValue: $green, color: .green)
                        ColorSlider(sliderValue: $blue, color: .blue)
                    }
                    .frame(height: 150)
                }
                .padding()
                Spacer()
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        
    }
}

#Preview {
    ContentView()
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
