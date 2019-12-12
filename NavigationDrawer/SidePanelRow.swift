//
//  SidePanelRow.swift
//  NavigationDrawer
//
//  Created by Raja on 10/12/19.
//  Copyright © 2019 Raja. All rights reserved.
//

import SwiftUI

struct SidePanelRow: View {
    @EnvironmentObject var state : SideDrawerState
    @State var animal : Animal!

    var body: some View {
        HStack(spacing: 0){
            VStack(alignment: .leading){
                animal.image // return Image
            }.frame(width: 4, height: 30, alignment: .center)
            Spacer().frame(width: 30)
            VStack(alignment: .leading){
                Color.blue
                }.frame(width: 30, height: 30, alignment: .center)
            Text(animal.title).padding(.leading).foregroundColor(Color.black)
            Spacer()
        }
    }
}

struct SidePanelRow_Previews: PreviewProvider {
    static var previews: some View {
        SidePanelRow()
    }
}
