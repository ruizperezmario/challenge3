//
//  SpaceObject.m
//  challenge3
//
//  Created by Mario Ruiz on 2/20/15.
//  Copyright (c) 2015 Mario Ruiz. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"

@implementation SpaceObject

-(id) init
{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id) initWithData:(NSDictionary *)data andImage:(UIImage *)image
{
    self = [super init];
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestFact = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = image;
    
    return self;
}

@end
