//
//  ShoppingCart.m
//  ShoppingCart
//
//  Created by saekof on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ShoppingCart.h"

@implementation ShoppingCart

- (id)initWithProductItemArray:(NSMutableArray<Products *> *)productItemArray totalPricce:(int)totalPrice {
    self = [super init];
    if (self) {
        self.productItemArray = productItemArray;
    }
    return self;
}

- (void)addProductItem:(Products *)product {
    [self.productItemArray addObject:product];
}

- (void)addProductPrice:(int)productID amount:(int)amount {
    int price = 0;
    if (productID == 412) {
        price = 2 * amount;
    } else if(productID == 183) {
        price = 3 * amount;
    } else if(productID == 100) {
        price = 8 * 41 * amount;
    } else if(productID == 101) {
        price = 18 * 31 * amount;
    } else if(productID == 701) {
        price = 15 * amount;
    }
    NSLog(@"ID = %d price = %d", productID, price);
    self.totalPrice += price;
}

- (int)totalProductsPrice {
    return self.totalPrice;
}

- (void)printAllPurchaseProducts {
    for (int i = 0; i <self.productItemArray.count; i++) {
    
        Products* p = [self.productItemArray objectAtIndex:i];
        NSLog(@"%@",p.productName);
    }
}

@end
