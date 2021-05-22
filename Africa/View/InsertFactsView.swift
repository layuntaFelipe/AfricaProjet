//
//  InsertFactsView.swift
//  Africa
//
//  Created by Felipe Lobo on 20/04/21.
//

import SwiftUI

struct InsertFactsView: View {
    let animal: AnimalModel
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//Box
    }
}

struct InsertFactsView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertFactsView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
