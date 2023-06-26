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
    
    @State private var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar {
                // plus 버튼을 누르면 아래 클로저 실행, showComposer가 true로 바뀜
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            // 바인딩한 속성이 true가 되면 아래 클로저 실행 클로저에서 리턴한 뷰를 모달방식으로 표시
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
