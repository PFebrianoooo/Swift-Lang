//
//  ContentView.swift
//  Protocols
//
//  Created by Putra Pebriano Nurba on 31/10/23.
//

import SwiftUI

// protokol pada view swift ui.
// it will be in struct or class, but for view us using struct
// : view memiliki protokol
// var body : some view


// bedah total protokol
//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world")
//    }
//}

//struct menandakan dia tipenya struct, swift ui make using struct, haruss. karena dia berada di staack memory dan stack memory is fast.
// ConntentView merefers nama pada file swiftui yang dibuat.
// : View  adalah inherit dari view which is tampilan layar di iphone.
// var body variable body biasa
// var body: some View adalah variable body inherit dari protokol View di sebelumnya beserta some view juga.

// kalo kita make : View
// harus ada yang namanya var body: some View
// harus diadakan karena itu protokol



struct ContentView: View {
    var body: some View {
        Text("Hello, world")
    }
}
