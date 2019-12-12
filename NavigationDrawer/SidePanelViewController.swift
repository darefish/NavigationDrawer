//
//  SidePanelViewController.swift
//  NavigationDrawer
//
//  Created by Raja on 08/12/19.
//  Copyright © 2019 Raja. All rights reserved.
//

import SwiftUI

struct SidePanelViewController: View {
    @EnvironmentObject var data : SideDrawerData
    var body: some View {
        NavigationView{
            VStack{
                ProfileView().environmentObject(data)
                NavigationLink(destination: CenterViewController().environmentObject(data)) {
                    List(data.animals, id: \.id) { animal in
                        SidePanelRow(animal: animal)
                    }
                }
            }
        }
    }
}

struct SidePanelViewController_Previews: PreviewProvider {
    static var previews: some View {
        SidePanelViewController()
    }
}

class SideDrawerData: ObservableObject{
    @Published var animals = Animal.allDogs()
    @Published var index : Int = 0
}
