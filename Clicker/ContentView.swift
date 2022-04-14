//
//  ContentView.swift
//  test
//
//  Created by Vladimir Moshchuk on 14.04.22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State private var funFact = "0"
    @State private var index = 0
    @State private var Congratulations = ""
    @State private var n = 1
    var body: some View {
        Text (Congratulations)
            .padding()
            .font(.largeTitle)
            .frame(minHeight: 100)
        Text(funFact)
            .padding()
            .font(.largeTitle)
            .frame(minHeight: 100)
        Button("ТЫК"){
        index = index + 1
        funFact = String(index)
        if (index % (10*n*n) == 0 && index != 0){
            Congratulations = "Yeah!"
            n+=1
        }
            else{
                Congratulations = ""
            }
        }
        .font(.title)
        .padding(20)
        
       
        Button("Очистка"){
          index = 0
            n = 1
            funFact = String(index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
