//
//  ContentView.swift
//  WeatherApp
//
//  Created by shashant on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }.padding(.top,10)
            }.padding(.top, 40)
        }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5411764706, green: 0.7607843137, blue: 0.9764705882, alpha: 1)),Color(#colorLiteral(red: 0.4196078431, green: 0.5333333333, blue: 0.937254902, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
