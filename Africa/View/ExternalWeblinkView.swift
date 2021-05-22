//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Felipe Lobo on 21/04/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: AnimalModel
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            }//HSTACK
        }//BOX
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
