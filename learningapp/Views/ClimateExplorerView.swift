import SwiftUI

struct ClimateExplorerView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 16) {
                        ForEach(climatePlaces) { place in
                            ClimateCardView(place: place)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 20)
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
