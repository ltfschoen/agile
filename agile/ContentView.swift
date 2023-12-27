//
//  ContentView.swift
//  agile
//
//  Created by luke on 27/12/2023.
//

import Foundation
import SwiftUI

class Model {
    var items = ["Lasagna", "Fettuccini", "Spaghetti", "Avo toast", "Tortellini", "Pizza"]

    init(items: [String]) {
        if items.count > 0 {
            self.items = items
        }
    }

    func menuItems() {
        for item1 in self.items {
            print(item1)
        }
    }
}

struct ContentView: View {
    @State var model1 = Model(items: [])
    var body: some View {
        VStack {
            ForEach(model1.items, id: \.self) { item in
                Text(item.capitalized)
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button {
                model1.menuItems()
            } label: {
                Text("Print menu items to console!")
            }.padding(.vertical, 10.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
