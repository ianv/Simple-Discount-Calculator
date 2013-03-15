//
//  ViewController.h
//  Simple Discount Calculator
//
//  Created by Ian Vergara on 3/12/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *priceField;
@property (weak, nonatomic) IBOutlet UITextField *discountField1;
@property (weak, nonatomic) IBOutlet UITextField *discountField2;
@property (weak, nonatomic) IBOutlet UITextField *salesTaxField;

@property (weak, nonatomic) IBOutlet UIButton *quickDiscountButton10;
@property (weak, nonatomic) IBOutlet UIButton *quickDiscountButton15;
@property (weak, nonatomic) IBOutlet UIButton *quickDiscountButton25;
@property (weak, nonatomic) IBOutlet UIButton *quickDiscountButton50;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;

@property (weak, nonatomic) IBOutlet UILabel *subtotalLabel;
@property (weak, nonatomic) IBOutlet UILabel *discountLabel1;
@property (weak, nonatomic) IBOutlet UILabel *discountLabel2;
@property (weak, nonatomic) IBOutlet UILabel *salesTaxLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

-(IBAction)calculateTotal:(UIButton*)sender;
-(IBAction)defaultDiscount:(UIButton*)sender;

@end
