//
//  ShoppingCart.h
//  ShoppingCart
//
//  Created by saekof on 2017-03-06.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Products.h"

@interface ShoppingCart : NSObject

@property (strong, nonatomic)NSMutableArray<Products*>* productItemArray;

- (id)initWithProductItemArray:(NSMutableArray<Products*>*)productItemArray;
- (void)addProductItem:(Products*)product;
- (void)printAllPurchaseProducts;

@end
