//
//  Treatment.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "Treatment.h"

@implementation Treatment
+(NSMutableArray*)treatments {
    static NSMutableArray *array;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        array = [NSMutableArray array];
        Treatment * treatmentZero = [[Treatment alloc] init];
        treatmentZero.name = @"Rest";
        treatmentZero.injuryName = @"Ankle Sprain";
        treatmentZero.shortDescription = @"...";
        treatmentZero.picture = [UIImage imageNamed:@"restAnkle.jpg"];
        treatmentZero.longDescription = @"Stay off the injured ankle. Walking may cause further injury. ";
        treatmentZero.rating = 3;
        
        Treatment * treatmentOne = [[Treatment alloc] init];
        treatmentOne.name = @"Compression";
        treatmentOne.injuryName = @"Ankle Sprain";
        treatmentOne.shortDescription = @"...";
        treatmentOne.picture = [UIImage imageNamed:@"compressAnkle.jpg"];
        treatmentOne.longDescription = @"An elastic wrap may be recommended to control swelling.";
        treatmentOne.rating = 4;
        
        Treatment * treatmentTwo = [[Treatment alloc] init];
        treatmentTwo.name = @"Ice";
        treatmentTwo.injuryName = @"Ankle Sprain";
        treatmentTwo.shortDescription = @"...";
        treatmentTwo.longDescription = @"Apply an ice pack to the injured area, placing a thin towel between the ice and the skin. Use ice for 20 minutes and then wait at least 40 minutes before icing again.";
        treatmentTwo.picture = [UIImage imageNamed:@"iceAnkle.jpg"];
        treatmentTwo.rating = 4;
        
        Treatment * treatmentThree = [[Treatment alloc] init];
        treatmentThree.name = @"Ice";
        treatmentThree.injuryName = @"Pulled Groin";
        treatmentThree.shortDescription = @"...";
        treatmentThree.longDescription = @"Ice the inside of your thigh to reduce pain and swelling. Experts recommend doing it for 20 to 30 minutes every 3 to 4 hours for 2 to 3 days, or until the pain is gone.";
        treatmentThree.picture = [UIImage imageNamed:@"iceGroin.jpg"];
        treatmentThree.rating = 2;
        
        Treatment * treatmentFour = [[Treatment alloc] init];
        treatmentFour.name = @"Compress";
        treatmentFour.injuryName = @"Pulled Groin";
        treatmentFour.shortDescription = @"...";
        treatmentFour.longDescription = @"Compress your thigh using an elastic bandage or tape.";
        treatmentFour.picture = [UIImage imageNamed:@"compressGroin.jpg"];
        treatmentFour.rating = 3;
        
        Treatment * treatmentFive = [[Treatment alloc] init];
        treatmentFive.name = @"Take Anti-Inflammatories";
        treatmentFive.injuryName = @"Pulled Groin";
        treatmentFive.shortDescription = @"...";
        treatmentFive.longDescription = @"Take anti-inflammatory painkillers. Non-steroidal anti-inflammatory drugs (NSAIDs), like Advil, Aleve, or Motrin, will help with pain and swelling. However, studies show their effects are controversial especially if taken long term.  Additionally, these drugs can have side effects; they should be used only occasionally, unless your doctor specifically says otherwise";
        treatmentFive.picture = [UIImage imageNamed:@"antiInflammatory.jpg"];
        treatmentFive.rating = 3;
        
        Treatment * treatmentSix = [[Treatment alloc] init];
        treatmentSix.name = @"Rest";
        treatmentSix.injuryName = @"Shin Splints";
        treatmentSix.shortDescription = @"...";
        treatmentSix.longDescription = @"Shin splints needs time to heal.";
        treatmentSix.picture = [UIImage imageNamed:@"restShin.jpg"];
        treatmentSix.rating = 2;
        
        Treatment * treatmentSeven = [[Treatment alloc] init];
        treatmentSeven.name = @"Ice";
        treatmentSeven.injuryName = @"Shin Splints";
        treatmentSeven.shortDescription = @"...";
        treatmentSeven.longDescription = @"Ice your shin to ease pain and swelling. Do it for 20-30 minutes every 3 to 4 hours for 2 to 3 days, or until the pain is gone.";
        treatmentSeven.picture = [UIImage imageNamed:@"iceShin.jpg"];
        treatmentSeven.rating = 4;
        
        Treatment * treatmentEight = [[Treatment alloc] init];
        treatmentEight.name = @"Take Anti-Inflammatories";
        treatmentEight.injuryName = @"Shin Splints";
        treatmentEight.shortDescription = @"...";
        treatmentEight.longDescription = @"Take anti-inflammatory painkillers. Non-steroidal anti-inflammatory drugs (NSAIDs), like Advil, Aleve, or Motrin, will help with pain and swelling. However, studies show their effects are controversial especially if taken long term.  Additionally, these drugs can have side effects; they should be used only occasionally, unless your doctor specifically says otherwise";
        treatmentEight.picture = [UIImage imageNamed:@"antiInflammatory.jpg"];
        treatmentEight.rating = 3;
        
        Treatment * treatmentNine = [[Treatment alloc] init];
        treatmentNine.name = @"Rest";
        treatmentNine.injuryName = @"Knee Ligament ACL Injury";
        treatmentNine.shortDescription = @"...";
        treatmentNine.longDescription = @"Avoid putting excess weight on your knee. You may need to use crutches for a time.";
        treatmentNine.picture = [UIImage imageNamed:@"restAcl.jpg"];
        treatmentNine.rating = 3;
        
        Treatment * treatmentTen = [[Treatment alloc] init];
        treatmentTen.name = @"Ice";
        treatmentTen.injuryName = @"Knee Ligament ACL Injury";
        treatmentTen.shortDescription = @"...";
        treatmentTen.longDescription = @"Ice your knee to reduce pain and swelling. Do it for 20-30 minutes every 3-4 hours for 2-3 days, or until the pain and swelling is gone.";
        treatmentTen.picture = [UIImage imageNamed:@"iceAcl.jpg"];
        treatmentTen.rating = 4;
        
        Treatment * treatmentEleven = [[Treatment alloc] init];
        treatmentEleven.name = @"Compression";
        treatmentEleven.injuryName = @"Knee Ligament ACL Injury";
        treatmentEleven.shortDescription = @"...";
        treatmentEleven.longDescription = @"Compress your knee. Use an elastic bandage, straps, or sleeves on your knee to control swelling.";
        treatmentEleven.picture = [UIImage imageNamed:@"compressAcl.jpg"];
        treatmentEleven.rating = 2;
        
        Treatment * treatmentTwelve = [[Treatment alloc] init];
        treatmentTwelve.name = @"Rest";
        treatmentTwelve.injuryName = @"Tennis elbow (epicondylitis)";
        treatmentTwelve.shortDescription = @"...";
        treatmentTwelve.longDescription = @"Rest and avoid any activity that causes pain.";
        treatmentTwelve.picture = [UIImage imageNamed:@"restElbow.jpg"];
        treatmentTwelve.rating = 1;
        
        Treatment * treatmentThirteen = [[Treatment alloc] init];
        treatmentThirteen.name = @"Take Anti-Inflammatories";
        treatmentThirteen.injuryName = @"Tennis elbow (epicondylitis)";
        treatmentThirteen.shortDescription = @"...";
        treatmentThirteen.longDescription = @"Take anti-inflammatory painkillers. Non-steroidal anti-inflammatory drugs (NSAIDs), like Advil, Aleve, or Motrin, will help with pain and swelling. However, studies show their effects are controversial especially if taken long term.  Additionally, these drugs can have side effects; they should be used only occasionally, unless your doctor specifically says otherwise";
        treatmentThirteen.picture = [UIImage imageNamed:@"antiInflammatory.jpg"];
        treatmentThirteen.rating = 2;
        
        Treatment * treatmentFourteen = [[Treatment alloc] init];
        treatmentFourteen.name = @"Ice";
        treatmentFourteen.injuryName = @"Tennis elbow (epicondylitis)";
        treatmentFourteen.shortDescription = @"...";
        treatmentFourteen.longDescription = @"Ice your elbow to reduce pain and swelling. Do it for 20-30 minutes every 3-4 hours for 2-3 days, or until the pain and swelling is gone.";
        treatmentFourteen.picture = [UIImage imageNamed:@"iceElbow.jpg"];
        treatmentFourteen.rating = 5;
        
        Treatment * treatmentFifteen = [[Treatment alloc] init];
        treatmentFifteen.name = @"Immobilization";
        treatmentFifteen.injuryName = @"Quadriceps Tendon Tear";
        treatmentFifteen.shortDescription = @"...";
        treatmentFifteen.longDescription = @"Doctors may recommend you wear a knee immobilizer or brace. This will keep your knee straight to help it heal. You will most likely need crutches to help you avoid putting all of your weight on your leg. You can expect to be in a knee immobilizer or brace for 3 to 6 weeks.";
        treatmentFifteen.picture = [UIImage imageNamed:@"immobilizeKnee.jpg"];
        treatmentFifteen.rating = 3;
        
        Treatment * treatmentSixteen = [[Treatment alloc] init];
        treatmentSixteen.name = @"Physical Therapy";
        treatmentSixteen.injuryName = @"Quadriceps Tendon Tear";
        treatmentSixteen.shortDescription = @"...";
        treatmentSixteen.longDescription = @"Physical therapy. Once the initial pain and swelling has settled down, physical therapy can begin. Specific exercises can restore strength and range of motion. Exercises will gradually be added to your program. Straight leg raises to strengthen your quadriceps are often central to a physical therapy plan. As time goes on, your doctor or therapist will unlock your brace. This will allow you to move more freely with a greater range of motion. You will be prescribed more strengthening exercises as you heal.";
        treatmentSixteen.picture = [UIImage imageNamed:@"ptQuad.jpg"];
        treatmentSixteen.rating = 5;
        
        Treatment * treatmentSeventeen = [[Treatment alloc] init];
        treatmentSeventeen.name = @"Surgical Treatment";
        treatmentSeventeen.injuryName = @"Quadriceps Tendon Tear";
        treatmentSeventeen.shortDescription = @"...";
        treatmentSeventeen.longDescription = @"Most people with complete tears will require urgent surgery to repair the torn tendon. Surgery is also an option for people with partial tears who also have tendon weakness and degeneration. Surgical repair reattaches the torn tendon to the top of the kneecap. People who require surgery do better if the repair is performed early after the injury. Early repair may prevent the tendon from scarring and tightening in a shortened position.";
        treatmentSeventeen.picture = [UIImage imageNamed:@"surgeryQuad.jpg"];
        treatmentSeventeen.rating = 3;
        
        Treatment * treatmentEighteen = [[Treatment alloc] init];
        treatmentEighteen.name = @"Rigid or stiff-soled shoe.";
        treatmentEighteen.injuryName = @"Toe and Forefoot Fractures";
        treatmentEighteen.shortDescription = @"...";
        treatmentEighteen.longDescription = @"Wearing a stiff-soled shoe protects the toe and helps keep it properly positioned.";
        treatmentEighteen.picture = [UIImage imageNamed:@"shoeToe.jpg"];
        treatmentEighteen.rating = 4;
        
        Treatment * treatmentNineteen = [[Treatment alloc] init];
        treatmentNineteen.name = @"Rest";
        treatmentNineteen.injuryName = @"Toe and Forefoot Fractures";
        treatmentNineteen.shortDescription = @"...";
        treatmentNineteen.longDescription = @"Stay off the injured ankle. Walking may cause further injury.";
        treatmentNineteen.picture = [UIImage imageNamed:@"restAnkle.jpg"];
        treatmentNineteen.rating = 3;
        
        Treatment * treatmentTwenty = [[Treatment alloc] init];
        treatmentTwenty.name = @"Splinting";
        treatmentTwenty.injuryName = @"Toe and Forefoot Fractures";
        treatmentTwenty.shortDescription = @"...";
        treatmentTwenty.longDescription = @"The toe may be fitted with a splint to keep it in a fixed position.";
        treatmentTwenty.picture = [UIImage imageNamed:@"splintToe.jpg"];
        treatmentTwenty.rating = 3;
        
        [array addObject:treatmentZero];
        [array addObject:treatmentOne];
        [array addObject:treatmentTwo];
        [array addObject:treatmentThree];
        [array addObject:treatmentFour];
        [array addObject:treatmentFive];
        [array addObject:treatmentSix];
        [array addObject:treatmentSeven];
        [array addObject:treatmentEight];
        [array addObject:treatmentNine];
        [array addObject:treatmentTen];
        [array addObject:treatmentEleven];
        [array addObject:treatmentTwelve];
        [array addObject:treatmentThirteen];
        [array addObject:treatmentFourteen];
        [array addObject:treatmentFifteen];
        [array addObject:treatmentSixteen];
        [array addObject:treatmentSeventeen];
        [array addObject:treatmentEighteen];
        [array addObject:treatmentNineteen];
        [array addObject:treatmentTwenty];
    });
    return array;
}
@end
