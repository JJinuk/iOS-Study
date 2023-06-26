//
//  MainListView.swift
//  MemoApp
//
//  Created by 최진욱 on 2023/06/26.
//

import SwiftUI

struct MainListView: View {
    // 하나의 데이터를 여러 뷰에 공유할 때 EnvironmentObject 속성 사용
    @EnvironmentObject var store: MemoStore
    
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
