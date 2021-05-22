//
//  CopyRightView.swift
//  Africa
//
//  Created by Felipe Lobo on 22/05/21.
//

import SwiftUI

struct CopyRightView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
            Copyright © Felipe Lobo
            All right reserved
            Better Apps ♡ Less Code
            """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CopyRightView_Previews: PreviewProvider {
    static var previews: some View {
        CopyRightView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
