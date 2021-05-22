//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Felipe Lobo on 20/04/21.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                //HeadLine
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                //Gallery
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                //Facts
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know?")
                    
                    InsertFactsView(animal: animal)
                }
                .padding(.horizontal)
                //Description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All About \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding()
                //Map
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsertMapView()
                }
                .padding()
                //Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding()
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
    }
}
