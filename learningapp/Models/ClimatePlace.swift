import Foundation

struct ClimatePlace: Identifiable {
    let id = UUID()
    let name: String
    let climate: String
    let description: String
    let imageUrl: String
}

let climatePlaces = [
    ClimatePlace(
        name: "Tropical Rainforest",
        climate: "Tropical",
        description: "Lush green forests with high humidity and rainfall",
        imageUrl: "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&h=300&fit=crop"
    ),
    ClimatePlace(
        name: "Arctic Tundra",
        climate: "Arctic",
        description: "Frozen landscape with minimal vegetation and snow",
        imageUrl: "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=400&h=300&fit=crop"
    ),
    ClimatePlace(
        name: "Desert Dunes",
        climate: "Desert",
        description: "Arid landscape with sand dunes and extreme temperatures",
        imageUrl: "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=400&h=300&fit=crop"
    ),
    ClimatePlace(
        name: "Temperate Forest",
        climate: "Temperate",
        description: "Mixed forests with moderate rainfall and seasons",
        imageUrl: "https://images.unsplash.com/photo-1511497584788-876760111969?w=400&h=300&fit=crop"
    ),
    ClimatePlace(
        name: "Mediterranean Coast",
        climate: "Mediterranean",
        description: "Warm, dry summers and mild, wet winters",
        imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400&h=300&fit=crop"
    ),
    ClimatePlace(
        name: "Grassland Savanna",
        climate: "Savanna",
        description: "Golden plains with scattered trees and wildlife",
        imageUrl: "https://images.unsplash.com/photo-1516426122078-c23e76319801?w=400&h=300&fit=crop"
    )
]
