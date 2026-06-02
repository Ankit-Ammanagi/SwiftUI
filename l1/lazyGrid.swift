//
//  lazyGrid.swift
//  l1
//
//  Created by Ankit Ammanagi on 02/06/26.
//

import SwiftUI

struct lazyGrid: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                Rectangle()
                    .frame(height: 500)
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders],
                    content: {
                        Section(header:
                                    Text("Section 1")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .background(Color.blue)
                                        .padding(.bottom, 20)

                                
                                
                        ){ ForEach(1..<15) { idx in
                            Rectangle()
                                .frame(height: 100)
                        }
                        }
                    }
                )
                .padding()
                
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders],
                    content: {
                        Section(header:
                                    Text("Section 1")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .background(Color.blue)
                                        .padding(.bottom, 20)

                                
                                
                        ){ ForEach(1..<15) { idx in
                            Rectangle()
                                .frame(height: 100)
                        }
                        }
                    }
                )
                .padding()
            }
        }
//        .edgesIgnoringSafeArea(.top)
//        .safeAreaPadding()
//        .scrollClipDisabled(false)
    }
}

#Preview {
    lazyGrid()
}
