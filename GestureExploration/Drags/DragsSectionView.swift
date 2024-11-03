import SwiftUI

struct DragsSectionView: View {
    
    @State private var scaleEffect: CGFloat = 1.0
    
    var body: some View {
        
        Section(content: {
            
            NavigationLink(#"Drag Gesture "Go back""#, destination: {
                //TODO: Drag gesture go back
            })
            
            NavigationLink(#"Drag Gesture "Stay Still""#, destination: {
                //TODO: Drag gesture Stay Still
            })
            
            NavigationLink(destination: {
                //TODO: Drag gesture Store State
            }, label: {
                VStack (alignment: .leading) {
                    Text("Drag Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
            
            
        }, header: {
            Text("Drag Gesture Demo")
                .font(.headline)
        })
    }
}


#Preview {
    DragsSectionView()
}
