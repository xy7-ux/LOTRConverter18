//
//  SelectCurrency.swift
//  LOTRConverter18
//
//  Created by Patryk Ostrowski on 19/10/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            // Parachment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    
                //currency icons
                IconGrid(currency: $topCurrency)
               
                
                //text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                //currency icons
                IconGrid(currency: $bottomCurrency)
               
                
                //Done button
                Button("Done") {
                    dismiss()
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
            }
            .padding()
            .multilineTextAlignment(.center)

        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
