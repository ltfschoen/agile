//
//  ContentView.swift
//  agile
//
//  Created by luke on 27/12/2023.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    var id: Int
    var name1: String = ""
    var name2: String = ""
    var name3: String = ""
}

// struct
var lasagna = Item(
    id: 1,
    name1: "Lasagna",
    name2: "Italian"
)

// struct
var avo_toast = Item(
    id: 2,
    name1: "Avo toast",
    name2: "Australia"
)

class Model {
    var items: [Item] = [lasagna, avo_toast]
    
//    var items: String = ["Lasagna", "Fettuccini", "Spaghetti", "Avo toast", "Tortellini", "Pizza"]

    init(items: [Item]) {
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
            // use if items is an array of structs
            ForEach(model1.items) { item in
                Text("Item: \(item.id), \(item.name1.capitalized), \(item.name2.capitalized)")
            }
//            // use if items is an array of strings
//            ForEach(model1.items, id: \.self) { item in
//                Text(item.capitalized)
//            }
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
