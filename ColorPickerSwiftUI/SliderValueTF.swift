//
//  SliderValueTF.swift
//  ColorPickerSwiftUI
//
//  Created by Rudolf Amiryan on 18.11.23.
//

import SwiftUI

struct SliderValueTF: View {
    
    @Binding var value: Double
    
    @State private var showAlert = false
    @State private var newValue = 0.0
    
    var body: some View {
        
        TextField("", text: textValue, onCommit: {
            value = newValue
        })
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Wrong format"), message: Text("Please enter value from 0 to 255"))
            
        }
        
        
    }
}
               
               extension SliderValueTF {
            var textValue: Binding<String> {
                Binding<String>(
                    get: {
                        "\(lround(value))"
                    },
                    set: {
                        if let number = NumberFormatter().number(from: $0) {
                            let doubleValue = number.doubleValue
                            if !(0...255).contains(doubleValue) {
                                newValue = 0
                                showAlert.toggle()
                                return
                            }
                            newValue = doubleValue
                        } else {
                            newValue = 0
                            showAlert.toggle()
                        }
                    }
                )
            }
        }

#Preview {
            SliderValueTF(value: .constant(120.0))
}
