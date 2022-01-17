//
//  myPageView.swift
//  iOS_Android_Diary
//
//  Created by Minhyun Cho on 2022/01/17.
//

import SwiftUI

struct myPageView: View {
    var body: some View {
        Button(action: {print("마이페이지")}, label: {
            Text("마이페이지")
        })
        Divider()
        Button(action: {print("불러오기")}, label: {
            Text("불러오기")
        })
        Divider()
        Button(action: {print("설정")}, label: {
            Text("설정")
        })
    }
}

struct myPageView_Previews: PreviewProvider {
    static var previews: some View {
        myPageView()
    }
}
