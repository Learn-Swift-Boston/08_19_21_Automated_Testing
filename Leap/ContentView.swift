//
//  ContentView.swift
//  Leap
//
//  Created by Matthew Dias on 8/19/21.
//

import SwiftUI

// type in year
// app tells you if it's a leap year

struct ContentView: View {
    @State var typedText = ""
    let controller = LeapLogicController()

    var body: some View {
        VStack {
            TextField("Enter a year", text: $typedText)
                .padding()
                .border(Color.gray, width: 1)
            Text(controller.getCalculation(text: typedText))
        }
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
