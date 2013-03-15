//
//  ViewController.m
//  Simple Discount Calculator
//
//  Created by Ian Vergara on 3/12/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    float _price, _discount1, _discount2, _salesTax;
}
@end

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.priceField resignFirstResponder];
    [self.discountField1 resignFirstResponder];
    [self.discountField2 resignFirstResponder];
    [self.salesTaxField resignFirstResponder];
}

-(IBAction)calculateTotal:(UIButton *)sender
{
    _price = self.priceField.text.floatValue;
    NSString *tempSubtotal = [NSString stringWithFormat:@"$%1.2f", _price];
    self.subtotalLabel.text = tempSubtotal;
    
    if (self.discountField1.text != nil) {
        _discount1 = _price * (self.discountField1.text.floatValue / 100);
        NSString *tempDiscount1 = [NSString stringWithFormat:@"$%1.2f", _discount1];
        self.discountLabel1.text = tempDiscount1;
        _price = _price - _discount1;
        
        if (self.discountField2.text != nil) {
            _discount2 = _price * (self.discountField2.text.floatValue / 100);
            NSString *tempDiscount2 = [NSString stringWithFormat:@"$%1.2f", _discount2];
            self.discountLabel2.text = tempDiscount2;
            _price = _price - _discount2;
        }
    }
    
    if (self.salesTaxField.text != nil){
        _salesTax = _price * (self.salesTaxField.text.floatValue / 100);
        NSString *tempSalesTax = [NSString stringWithFormat:@"$%1.2f", _salesTax];
        self.salesTaxLabel.text = tempSalesTax;
    }
    
    _price = _price + _salesTax;
    NSString *tempTotal = [NSString stringWithFormat:@"$%1.2f", _price];
    self.totalLabel.text = tempTotal;
    
    [self.priceField resignFirstResponder];
    [self.discountField1 resignFirstResponder];
    [self.discountField2 resignFirstResponder];
    [self.salesTaxField resignFirstResponder];
}

-(IBAction)defaultDiscount:(UIButton *)sender
{
    if ([sender.currentTitle isEqual: @"10%"]) {
        self.discountField1.text = @"10";
    }
    if ([sender.currentTitle isEqual: @"15%"]) {
        self.discountField1.text = @"15";
    }
    if ([sender.currentTitle isEqual: @"20%"]) {
        self.discountField1.text = @"20";
    }
    if ([sender.currentTitle isEqual: @"50%"]) {
        self.discountField1.text = @"50";
    }
    
    [self.priceField resignFirstResponder];
    [self.discountField1 resignFirstResponder];
    [self.discountField2 resignFirstResponder];
    [self.salesTaxField resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
