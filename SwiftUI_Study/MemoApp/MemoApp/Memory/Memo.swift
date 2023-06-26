//
//  Memo.swift
//  MemoApp
//
//  Created by 최진욱 on 2023/06/26.
//

import Foundation
import SwiftUI

// Identifiable: 데이터를 리스트에 쉽게 바인딩하기 위해 필요
// ObservedObject: 메모리를 편집할 때, 뷰를 자동으로 업데이트하기 위해 필요
// @Published: published를 추가하면새로운 값을 추가하면 바인딩되어 있는 ui가 업데이트됨

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
