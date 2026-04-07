//
//  ContentView.swift
//  HelloAnimation
//
//  Created by Angelos Staboulis on 4/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: CGFloat = 0
    var body: some View {
        VStack {
            HelloShape()
                .trim(from: 0.0, to: progress)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .aspectRatio(contentMode: .fit)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .onAppear {
            withAnimation(.easeInOut(duration: 10)) {
                progress = 1
            }
        }
    }
}

#Preview {
    ContentView()
}
