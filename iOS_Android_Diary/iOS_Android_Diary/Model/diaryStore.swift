//
//  diaryStore.swift
//  iOS_Android_Diary
//
//  Created by Minhyun Cho on 2022/01/12.
//

import Foundation

class diaryStore: ObservableObject{
    @Published var DiaryList: [Diary] //이 값을 바인딩?
    
    
    init() {
        DiaryList = [
            Diary(content: "Test String1"),
            Diary(content: "Test String2"),
            Diary(content: "Test String3")
        ]
    }
    
    func insert(memo: String) {
        DiaryList.insert(Diary(content: memo), at: 0)
    }
    
    func update(memo: Diary?, content: String) {
        guard let memo = memo else { return }
        memo.content = content
    }
    
    func delete (memo: Diary) {
        self.DiaryList.removeAll()
    }
    
    func delete(set: IndexSet) {
        for index in set {
            self.DiaryList.remove(at: index)
        }
    }
}
