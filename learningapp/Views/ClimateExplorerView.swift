import SwiftUI

struct ClimateExplorerView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ], spacing: 16) {
                        ForEach(climatePlaces) { place in
                            ClimateCardView(place: place)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Natural Places")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ClimateExplorerView()
}
