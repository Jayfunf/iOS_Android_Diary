//
//  diary.swift
//  iOS_Android_Diary
//
//  Created by Minhyun Cho on 2022/01/12.
//

import Foundation

class Diary:Identifiable, ObservableObject{
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(id: UUID = UUID(), content: String, insertDate: Date = Date()){ //초기화
        self.id = id
        self.content = content
        self.insertDate = insertDate
    }
}
