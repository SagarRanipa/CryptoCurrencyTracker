//
//  CoinRowView.swift
//  CryptoCurrencyTracker
//
//  Created by Sagar patel on 2021-07-30.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn : Bool
    
    var body: some View {
        HStack(spacing: 0){
            leftColumn
            Spacer()
            if showHoldingsColumn {
               centerColumn
            }
            rightColumn
        }
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
        
    }
}

extension CoinRowView {
    
    private var leftColumn : some View {
        HStack(spacing: 0){
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading,6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack (alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ?
                    Color.theme.green :
                    Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
    
//    private var coininfo: some View {
//
//            VStack(alignment: .center){
//                CoinImageView(coin: coin)
//                    .frame(width: 30, height: 30)
//                    .padding(.top,10)
//                Spacer()
//                Text(coin.name)
//                    .font(.headline)
//                    .padding(.leading,6)
//                    .foregroundColor(Color.theme.accent)
//                Spacer()
//                Text(coin.currentPrice.asCurrencyWith6Decimals())
//                    .bold()
//                    .foregroundColor(Color.theme.accent)
//                    .padding(.horizontal, 10)
//                Spacer()
//                HStack {
//
//                    Image(systemName: "triangle.fill")
//                        .font(.caption)
//                        .rotationEffect(
//                            Angle(degrees:(coin.priceChangePercentage24H ?? 0) >= 0 ? 0 : 180))
//                        .foregroundColor(
//                            (coin.priceChangePercentage24H ?? 0) >= 0 ?
//                            Color.theme.green :
//                            Color.theme.red
//                        )
//
//
//                    Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
//                        .foregroundColor(
//                            (coin.priceChangePercentage24H ?? 0) >= 0 ?
//                            Color.theme.green :
//                            Color.theme.red
//                        )
//                }
//                .padding(.bottom,10)
//
//            }
//            .frame(width: 150, height: 150,alignment: .center)
//            .background(Color.theme.background)
//            .cornerRadius(10.0)
//            .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0.0, y: 10.0)
//            .padding()
//    }
}

