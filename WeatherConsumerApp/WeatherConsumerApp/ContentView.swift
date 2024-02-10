//
//  ContentView.swift
//  WeatherConsumerApp
//
//  Created by Ashish Awasthi on 10/02/24.
//

import SwiftUI
import WeatherAPI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            let weatherAPI = WeatherAPI(forCity: "Delhi")
            do {
                let dictionary = try weatherAPI.getCurrentConditions()
                debugPrint("Data: \(String(describing: dictionary))")

            } catch let exception {
                debugPrint("exception: \(exception)")
            }
        }

    }
}

#Preview {
    ContentView()
}
