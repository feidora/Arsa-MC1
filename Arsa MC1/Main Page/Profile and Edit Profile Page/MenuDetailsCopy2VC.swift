//
//  MenuDetailsCopy2VC.swift
//  Arsa MC1
//
//  Created by Feidora Nadia Putri on 14/04/20.
//  Copyright © 2020 Feidora Nadia Putri. All rights reserved.
//

import UIKit

class MenuDetailsCopy2VC: UIViewController {
    
    @IBOutlet weak var menuDetailsImage: UIImageView!
       @IBOutlet weak var menuNameLabel: UILabel!
       @IBOutlet weak var menuPortionLabel: UILabel!
       @IBOutlet weak var menuIngredientLabel: UILabel!
       @IBOutlet weak var menuInstructionsLabel: UILabel!
       @IBOutlet weak var menuNutritionLabel: UILabel!
       @IBOutlet weak var caloriesIngredientLabel: UILabel!
       @IBOutlet weak var totalCaloriesLabel: UILabel!
       @IBOutlet weak var nutritionInformationLabel: UILabel!
       @IBOutlet weak var kindOfNutrition: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

            PastaCarbonara()
        // Do any additional setup after loading the view.
    }
    
    var name = ""
    var calories = ""
    
    // Breakfast
    func PumpkinSoup() {
        menuDetailsImage.image = #imageLiteral(resourceName: "breakfast-1")
        menuNameLabel.text = "Pumpkin Soup"
        menuPortionLabel.text = "1 bowl / 493gr \n308kcal"
        menuIngredientLabel.text = "230 g Hokkaido Pumpkin \n65 g  Potatoes \n40 g 1/2 Onion \n20 g Fresh Ginger \n1 tsp Canola Oil \n200 ml Vegetable Broth \n125 ml Coconut Milk \n140 g Apple \nSalt and Pepper"
        caloriesIngredientLabel.text = "52kcal \n57kcal \n17kcal \n10kcal \n123kcal \n10kcal \n190kcal \n65kcal"
        menuInstructionsLabel.text = "1. Remove the seeds from the pumpkin and cut into chunks. \n2. Peel the potatoes, onion, and ginger and chop into small pieces. \n3. Place the onion pieces and canola oil in a pot and briefly sauté. \n4. Add the remaining vegetables and fry for 3 minutes \n5. Deglaze with vegetable broth and coconut milk, making sure to set 2 tablespoons of the coconut milk to the side for later use. \n6. Let simmer over medium heat for 10 minutes. \n7. In the meantime, remove the seeds from the apple and cut into small pieces. After the 10 minutes of cook time, add the apples to the pot. \n8. Cook the soup for an additional 10 minutes. Next, use an immersion blender to puree the soup. \n9. Season with salt and pepper and the top each bowl of soup with a tablespoon of coconut milk. \n10. Enjoy your meal!"
        kindOfNutrition.text = "Protein \nCarbs \n Dietary Fiber \nTotal Sugars \nFat \nSaturated Fat \nMonounsaturated Fat \nPolyunsaturated Fat \nSalt \nCholesterol \nSodium \nPotassium"
        nutritionInformationLabel.text = "4g \n33.5gr \n5.6g \n14.9g \n18.8g \n13,6g \n2.4g \n1.1g \n0.8g \n< 0.1mg \n302mg \n852mg"
    }
    
    func DakJuk() {
        menuDetailsImage.image = #imageLiteral(resourceName: "breakfast-3")
        menuNameLabel.text = "Dak Juk"
        menuPortionLabel.text = "1 bowl / 450gr \n594kcal"
        menuIngredientLabel.text = "215 g Short Grain Rice \n1.3 kg Whole Chicken \n8 Medium cloves garlic, 6 Whole and 2 Finely minced, divided \n10 g Fresh Ginger \n3 Scallions, ends trimmed, white and light green parts reserved for broth, green tops sliced thin on a bias, divided \n25 ml Toasted Sesame Oil \n115 g Carrot \n160 g White Onion \n200 g Zucchini"
        caloriesIngredientLabel.text = "358kcal \n783kcal \n32kcal \n19kcal \n10kcal \n120kcal \n44kcal \n44kcal \n20kcal"
        menuInstructionsLabel.text = "1. In a medium bowl, cover rice with at least 2 inches cold water and soak for 1 hour. Drain well. \n2. Meanwhile, in a large Dutch oven or similarly sized pot, combine chicken, whole garlic cloves, ginger, and scallion whites with 2 quarts (2L) cold water. Bring to a simmer, then cover and cook at a gentle simmer until thickest part of breast close to bone registers 150°F (66°C) on an instant-read thermometer and joint between thighs and body registers at least 175°F (80°C), about 45 minutes. \n3. Carefully transfer chicken to work surface and let stand until cool enough to handle. Set a fine-mesh strainer over a medium heatproof bowl and strain broth through it; discard solids. \n4. In a 3-quart saucier or saucepan, heat sesame oil over medium heat until shimmering. Add drained rice and cook, stirring frequently, until a sticky film develops on bottom of pot, about 3 minutes. Add carrot, onion, and zucchini and cook, stirring frequently, until vegetables have softened slightly and rice grains are slightly translucent around their edges, about 2 minutes. \n5. Add 6 cups (1.4L) strained broth and stir to scrape up any starchy coating on bottom of pan. Bring to a rapid simmer, then cook, stirring occasionally to make sure nothing sticks to bottom of pan, until rice grains are plump and tender and liquid is thickened, about 30 minutes. \n6. Meanwhile, shred chicken meat, discarding skin and bones. \n7. Add two-thirds of both the chicken meat and scallion greens to juk along with remaining 2 cloves minced garlic and simmer until chicken is warmed through; if juk is thicker than you'd like, thin as desired with remaining broth (or reserve extra broth for another use). Season juk with salt to taste. \n8. Ladle juk into individual serving bowls, garnish with remaining shredded chicken and scallion greens, sprinkle with sesame seeds, and serve."
        menuNutritionLabel.isHidden = true
        nutritionInformationLabel.isHidden = true
        kindOfNutrition.isHidden = true
    }
    
    func PastaCarbonara() {
        menuDetailsImage.image = #imageLiteral(resourceName: "breakfast-2")
        menuNameLabel.text = "Pasta Carbonara"
        menuPortionLabel.text = "1 plate \n337kcal"
        menuIngredientLabel.text = "1 tbsp Extra virgin olive oil \n1/2 pound Pancetta \n1-2 Garlic cloves, minced, \n3-4 Whole Eggs \n1 cup Grated Parmesan \n1 pound Spaghetti Pasta \nSalt and black pepper"
        caloriesIngredientLabel.text = "120kcal \n133kcal \n17kcal \n288kcal \n200kcal \n130kcal"
        menuInstructionsLabel.text = "1. Heat pasta water: Put a large pot of salted water on to boil (1 Tbsp salt for every 2 quarts of water). \n2. Sauté pancetta and garlic: While the water is coming to a boil, heat the olive oil in a large sauté pan over medium heat. Add the pancetta and cook slowly until crispy. \n3.  Beat eggs and half of the cheese: In a small bowl, beat the eggs and mix in about half of the cheese. \n4. Cook pasta: Once the water has reached a rolling boil, add the dry pasta, and cook, uncovered, at a rolling boil. \n5. Toss pasta with pancetta: When the pasta is al dente (still a little firm, not mushy), use tongs to move it to the bowl with the pancetta and garlic. Let it be dripping wet. Reserve some of the pasta water. \nMove the pasta from the pot to the bowl quickly, as you want the pasta to be hot. It's the heat of the pasta that will heat the eggs sufficiently to create a creamy sauce. \nToss everything to combine, allowing the pasta to cool just enough so that it doesn't make the eggs curdle when you mix them in. (That's the tricky part). \n6. Add the beaten egg mixture: Add the beaten eggs with cheese and toss quickly to combine once more. Add salt to taste. Add some pasta water back to the pasta to keep it from drying out. \n7. Serve at once with the rest of the parmesan and freshly ground black pepper."
        menuNutritionLabel.isHidden = true
        nutritionInformationLabel.isHidden = true
        kindOfNutrition.isHidden = true
    }
    
    // Lunch
    func SpicyKimchiRamen() {
        menuDetailsImage.image = #imageLiteral(resourceName: "lunch-1")
        menuNameLabel.text = "Spicy Kimchi Ramen"
        menuPortionLabel.text = "1 bowl \n308kcal"
        menuIngredientLabel.text = "6-8 servings \n1 pound Boneless Chicken \n4 Cloves Garlic, grated \n1 tbsp Ginger, grated \n2 tbsp Soy Sauce \n1 tsp Sesame Oil \n1 Onion, finely chopped \n16 ounces Kimchi, squeezed dry \n3 tbsp Gochujang \n1 tbsp Gochugaru \n8 cups Chicken or Vegetable Broth \n4 cups Water \n6 packages Instant ramen noodles \n6 to 8 poached eggs \n2 bunches of scallions, chopped"
        caloriesIngredientLabel.text = "120kcal \n32kcal \n20kcal \n22kcal \n120kcal \n32kcal \n 140kcal \n135kcal \n45kcal \n72kcal \n0kcal \n1200kcal"
        menuInstructionsLabel.text = "1. Place chicken, garlic, ginger, soy sauce, and sesame oil in a small mixing bowl and stir to combine. Let marinate for 15 minutes. \n2. Add chicken and marinade to a heavy-bottom soup pot over medium-low heat. Let cook, stirring occasionally, for 8-10 minutes. Add onion to pot and cook, stirring occasionally, 5-8 minutes, or until onion has softened. \n3. Turn up heat to medium high and add kimchi (no juice), gochujang, and gochugaru. Cook, stirring frequently, for 2 minutes. Add kimchi juice, broth, and water, stir to combine, and lower heat to maintain a simmer for 20 minutes. If you have time to spare, feel free to let simmer for a bit longer. \n4. During the last 2 to 3 minutes of the ramen broth simmering, cook ramen noodles in boiling water until just cooked through (if you cook too long, they will turn to mush). \n5. Divide ramen broth between 6 to 8 bowls. Gently lower in ramen noodles into each bowl. Top with a poached egg and a sprinkle of scallions. Dig in, slurp like crazy, and devour."
        menuNutritionLabel.isHidden = true
        nutritionInformationLabel.isHidden = true
        kindOfNutrition.isHidden = true
    }

    func PaleoGadoGado() {
        menuDetailsImage.image = #imageLiteral(resourceName: "lunch-2")
        menuNameLabel.text = "Paleo Gado Gado"
        menuPortionLabel.text = "1 bowl / 450gr \n594kcal"
        menuIngredientLabel.text = "1 Cauliflower \n400 g Green Beans \n200 g Chicken Filet \n75 g Bean Sprouts \n1 Mango in cubes \n1/2 Cucumber in small cubes \n1 Broccoli \n3 Cooked Eggs \nSate sauce ingredients \n170 g Almond Butter \n1 Onion finely sliced \n2 Cloves of garlic sliced \n1 tsp Shrimp Paste \n1 tsp Ginger \n1 can of Coconut Milk"
        caloriesIngredientLabel.text = "120kcal \n133kcal \n17kcal \n288kcal \n200kcal \n130kcal"
        menuInstructionsLabel.text = "1. Quickly cook the broccoli and the green beans in boiling water. The broccoli needs no more than 2-3 minutes. The beans need just a bit longer. It needs to be cooked but with a good bite. \n2. Make the sauce by adding a bit of coconut oil into a sauce pan. Bake the onions until translucent. Add the garlic and bake for a minute. \n3. Add the shrimp paste and the ginger. Bake this for a minute or so and add the almond butter. \n4. Add the coconut milk last and stir until it becomes a smooth sauce. Season with salt and pepper to taste \n5. Take two large bowls and make a base with the cauliflower rice. Divide the veggies on top, the chicken and the mango. Add a spoonful of the sauce  on top and add the eggs last. \n6.Traditionally gado gado is served luke warm or cold. \n7. Serve with the remaining sate sauce. \n8. Enjoy your meal!"
        menuNutritionLabel.isHidden = true
        nutritionInformationLabel.isHidden = true
        kindOfNutrition.isHidden = true
    }
    
    func PrimaveraPizza() {
        menuDetailsImage.image = #imageLiteral(resourceName: "food???")
        menuNameLabel.text = "Primavera Pizza"
        menuPortionLabel.text = ""
        menuIngredientLabel.text = "80 g Strong White Flour \n80 g Strong Brown Flour \n1 tsp Fast Acting Yeast \n100-120ml Warm Water \nPinch of Salt \n1 tin of chopped Tomatoes \n2 tbsp Tomato Puree \n1 tsp Dried Oregano \n70 g Cooked Peas \n125 g Asparagus \n80 g Courgette \n125 g Light Mozzarella Cheese \n45 g Extra Mature Cheddar grated"
        totalCaloriesLabel.isHidden = true
        caloriesIngredientLabel.isHidden = true
        menuInstructionsLabel.text = "1. Preheat the oven to 220C. \n2. Mix the flours, yeast and a pinch of salt in a bowl. Pour in the warm water and mix to a soft dough. Knead for 5 mins. Then cut in half and roll out into two pizza bases approximately 25cm diameter. Place onto baking sheets covered in oiled baking paper and set aside for 20 minutes. \n3. Meanwhile in bowl mix the chopped tomatoes, tomato puree and oregano. \n4. When you are ready to assemble your pizza add some of the tomato sauce to the bases. Sprinkle with the vegetables and top with cheese. \n5. Cook for 15-20 minutes or until golden \n6. Enjoy your meal!"
        menuNutritionLabel.isHidden = true
        nutritionInformationLabel.isHidden = true
        kindOfNutrition.isHidden = true
    }
    
    // Dinner
    func MediterraneanCouscous() {
        menuDetailsImage.image = #imageLiteral(resourceName: "dinner-1")
        menuNameLabel.text = "Mediterranean Couscous Bowls"
        menuPortionLabel.text = "1 plate \n580kcal"
        menuIngredientLabel.text = "1 unit Bell Pepper \n4 ounce Grape Tomatoes \n1/4 ounce Dill \n4 tbsp Sour Cream \n1/2 cup Couscous \n1 tsp Smoked Paprika \n1 tbsp Turkish Spice Blend \n1 unit Cucumber \n1 unit Lemon \n1 unit Vegetable Broth \n4 tbsp Sabra Classic Hummus \n1/2 cup Feta Cheese \n1 tbsp Olive Oil \n1 tbsp Butter \nSalt and Pepper"
        totalCaloriesLabel.isHighlighted = true
        caloriesIngredientLabel.isHidden = true
        menuInstructionsLabel.text = "1. Preheat oven to 425 degrees. Wash and dry all produce. Core, deseed, and thinly slice bell pepper. Toss on one side of a baking sheet with a drizzle of olive oil, half the Turkish Spice, salt, and pepper. Toss tomatoes on empty side with a drizzle of olive oil, salt, and pepper. Roast on top rack until bell pepper is browned and softened and tomatoes begin to burst, 15-17 minutes. (For 4 servings, use 2 baking sheets; roast tomatoes on middle rack and bell pepper on top rack.) \n2. Meanwhile, trim and halve cucumber lengthwise; thinly slice crosswise into half-moons. Pick and roughly chop fronds from dill. Zest and quarter lemon. \n3. In a small bowl, combine cucumber, half the dill, a squeeze of lemon juice, a drizzle of olive oil, salt, and pepper. In a separate small bowl, combine sour cream, a squeeze of lemon juice to taste, salt, and pepper. \n4. In a small pot, combine ¾ cup water (1½ cups for 4 servings), stock concentrate, remaining Turkish Spice, 1 TBSP butter (2 TBSP for 4), and a pinch of salt. Bring to a boil, then stir in couscous. Cover and remove from heat. Let stand until water has absorbed and couscous is tender, at least 5 minutes or until ready to serve. \n5. In a third small bowl, combine hummus and paprika to taste (start with a pinch, then taste and add more from there if desired)."
        kindOfNutrition.text = "Fat \nSaturated Fat \nCarbs \nSugar \nDietary Fiber \nProtein \nCholesterol \nSodium"
        menuNutritionLabel.text = "31g \n13g \n60g \n9g \n8g \n17g \n60mg \n700mg"
    }
    
    func MiddleEastern() {
        menuDetailsImage.image = #imageLiteral(resourceName: "dinner-3")
        menuNameLabel.text = "Middle Eastern Steak & Rice Pilaf"
        menuPortionLabel.text = "1 plate \n780kcal"
        totalCaloriesLabel.isHidden = true
        caloriesIngredientLabel.isHidden = true
        menuIngredientLabel.text = "6 ounce Carrot \n1 unit Lemon \n1 tbsp Yogurt \n1 unit Zucchini \n1 tsp Smoked Paprika \n2 tbsp Sour Cream \n1 tsp Chili Flakes \n1/2 cup Basmati Rice \n9 ounce Middle Eastern Spiced Steak \n2 clove Garlic \n1 unit Chicken Stock Concentrate \n1/2 ounce Sliced Almonds \n1 tbsp Butter \n4 tsp Olive Oil \nSalt and Pepper"
        menuInstructionsLabel.text = "1.  Adjust rack to top position and preheat oven to 450 degrees. Wash and dry all produce. • Trim, peel, and cut carrots on a diagonal into ½-inch-thick pieces. Trim and halve zucchini lengthwise; cut crosswise into ½-inch-thick halfmoons. Trim and grate cucumber on the largest holes of a box grater. Mince or grate garlic. Quarter lemon. • 4 SERVINGS: Adjust racks to top and middle positions. \n2. Toss carrots and zucchini on a baking sheet with a large drizzle of olive oil, paprika, salt, and pepper. • Roast on top rack until browned and tender, 18-22 minutes. • 4 SERVINGS: Divide veggies between 2 baking sheets. Roast carrots on top rack and zucchini on middle rack. \n3.Meanwhile, heat a drizzle of olive oil in a small pot over medium-high heat. Reserve a pinch of garlic (you’ll use it in the tzatziki); add remaining garlic to pot. Cook until fragrant, 30 seconds. • Stir in rice, ¾ cup water, stock concentrate, and a big pinch of salt. Bring to a boil, then cover and reduce to a low simmer. Cook until rice is tender, 15-18 minutes. Keep covered off heat until ready to serve. • 4 SERVINGS: Use a medium pot. Use 1½ cups water. \n4.  In a small bowl, combine yogurt, sour cream, half the cucumber (taste and add more from there if desired), juice from 1 lemon wedge, and a big pinch of salt. Stir in reserved garlic if desired. • 4 SERVINGS: Squeeze in juice from 2 lemon wedges. \n5. Season steak* with salt and pepper. Heat a drizzle of olive oil in a large pan over medium-high heat. • Add steak and cook until browned, 4-7 minutes on first side. Flip, reduce heat to medium, and cook until browned and cooked to desired doneness, 4-7 minutes more. Transfer to a cutting board to rest. \n6. Fluff rice with a fork and stir in 1 TBSP butter. Divide between bowls. Arrange veggies on one side of rice. • Slice steak against the grain and arrange next to veggies. Top with tzatziki and almonds. Sprinkle with chili flakes if desired. Serve with remaining lemon wedges on the side. • 4 SERVINGS: Stir in 2 TBSP butter. • TIP: Toast your almonds before garnishing if you like."
        kindOfNutrition.text = "Protein \nCarbs \nFat \nSaturated Fat \nSugar \nDietary Fiber \nCholesterol \nSodium"
        menuNutritionLabel.text = "33g   \n68g  \n44g \n15g \n12g  \n7g \n110mg \n620mg"
    }
    
    func HarissaSweet() {
        menuDetailsImage.image = #imageLiteral(resourceName: "dinner-2")
        menuNameLabel.text = "Harissa Sweet Potato Pockets"
        menuPortionLabel.text = "1 plate \n740kcal"
        menuIngredientLabel.text = "2 unit Sweet Potato \n2 clove Garlic \n1/4 ounce Dill \n4 tbsp Mayonnaise \n2 unit Whole Wheat Pizza \n1 tbsp Harissa Powder \n1 unit Cucumber \n1 unit Avocado \n5 tbsp White Wine Vinegar \n1/2 ounce Pepitas \n2 tsp Olive Oil \nSalt and Pepper"
        totalCaloriesLabel.isHidden = true
        caloriesIngredientLabel.isHidden = true
        menuInstructionsLabel.text = "1. Adjust racks to middle and top positions and preheat oven to 450 degrees. Wash and dry all produce. Slice sweet potatoes into ¼-inch-thick rounds. Toss on a baking sheet with a drizzle of olive oil, 1 tsp harissa powder (2 tsp for 4 servings; you’ll use more later), and a pinch of salt and pepper. Roast on middle rack, flipping halfway through, until tender, 18-20 minutes. \n2. Meanwhile, mince or grate half the garlic (all for 4 servings). Halve cucumber lengthwise; thinly slice crosswise into half-moons. Pick and roughly chop fronds from dill until you have 2 tsp (4 tsp for 4). Halve, pit, and peel avocado, then thinly slice. \n3. In a small bowl, combine mayonnaise, a pinch of minced garlic, and a pinch of harissa powder. Taste and add more garlic and harissa powder if desired. Season with salt and pepper \n4. In a medium bowl, toss together cucumber, chopped dill, vinegar, a drizzle of olive oil, and a pinch of salt and pepper. \n5.Halve pitas and place on a second baking sheet. Once sweet potatoes have 2-3 minutes left, add pitas to top rack and toast until warmed through (they should still be soft and flexible). \n6.Spread harissa mayo inside each toasted pita half, then fill with sweet potatoes, avocado, a few pepitas, and a small amount of cucumber salad. Divide stuffed pitas between plates. Serve with remaining cucumber salad on the side; sprinkle with remaining pepitas."
        kindOfNutrition.text = "Protein \nCarbs \nFat \nSaturated Fat \nSugar \nDietary Fiber \nCholesterol \nSodium"
        menuNutritionLabel.text = "14g   \n84g  \n42g \n7g \n11g  \n15g \n25mg \n600mg"
        
    }
}
