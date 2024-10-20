
import Foundation

struct FoodItem: Identifiable, Codable {
    var id: String { _id }  // SwiftUI requires an Identifiable type
    let _id: String
    let itemName: String
    let item_type: String
    let img: String
    let price: String
}
