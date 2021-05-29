//
//  CityNameView.swift
//  WeatherApp
//
//  Created by shashant on 22/05/21.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var date: String
    
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10) {
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            }.foregroundColor(.white)
        }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
        
    }
}
