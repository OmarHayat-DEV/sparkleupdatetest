//
//  ContentView.swift
//  sparkleupdatetest
//
//  Created by Omar Hayat on 2026-02-07.
//

import SwiftUI

extension Bundle {
    var buildNumber: String {
        return infoDictionary?["CFBundleVersion"] as! String
    }
}

struct ContentView: View {
    var body: some View {
        Text("\(Bundle.main.buildNumber)")
            .padding()
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
