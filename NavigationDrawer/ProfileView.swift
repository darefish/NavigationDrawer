//
//  ProfileView.swift
//  NavigationDrawer
//
//  Created by Raja on 10/12/19.
//  Copyright © 2019 Raja. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var animal: SideDrawerData
    var body: some View {
            VStack(alignment: .leading){
                HStack(alignment: .center){
                    HStack{
                        animal.animals[animal.index].image
                    }.frame(width: 100, height: 100).cornerRadius(50).padding()
                    VStack(alignment: .leading){
                        Text(animal.animals[animal.index].title).font(.headline).fontWeight(.bold)
                        Text(animal.animals[animal.index].creator).font(.caption).italic()
                        HStack(alignment: .center){
                            VStack(alignment: .leading){
                                Color.green
                            }.frame(width: 4, height: 18)
                            Text(animal.animals[animal.index].title).font(.body)
                        }
                    }
                }
                HStack(alignment: .firstTextBaseline, spacing: 0){
                    Spacer()
                    VStack(alignment: .leading){
                        Color.red
                    }.frame(width: 14, height: 14).cornerRadius(7).offset(x: 10, y: 2)
                    Text(UIDevice.current.name)
                        .font(.footnote)
                        .padding()
                }.frame(height: 10).offset(x: 0, y: -10)
            }.background(Color.init(UIColor.darkGray))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
