//
//  ContentView.swift
//  macOStest
//
//  Created by Александр Семёнов on 03.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State var mainTitle = "КУДА ПОЙДЕМ ?"
    @State var toggleIsOn1 = false
    @State var toggleIsOn2 = false
    @State var colorChoice1 = false
    @State var colorChoice2 = false
    @State var button = true
    var body: some View {
        ZStack {
            backGround()
            foreGround()
        }
    }
    
    func result() {
        button = false
        if Bool.random() {
            mainTitle = "ЗАКЛАДКУ НАЙДЕШЬ"
            toggleIsOn1 = false
            toggleIsOn2 = true
            colorChoice1 = true
            colorChoice2 = false
        } else {
            mainTitle = "В КАКАШКУ НАСТУПИШЬ"
            toggleIsOn1 = true
            toggleIsOn2 = false
            colorChoice1 = false
            colorChoice2 = true
        }
    }
    
    func backGround() -> some View {
        ZStack {
            Color.gray
            if colorChoice1 {
                Color.black
            }
            if colorChoice2 {
                VStack(spacing: 0) {
                    Color.brown
                }
            }
        }
    }
    func foreGround() -> some View {
        VStack(spacing: 5) {
            if toggleIsOn1 {
                Text("НАЛЕВО ПОЙДЕШЬ - ")
            }
            if toggleIsOn2 {
                Text("НАПРАВО ПОЙДЕШЬ - ")
            }
            Text(mainTitle)
            if button {
                Button {
                    result()
                }
            label:  {
                Text("ПРОВЕРИТЬ")
            }
            }
        }
        .frame(width: 200)
        .padding()    }
    
}




#Preview {
    ContentView()
}





// VStack
// HStack
// ZStack

//struct ContentView: View {
//    var body: some View {
//        HStack(spacing: 0) {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, friend! How are you?")
//            Color.white
//            Color.blue
//            Color.red
//            Button {
//                print("zdorova")
//            }
//        label:  {
//            Text("Hello, friend! How are you?")
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//        }
//        }
//        .padding()
//    }
//}



//struct ContentView: View {
//    @State var firstText = "Кто ты на самом деле?"
//    @State var toggle = false
//    @State var button = true
//    @State var color = false
//    @State var colorSecond = false
//    var body: some View {
//        ZStack {
//            Color.pink
//            if color {
//                Color.black
//            }
//            if colorSecond {
//                VStack(spacing:0) {
//                    Color.red
//                    Color.orange
//                    Color.yellow
//                    Color.green
//                    Color.blue
//                    Color.purple
//                }
//            }
//            VStack(spacing:5) {
//                if toggle {
//                    Text("А я всегда знал, что ты")
//                }
//                Text(firstText)
//                if button {
//                Button {
//                    result()
//                }
//                label:  {
//                    Text("ПРОВЕРИТЬ")
//                }
//            }
//            }
//        }
//        .frame(width: 200)
//        .padding()
//    }
//
//    func result() {
//        if Bool.random() {
//            firstText = "SIGMA Чел"
//            toggle = false
//            button = false
//            color = true
//            colorSecond = false
//        } else {
//            firstText = "ГОМОГЕЕЕЕЕЕЕЕЕЕЕЙ"
//            toggle = true
//            button = false
//            color = false
//            colorSecond = true
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
