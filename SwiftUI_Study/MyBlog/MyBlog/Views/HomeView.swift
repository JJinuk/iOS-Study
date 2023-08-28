//
//  ContentView.swift
//  MyBlog
//
//  Created by 최진욱 on 2023/08/26.
//

import SwiftUI

@available(iOS 16.0, *)
struct HomeView: View {
    @State private var selectedButton: String? = "recent"
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 86, height: 86)
                    .padding(.leading, 15)
            }
            
            HStack(alignment: .top) {
                Text("Home")
                    .font(
                        Font.custom("Apple SD Gothic Neo", size: 58)
                            .weight(.heavy)
                    )
                    .foregroundColor(KeyColor.textBlackColor)
                    .frame(width: 188, height: 84, alignment: .leading)
                    .padding(.leading, 15)
            }
            
            HStack(alignment: .top) {
                
                Button (action: {
                    self.selectedButton = "recent"
                    print("버튼1 클릭")
                }) {
                    Text("최신순")
                        .font(Font.custom("Apple SD Gothic Neo", size: 16).weight(.semibold))
                        .foregroundColor(self.selectedButton == "recent" ? KeyColor.textWhiteColor : KeyColor.accentColor)
                        .frame(width: 78, height: 32)
                        .background(self.selectedButton == "recent" ? KeyColor.accentColor : Color.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(KeyColor.accentColor, lineWidth:self.selectedButton == "oldest" ? 2 : 0 )
                        )
                }
                
                Button (action: {
                    self.selectedButton = "oldest"
                    print("버튼2 클릭")
                }) {
                    Text("오래된 순")
                        .font(Font.custom("Apple SD Gothic Neo", size: 16).weight(.semibold))
                        .foregroundColor(self.selectedButton == "oldest" ? KeyColor.textWhiteColor : KeyColor.accentColor)
                        .frame(width: 78, height: 32)
                        .background(self.selectedButton == "oldest" ? KeyColor.accentColor : Color.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(KeyColor.accentColor, lineWidth:self.selectedButton == "oldest" ? 0 :2 )
                        )
                }
            }
            .padding(.leading, 15)

            List {
                ForEach(0..<5) { item in
                    VStack(alignment: .leading) {
                        Text("Lorem ipsum \(item)")
                            .font(Font.custom("Apple SD Gothic Neo", size: 32).weight(.semibold))
                        Text("용어로도 시각 차지하는 내용이 사용된다. 그래픽 차지하는 이런 로렘 내용이 때 부르며, 타이포그래피, 디자인 디자인 이용된다. 때로 이용된다. 레이아웃 입숨을 때 요소나 입숨을 문장 채워지기 실제적인 문장 텍스트로, 디자인 공간만 같은 디자인 채움 사용할 내용이 문장 최종 출판이나 \(item).")
                        .font(Font.custom("Apple SD Gothic Neo", size: 16).weight(.regular))
                    }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
