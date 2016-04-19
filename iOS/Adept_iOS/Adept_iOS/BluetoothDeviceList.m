//
//  BluetoothDeviceList.m
//  Adept_iOS
//
//  Created by Martin Kuvandzhiev on 4/12/16.
//  Copyright © 2016 Martin Kuvandzhiev. All rights reserved.
//

#import "BluetoothDeviceList.h"

@implementation BluetoothDeviceList

+ (id)sharedInstance
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init]; // or some other init method
    });
    return _sharedObject;
}

- (instancetype) init
{

    if(self)
    {
        self.taoDevice = [[BluetoothDevice alloc] init];
        self.taoDevice.displayName = @"Tao-Wellshell";
        self.taoDevice.deviceName = @"TAO-AA-0051";
        
        self.moovDevice = [[BluetoothDevice alloc] init];
        self.moovDevice.displayName = @"Moov";
        self.moovDevice.deviceName = @"Moov";
        
        self.heartRateDevice = [[BluetoothDevice alloc] init];
        self.heartRateDevice.displayName = @"Heart Rate Sensor";
        self.heartRateDevice.deviceName = @"Heart Rate Sensor";
        
        self.adeptDevice = [[BluetoothDevice alloc] init];
        self.adeptDevice.displayName = @"Adept Stick";
        self.adeptDevice.deviceName = @"AdeptStick";
        
        self.appleWatch = [[BluetoothDevice alloc] init];
        self.appleWatch.displayName = @"Apple watch";
        self.appleWatch.deviceName = @"AppleFukinWatch";
        self = [super init];
        self = (BluetoothDeviceList *)[NSArray arrayWithObjects:self.adeptDevice, self.moovDevice, self.taoDevice, self.heartRateDevice, self.appleWatch, nil];
        
//        self.adeptDevice = [self objectAtIndex:0];
//        self.moovDevice = [self objectAtIndex:1];
//        self.taoDevice = [self objectAtIndex:2];
//        self.heartRateDevice = [self objectAtIndex:3];
//        self.appleWatch = [self objectAtIndex:4];
    }
    return self;
}

@end
