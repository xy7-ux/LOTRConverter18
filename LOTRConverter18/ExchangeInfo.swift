//
//  ExcgangeInfo.swift
//  LOTRConverter18
//
//  Created by Patryk Ostrowski on 18/10/2024.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            //Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //Title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                //Guide text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                // Exchange rates
                ExchangeRate(leftImage: .bitcoin, exchangeRateText: "1 bitcoin = 4 Gold Piece", rightImage: .goldpiece)
                
                ExchangeRate(leftImage: .goldpiece, exchangeRateText: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)

                ExchangeRate(leftImage: .goldpenny, exchangeRateText: "1 gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                
                ExchangeRate(leftImage: .silverpiece, exchangeRateText: "1 Silver piece = 4 Silver Pennies", rightImage: .silverpenny)
                
                ExchangeRate(leftImage: .silverpenny, exchangeRateText: "1 Silver Penny = 100 Coper Pennies", rightImage: .copperpenny)
                
                // Done Button
                Button("Done ") {
                    dismiss()
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.custom("Papyrus", size: 24))
                .shadow(color: .black, radius: 2, x: 2, y: 2)
                .padding()
                .foregroundStyle(.white)
                
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
