//
//  MemoStore.swift
//  MemoApp
//
//  Created by 최진욱 on 2023/06/26.
//
// 메모 목록을 저장하는 클래스
// 배열을 Published로 선언하면 배열을 업데이트하면 바인딩되어 있는 뷰도 자동으로 업데이트 됨

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Hello", insertDate: Date.now),
            Memo(content: "Awsome", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertDate: Date.now.addingTimeInterval(3600 * -48)),
        ]
    }
    // CREATE
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    // UPDATE
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll { $0.id == memo.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
