//
//  ContentView.swift
//  MenuDIne
//
//  Created by Matthew Garlington on 6/7/20.
//  Copyright © 2020 Matthew Garlington. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from:
    "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in 
                    Section(header: Text(section.name)) {
                        ForEach (section.items) { item in
                            ItemRow(item: item)
                        
                    }
                }
            }.navigationBarTitle("Menu")
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
