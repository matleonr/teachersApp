//
//  TeachersView.swift
//  Teachlearning
//
//  Created by Mateo Leon Restrepo on 20/07/20.
//  Copyright © 2020 Intergrupo. All rights reserved.
//

import SwiftUI

struct TeachersView: View {
    var body: some View {
        NavigationView {
            List{
                Text("first row")
        }.navigationBarTitle(Text("Teachers"))
        }
        
    }
}

struct TeachersView_Previews: PreviewProvider {
    static var previews: some View {
        TeachersView()
    }
}
