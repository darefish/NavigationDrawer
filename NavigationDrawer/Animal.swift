/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct Animal: Identifiable {
    var id: Int
    let title: String
    let creator: String
    let image: Image?
    
    init(title: String, creator: String, image: Image?, id: Int) {
        self.title = title
        self.creator = creator
        self.image = image
        self.id = id
    }
    
    static func allCats() -> [Animal] {
        
        return [
            Animal(title: "Sleeping Cat", creator: "papaija2008", image: Image("ID-100113060.jpg"), id: 0),
            Animal(title: "Pussy Cat", creator: "Carlos Porto", image: Image("ID-10022760.jpg"), id: 1),
            Animal(title: "Korat Domestic Cat", creator: "sippakorn", image: Image("ID-10091065.jpg"), id: 2),
            Animal(title: "Tabby Cat", creator: "dan", image: Image("ID-10047796.jpg"), id: 3),
            Animal(title: "Yawning Cat", creator: "dan", image: Image("ID-10092572.jpg"), id: 4),
            Animal(title: "Tabby Cat", creator: "dan", image: Image("ID-10041194.jpg"), id: 5),
            Animal(title: "Cat On The Rocks", creator: "Willem Siers", image: Image("ID-10017782.jpg"), id: 6),
            Animal(title: "Brown Cat Standing", creator: "aopsan", image: Image("ID-10091745.jpg"), id: 7),
            Animal(title: "Burmese Cat", creator: "Rosemary Ratcliff", image: Image("ID-10056941.jpg"), id: 8),
            Animal(title: "Cat", creator: "dan", image: Image("ID-10019208.jpg"), id: 9),
            Animal(title: "Cat", creator: "graur codrin", image: Image("ID-10011404.jpg"), id: 10)
        ]
    }
    
    static func allDogs() -> [Animal] {
        return [
            Animal(title: "White Dog Portrait", creator: "photostock", image: Image("ID-10034505.jpg"), id: 0),
            Animal(title: "Black Labrador Retriever", creator: "Michal Marcol", image: Image("ID-1009881.jpg"), id: 1),
            Animal(title: "Anxious Dog", creator: "James Barker", image: Image("ID-100120.jpg"), id: 2),
            Animal(title: "Husky Dog", creator: "James Barker", image: Image("ID-100136.jpg"), id: 3),
            Animal(title: "Puppy", creator: "James Barker", image: Image("ID-100140.jpg"), id: 4),
            Animal(title: "Black Labrador Puppy", creator: "James Barker", image: Image("ID-10018395.jpg"), id: 5),
            Animal(title: "Yellow Labrador", creator: "m_bartosch", image: Image("ID-10016005.jpg"), id: 6),
            Animal(title: "Black Labrador", creator: "Felixco, Inc.", image: Image("ID-10012923.jpg"), id: 7),
            Animal(title: "Sleepy Dog", creator: "Maggie Smith", image: Image("ID-10021769.jpg"), id: 8),
            Animal(title: "English Springer Spaniel Puppy", creator: "Tina Phillips", image: Image("ID-10056667.jpg"), id: 9),
            Animal(title: "Intelligent Dog", creator: "James Barker", image: Image("ID-100137.jpg"), id: 10)
        ]
    }
}
