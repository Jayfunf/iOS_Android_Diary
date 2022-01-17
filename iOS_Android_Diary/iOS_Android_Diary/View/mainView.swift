//
//  mainView.swift
//  iOS_Android_Diary
//
//  Created by Minhyun Cho on 2022/01/15.
//

import SwiftUI

struct mainView: View {
    //@EnvironmentObject var userName: userName
    var body: some View {
        NavigationView{
        Text("main")
            .navigationBarTitle("나의 일기", displayMode: .large) // large
            .navigationBarItems(leading: Button(action: {}){
                Text("일기 추가")
                },trailing:
                    NavigationLink(
                        destination: myPageView(),
                        label: {
                            Text("사용자")
                        }))
            
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
