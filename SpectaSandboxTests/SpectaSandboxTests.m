//
//  SpectaSandboxTests.m
//  SpectaSandboxTests
//
//  Created by kenta.enomoto on 2017/11/30.
//

#import "ViewController.h"
#include <Specta/Specta.h>
#include <Expecta/Expecta.h>
#include <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>

SpecBegin(ViewController)

__block ViewController *sut;

describe(@"local", ^{
    it (@"Initial view controller looks corrects", ^{
        [sut view];

        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        sut = [storyboard instantiateInitialViewController];
//        expect(sut).to.recordSnapshot();
        expect(sut).to.haveValidSnapshot();
    });

});

SpecEnd
