//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Felipe Lobo on 20/04/21.
//

import SwiftUI

struct InsertGalleryView: View {
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }//HStack
        }
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
