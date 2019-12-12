//
//  ContainerViewController.swift
//  NavigationDrawer
//
//  Created by Raja on 08/12/19.
//  Copyright © 2019 Raja. All rights reserved.
//

import SwiftUI

struct ContainerViewController: View{
    @EnvironmentObject var data: SideDrawerData
    @EnvironmentObject var state : SideDrawerState
    
    var centerNavigationController : NavigationView<CenterViewController>
    var centerViewController: CenterViewController!
    
    var leftViewController: SidePanelViewController?
    var rightViewController: SidePanelViewController?
    let centerPanelExpandedOffset: CGFloat = 90
    
    init() {
        centerViewController = CenterViewController()
        centerNavigationController = NavigationView(content: {
            CenterViewController()
        })
    }
    
    
    var body: some View {
        HStack(alignment: .top){
            if (state.currentState == .collapse){
                SidePanelViewController().environmentObject(data).frame(width: 0, height: nil, alignment: .leading)
                centerNavigationController
            }else{
                SidePanelViewController().environmentObject(data).frame(width: UIScreen.main.bounds.width * 0.8, height: nil, alignment: .leading)
                centerNavigationController
            }
        }.animation(.linear)
    }
}

struct ContainerViewController_Previews: PreviewProvider {
    static var previews: some View {
        ContainerViewController()
    }
}

extension ContainerViewController{

}


