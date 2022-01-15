//
//  ContentView.swift
//  iOS_Android_Diary
//
//  Created by Minhyun Cho on 2022/01/12.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var user:String = "Test"
    var body: some View {
        Text("Hi \(user)! Login First")
            .bold()
        Divider()
        
        Button(action: {print("Clicked")}){
            Text("Login!(Testing)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
