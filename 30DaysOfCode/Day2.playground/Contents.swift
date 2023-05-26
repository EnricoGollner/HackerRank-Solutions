import Foundation

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    // Write your code here
    let tip = meal_cost * (Double(tip_percent) / 100)
    let tax = meal_cost * Double(tax_percent) / 100
    let mealTotalCost = Int(round(meal_cost + tip + tax))
    
    print(mealTotalCost)
}

solve(meal_cost: 10.25, tip_percent: 17, tax_percent: 5)
