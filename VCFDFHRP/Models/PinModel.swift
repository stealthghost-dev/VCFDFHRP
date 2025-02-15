import ArcGIS

struct PinModel: Identifiable {
    let id = UUID()
    let title: String
    let location: Point
}