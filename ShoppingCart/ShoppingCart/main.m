//
//  main.m
//  ShoppingCart
//
//  Created by saekof on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Products.h"
#import "ShoppingCart.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray<Products*>* pArray = [[NSMutableArray alloc] init];
        ShoppingCart* s1 = [[ShoppingCart alloc] initWithProductItemArray:pArray totalPricce:0];
        
        Drink* d1 = [[Drink alloc] initWithIsDrinkDiet:412 productName:@"Pepsi" productPrice:2 productMadeInCountry:@"USA" isDrinkDiet:NO drinkSize:150];
        Drink* d2 = [[Drink alloc] initWithIsDrinkDiet:183 productName:@"Ginger zelo" productPrice:3 productMadeInCountry:@"Canada" isDrinkDiet:YES drinkSize:200];
        
        Food* f1 = [[Food alloc] initWithFoodSize:100 productName:@"Chicken" productPrice:8 productMadeInCountry:@"Canada" foodSize:4 foodCalories:350 foodIngredients:@[@"chiken",@"oil",@"chees"]];
        Food* f2 = [[Food alloc] initWithFoodSize:101 productName:@"Pasta" productPrice:18 productMadeInCountry:@"Canada" foodSize:3 foodCalories:250 foodIngredients:@[@"pasta",@"meet",@"spinach"]];
        
        NSMutableArray<Material*>* materialArray = [[NSMutableArray alloc] init];
        Material* m1 = [[Material alloc] initWithMaterialCode:10 materialName:@"cotton"];
        Material* m2 = [[Material alloc] initWithMaterialCode:11 materialName:@"Nylon"];
        [materialArray addObject:m1];
        [materialArray addObject:m2];
        Cloth* c1 = [[Cloth alloc] initWithClothMaterials:701 productName:@"T-shirt" productPrice:15 productMadeInCountry:@"China" clothMaterials:materialArray];
        
        // 3
        [s1 addProductItem:d1];
        [s1 addProductItem:d1];
        [s1 addProductItem:d1];

        // 1
        [s1 addProductItem:d2];
        
        // 2
        [s1 addProductItem:f1];
        [s1 addProductItem:f1];

        // 2
        [s1 addProductItem:f2];
        [s1 addProductItem:f2];

        // 1
        [s1 addProductItem:c1];
        
        // calucurate price
        int totalPrice = 0;
        for(int i = 0; i < s1.productItemArray.count; i++) {
            totalPrice += [[s1.productItemArray objectAtIndex:i] calculateCost];
        }
        NSLog(@"totaLprice should be 196 = %d",totalPrice);
        
        [s1 printAllPurchaseProducts];
    }
    return 0;
}
