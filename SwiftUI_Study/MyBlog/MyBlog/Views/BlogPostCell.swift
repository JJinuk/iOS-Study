//
//  PostView.swift
//  MyBlog
//
//  Created by 최진욱 on 2023/09/03.
//

import SwiftUI

struct BlogPostCell: View {
    let title: String
    let content: String
    
    var body: some View {
        
        List {
            VStack(alignment: .leading) {
                Text(title)
                    .font(Font.custom("Apple SD Gothic Neo", size: 32).weight(.semibold))
                Text(content)
                    .font(Font.custom("Apple SD Gothic Neo", size: 16).weight(.regular))
                    .foregroundColor(KeyColor.textGrayColor)

            }
            
            // .multilineTextAlignment(.leading)
            // .frame(alignment: .top)
            .lineLimit(3)
            // .padding(.leading, 15)
            
            
        }
        .listStyle(PlainListStyle())
        .environment(\.defaultMinListRowHeight, 154)
    }
}

struct BlogPostCell_Previews: PreviewProvider {
    static var previews: some View {
        BlogPostCell(title: "Lorem ipsum", content: "용어로도 시각 차지하는 내용이 사용된다. 그래픽 차지하는 이런 로렘 내용이 때 부르며, 타이포그래피, 디자인 디자인 이용된다. 때로 이용된다. 레이아웃 입숨을 때 요소나 입숨을 문장 채워지기 실제적인 문장 텍스트로, 디자인 공간만 같은 디자인 채움 사용할 내용이 문장 최종 출판이나")
    }
}
