//
//  CenterViewController.swift
//  NavigationDrawer
//
//  Created by Raja on 08/12/19.
//  Copyright © 2019 Raja. All rights reserved.
//

import SwiftUI

struct CenterViewController: View {
    @EnvironmentObject var state : SideDrawerState
    @EnvironmentObject var animals : SideDrawerData
    var body: some View {
        NavigationView{
            ProfileView().environmentObject(animals)
        }.navigationBarItems(leading: Button(action: {
            if !(self.state.isMenuBtnClicked) {
                self.state.currentState = .expand
            }else{
                self.state.currentState = .collapse
            }
            self.state.isMenuBtnClicked = !(self.state.isMenuBtnClicked)
        }){
            Text("Tap")
        })
    }
}

struct CenterViewController_Previews: PreviewProvider {
    static var previews: some View {
        CenterViewController()
    }
}

class SideDrawerState : ObservableObject{
    @Published var currentState : SlideOutState = .collapse
    @Published var isMenuBtnClicked : Bool = false
}

enum SlideOutState {
    case expand
    case collapse
}
