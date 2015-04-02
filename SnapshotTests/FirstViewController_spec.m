#import "FirstViewController.h"
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>

SpecBegin(FirstViewController)

describe(@"FirstViewController", ^{
  
  __block FirstViewController *subject;

  beforeAll(^{
    subject = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
  });
  
  it(@"renders correctly", ^{
    expect(subject).to.haveValidSnapshot();
  });
  
});

SpecEnd