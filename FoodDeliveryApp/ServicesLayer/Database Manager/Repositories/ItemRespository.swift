//
//  File.swift
//  FoodDeliveryApp
//
//  Created by Madhav Jaisankar on 2021-04-16.
//  Copyright © 2021 Madhav Jaisankar. All rights reserved.
//

import Foundation

struct DrinksStock: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var stock: Int
}


class ItemRepository: I_ItemsRepository {
    var cocktails:[Drinks] = cock
    var stock:[DrinksStock] = productStock
    
    func addItem(drink: Drinks) {
        let drinkItem:Drinks = drink
        cocktails.append(drinkItem);
    }
    
    func getProductStock() -> [DrinksStock] {
        return stock
    }
    
    func removeItem() -> String {
        return "Nothing for you here."
    }
    
    func getAllItems() -> [Drinks] {
        return cocktails
    }
    
    
}

let productStock = [
    DrinksStock(name: "Adam", price: 47.56, stock: 11),
    DrinksStock(name: "Apello", price: 63.34, stock: 5),
    DrinksStock(name: "Almeria", price: 39.61, stock: 7)
]

// simulated data received from database
let cock = [
    Drinks(name: "A1", image: "2x8thr1504816928", description: "Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.", type: "Alcoholic"),
    Drinks(name: "ABC", image: "tqpvqp1472668328", description: "Layered in a shot glass.", type: "Alcoholic"),
    Drinks(name: "Ace", image: "l3cd7f1504818306", description: "Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.", type: "Alcoholic"),
    Drinks(name: "Adam", image: "v0at4i1582478473", description: "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.", type: "Alcoholic"),
    Drinks(name: "Ordinary Drink", image: "rhhwmp1493067619", description: "Pour Vodka and Gin over ice, add Tonic and Stir", type: "Alcoholic"),
    Drinks(name: "ACID", image: "xuxpxt1479209317", description: "Poor in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.", type: "Alcoholic"),
    Drinks(name: "A. J.", image: "l74qo91582480316", description: "Shake ingredients with ice, strain into a cocktail glass, and serve.", type: "Alcoholic"),
    Drinks(name: "Asunto", image: "h5za6y1582477994", description: "Pour schnapps, orange juice, and cranberry juice over ice in a highball glass. Top with club soda and serve.", type: "Alcoholic"),
    Drinks(name: "Apello", image: "uptxtv1468876415", description: "Stirr. Grnish with maraschino cherry.", type: "Alcoholic"),
    Drinks(name: "Avalon", image: "3k9qic1493068931", description: "Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition.", type: "Alcoholic"),
    Drinks(name: "Abilene", image: "smb2oe1582479072", description: "Pour all of the ingredients into a highball glass almost filled with ice cubes. Stir well.", type: "Alcoholic"),
    Drinks(name: "Almeria", image: "rwsyyu1483388181", description: "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.", type: "Alcoholic"),
    Drinks(name: "Addison", image: "yzva7x1504820300", description: "Shake together all the ingredients and strain into a cold glass.",type: "Alcoholic"),
    Drinks(name: "Acapulco", image: "il9e0r1582478841", description: "Combine and shake all ingredients (except mint) with ice and strain into an old-fashioned glass over ice cubes. Add the sprig of mint and serve.",type: "Alcoholic"),
    Drinks(name: "Afinidad", image: "il9e0r1582478841", description: "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",type: "Alcoholic"),
    Drinks(name: "Affinity", image: "wzdtnn1582477684", description: "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",type: "Alcoholic"),
    Drinks(name: "Applecar", image: "sbffau1504389764", description: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",type: "Alcoholic"),
    Drinks(name: "Aviation", image: "ruutxt1478253328", description: "Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.",type: "Alcoholic"),
    Drinks(name: "Alexander", image: "urystu1478253039", description: "Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",type: "Alcoholic"),
    Drinks(name: "Algonquin", image: "uwryxx1483387873", description: "Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.",type: "Alcoholic"),
    Drinks(name: "Allegheny", image: "uwvyts1483387934", description: "Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.",type: "Alcoholic"),
    Drinks(name: "Artillery", image: "g1vnbe1493067747", description: "Stir all ingredients with ice, strain into a cocktail glass, and serve.",type: "Alcoholic"),
    Drinks(name: "Afterglow", image: "vuquyv1468876052", description: "Mix. Serve over ice.",type: "Alcoholic"),
    Drinks(name: "Autodaf", image: "7dkf0i1487602928", description: "Mix and fill up with soda water. Drunk by finns on a sunny day any time of the year and day.",type: "Alcoholic"),
    Drinks(name: "Afternoon", image: "vyrurp1472667777", description: "Build into a suiting glass, with no ice. Cream on top if wanted. Served directly.",type: "Alcoholic"),
    Drinks(name: "After sex", image: "xrl66i1493068702", description: "Pour the vodka and creme over some ice cubes in a tall glass and fill up with juice. to make it beuty full make the top of the glass with a grenadine and sugar",type: "Alcoholic"),
    Drinks(name: "B-53", image: "rwqxrv1461866023", description: "Layer the Kahlua, Sambucca and Grand Marnier into a shot glas in that order. Better than B-52",type: "Alcoholic"),
    Drinks(name: "B-52", image: "5a3vg61504372070", description: "Layer ingredients into a shot glass. Serve with a stirrer.",type: "Alcoholic"),
    Drinks(name: "Bijou", image: "rysb3r1513706985", description: "Stir in mixing glass with ice and strain",type: "Alcoholic"),
    Drinks(name: "Boxcar", image: "pwgtpa1504366376", description: "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.",type: "Alcoholic"),
    Drinks(name: "Big Red", image: "yqwuwu1441248116", description: "Pour ingredients into 1 ounce shot glass",type: "Alcoholic"),
    Drinks(name: "Bellini", image: "eaag491504367543", description: "Pour peach pur into chilled flute, add sparkling wine. Stir gently.",type: "Alcoholic"),
    Drinks(name: "Bramble", image: "lvzl3r1504372526", description: "Fill glass with crushed ice. Build gin, lemon juice and simple syrup over. Stir, and then pour blackberry liqueur over in a circular fashion to create marbling effect. Garnish with two blackberries and lemon slice.",type: "Alcoholic"),
    Drinks(name: "Balmoral", image: "vysuyq1441206297", description: "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",type: "Alcoholic"),
    Drinks(name: "Bluebird", image: "5jhyd01582579843", description: "In a mixing glass half-filled with crushed ice, combine the gin, triple sec, Curacao, and bitters. Stir well. Strain into a cocktail glass and garnish with the lemon twist and the cherry.",type: "Alcoholic"),
    Drinks(name: "Brooklyn", image: "ojsezf1582477277", description: "Combine ingredients with ice and stir until well-chilled. Strain into a chilled cocktail glass.",type: "Alcoholic"),
    Drinks(name: "Boomerang", image: "3m6yz81504389551", description: "In a mixing glass half-filled with ice cubes, combine the gin, vermouth, bitters, and maraschino liqueur. Stir well. Strain into a cocktail glass and garnish with the cherry.",type: "Alcoholic"),
    Drinks(name: "Bora Bora", image: "xwuqvw1473201811", description: "Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of pineapple and one cherry.",type: "Alcoholic"),
    Drinks(name: "Barracuda", image: "jwmr1x1504372337", description: "Shake pour ingredients with ice. Strain into glass, top with Sparkling wine.",type: "Alcoholic"),
    Drinks(name: "Buccaneer", image: "upvtyt1441249023", description: "Pour the corona into an 18oz beer glass pour the bacardi limon into the beer stir very gently",type: "Alcoholic"),
    Drinks(name: "Brigadier", image: "nl89tf1518947401", description: "Mix ingredients in a warmed mug and stir.",type: "Alcoholic"),
    Drinks(name: "Broadside", image: "l2o6xu1582476870", description: "Half fill the glass with ice cubes. Crush the wormwood and add to ice. Pour rum, scotch and butters, then serve!",type: "Alcoholic"),
    Drinks(name: "Blackthorn", image: "xvswvy1441209430", description: "Stir sloe gin and vermouth with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.",type: "Alcoholic"),
    Drinks(name: "Bob Marley", image: "rrqrst1477140664", description: "Layer in a 2 oz shot glass or pony glass",type: "Alcoholic"),
    Drinks(name: "Bubble Gum", image: "spuurv1468878783", description: "Layer in order into a shot glass.",type: "Alcoholic"),
    Drinks(name: "Bible Belt", image: "6bec6v1503563675", description: "Mix all ingredients, and pour over ice.",type: "Alcoholic"),
    Drinks(name: "Brain Fart", image: "rz5aun1504389701", description: "Mix all ingredients together. Slowly and gently. Works best if ice is added to punch bowl and soda's are very cold.",type: "Alcoholic"),
    Drinks(name: "Bloody Mary", image: "t6caa21582485702", description: "Stirring gently, pour all ingredients into highball glass. Garnish.",type: "Alcoholic"),
    Drinks(name: "Blue Lagoon", image: "5wm4zo1582579154", description: "Pour vodka and curacao over ice in a highball glass. Fill with lemonade, top with the cherry, and serve.",type: "Alcoholic"),
    Drinks(name: "Boston Sour", image: "kxlgbi1504366100", description: "Shake juice of lemon, powdered sugar, blended whiskey, and egg white with cracked ice and strain into a whiskey sour glass. Add the slice of lemon, top with the cherry, and serve.",type: "Alcoholic"),
    Drinks(name: "Brandy Flip", image: "6ty09d1504366461", description: "In einem Shaker, der halb mit Eisw ist, Brandy, Ei, Zucker und Sahne vermengen. Gut schctte ln. In ein Sour Glas abseihen und mit der Muskatnuss garnieren.",type: "Alcoholic"),
]

