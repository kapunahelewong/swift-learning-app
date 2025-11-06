import SwiftUI

struct ClimateCardView: View {
    let place: ClimatePlace
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AsyncImage(url: URL(string: place.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
            }
            .frame(height: 200)
            .clipped()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(place.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(place.climate)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.blue)
                
                Text(place.description)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
            .padding(12)
            
            Spacer()
        }
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 4)
    }
}

#Preview {
    ClimateCardView(place: climatePlaces[0])
        .padding()
        .frame(height: 320)
}
