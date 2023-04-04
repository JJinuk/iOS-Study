//
//  HomeView.swift
//  News
//
//  Created by 최진욱 on 2023/03/24.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit


struct HomeView: View {
    @ObservedObject var list = getData()
    
    var body: some View {
        NavigationView {
            List(list.datas) {i in
                
                NavigationLink(destination:
                                
                                webView(url: i.url)
                    .navigationBarTitle("", displayMode: .inline)) {
                        HStack{
                            VStack(alignment: .leading, spacing: 10) {
                                Text(i.title).fontWeight(.heavy)
                                Text(i.desc).lineLimit(3)
                            }
                            
                            if i.image != "", let url = URL(string: i.image) {
                                WebImage(url: url, options: .highPriority, context: nil)
                                    .resizable()
                                    .frame(width: 128, height: 128)
                                    .cornerRadius(10)
                            }
                        }.padding(.vertical, 15)
                    }
                
                
            }.navigationBarTitle("Headlines")
        }
    }
}

struct dataType: Identifiable {
    
    var id: String
    var title: String
    var desc: String
    var url: String
    var image: String
}

class getData: ObservableObject {
    @Published var datas = [dataType]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=7d21df1cc27e4bfe90b334aedf0146c2"
        let url = URL(string: source)!
        let session = URLSession(configuration: .default)
        session.dataTask(with: url) { (data, _, err) in
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let image = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.datas.append(dataType(id: id, title: title, desc: description, url: url, image: image))
                    
                }
            }
        }.resume()
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct webView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<webView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context:  UIViewRepresentableContext<webView>) {
        
    }
}
