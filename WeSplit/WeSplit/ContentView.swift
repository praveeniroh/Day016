//
//  ContentView.swift
//  WeSplit
//
//  Created by Praveenraj T on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    var cars = ["TATA","Mahindra","BMW","Audi","TATA"]
    @State private  var selectedCar:String
    @State private var tapCount = 0
    @State private var enterredText = ""
    init(){
        selectedCar = cars[0]
    }
    var body: some View {
//        Text("Hello world")
        NavigationView{
            Form{
                Section("SECTION 1" ,content: {
                    Text("Row 1")
                    
                    Text("Row 2")
                })
//                .navigationTitle("Title")
                
                Section("SECTION 2", content: {
                    Text("Row 1")
                    Text("Row 2")
                    Button("Show", action: {
                        
                    })
                    
//                    .navigationTitle("Title2")
                })
                NavigationLink("Show Detail view", destination: {
                    DetailView()
                })
                Button("Tap Count : \(tapCount)", action: {
                    tapCount += 1
                })
                
                
                Section("Text Field", content: {
                    TextField("Enter name", text: $enterredText)
                    Text("Your name : \(enterredText)")
                })
                NavigationView{
                Section("CARS"){
                        Picker("Select car", selection: $selectedCar, content: {
                            ForEach(cars,id:\.self, content: {
                                Text($0)
                            })
                        })
                    }
                }
            }
        }
        .navigationTitle("Nav Title")
        .navigationViewStyle(.stack)
//        .formStyle(.automatic)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
    }
}
