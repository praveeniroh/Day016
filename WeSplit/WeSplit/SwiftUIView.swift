//
//  SwiftUIView.swift
//  WeSplit
//
//  Created by Praveenraj T on 27/06/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var tapCount = 0
    @State private var enterredText = ""
    var body: some View {
        VStack{
            Button("Tap"){
                tapCount += 1
            }
                .frame(width: 200,height: 40)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            Text("Tap count : \(tapCount)")
            
            TextField("Enter name", text: $enterredText)
                .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                .border(.blue)
            Text("Your Name : \(enterredText)")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
