import Foundation

class FoodViewModel: ObservableObject {
    @Published var foodItems: [FoodItem] = []
    
    init() {
        fetchFoodItems()
    }
    
    func fetchFoodItems() {
        // Replace with your actual JSON data fetching logic
        let jsonData = """
        [
            {
                "_id":"654e6b492e5896946065a4df",
                "itemName":"Palak Paneer",
                "item_type":"vegetarian",
                "img":"654e63952a6403c342a77f06",
                "price":"250"
            },
            {
                "_id":"654e6b492e5896946065a4d7",
                "itemName":"Vegetarian Thali",
                "item_type":"vegetarian",
                "img":"654e635a2a6403c342a77ef4",
                "price":"250"
            },
            {
                "_id":"654e6b492e5896946065a4da",
                "itemName":"Paneer Butter Masala",
                "item_type":"vegetarian",
                "img":"654e63782a6403c342a77efa",
                "price":"250"
            },
            {
                "_id":"654e6b492e5896946065a4d9",
                "itemName":"Masala Dosa",
                "item_type":"fast_food",
                "img":"654e63a62a6403c342a77f0f",
                "price":"100"
            },
            {
                "_id":"654e6b492e5896946065a4d8",
                "itemName":"Chicken Biryani",
                "item_type":"non_vegetarian",
                "img":"654e63632a6403c342a77ef7",
                "price":"300"
            },
            {
                "_id":"654e6b492e5896946065a4db",
                "itemName":"Veg Hakka Noodles",
                "item_type":"vegetarian",
                "img":"654e63802a6403c342a77efd",
                "price":"150"
            },
            {
                "_id":"654e6b492e5896946065a4dc",
                "itemName":"Butter Chicken",
                "item_type":"non_vegetarian",
                "img":"654e63862a6403c342a77f00",
                "price":"300"
            },
            {
                "_id":"654e6b492e5896946065a4dd",
                "itemName":"Chole Bhature",
                "item_type":"fast_food",
                "img":"654e638b2a6403c342a77f03",
                "price":"120"
            },
            {
                "_id":"654e6b492e5896946065a4de",
                "itemName":"Veg Pulao",
                "item_type":"vegetarian",
                "img":"654e63a12a6403c342a77f0c",
                "price":"180"
            },
            {
                "_id":"654e6b492e5896946065a4e0",
                "itemName":"Fish Curry",
                "item_type":"non_vegetarian",
                "img":"654e639b2a6403c342a77f09",
                "price":"350"
            }
        ]
        """.data(using: .utf8)
        
        if let data = jsonData {
            let decoder = JSONDecoder()
            do {
                let items = try decoder.decode([FoodItem].self, from: data)
                self.foodItems = items
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
    }
}
