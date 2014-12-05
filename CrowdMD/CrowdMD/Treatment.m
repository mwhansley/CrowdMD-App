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
        treatmentZero.shortDescription = @"Rest and avoid any activity that causes pain.";
        treatmentZero.picture = [UIImage imageNamed:@"restAnkle.jpg"];
        treatmentZero.longDescription = @"Rest your ankle by not walking on it. Limit weight bearing. Use crutches if necessary; if there is no fracture you are safe to put some weight on the leg. An ankle brace often helps control swelling and adds stability while the ligaments are healing.";
        treatmentZero.rating = 3;
        
        Treatment * treatmentOne = [[Treatment alloc] init];
        treatmentOne.name = @"Compression";
        treatmentOne.injuryName = @"Ankle Sprain";
        treatmentOne.shortDescription = @"An elastic wrap may be recommended to control swelling.";
        treatmentOne.picture = [UIImage imageNamed:@"compressAnkle.jpg"];
        treatmentOne.longDescription = @"Using an elastic wrap on the ankle can reduce swelling as well as immobilize teh injury. Supporting the ankle is vital to add stability while the ligaments are healing, especially when weight is put on it.";
        treatmentOne.rating = 4;
        
        Treatment * treatmentTwo = [[Treatment alloc] init];
        treatmentTwo.name = @"Ice";
        treatmentTwo.injuryName = @"Ankle Sprain";
        treatmentTwo.shortDescription = @"Ice can be used to keep down the swelling and reduce the pain.";
        treatmentTwo.longDescription = @"Apply an ice pack to the outer ankle, placing a thin towel between the ice and the skin. Use ice for 20 minutes and then wait at least 40 minutes before icing again.";
        treatmentTwo.picture = [UIImage imageNamed:@"iceAnkle.jpg"];
        treatmentTwo.rating = 4;
        
        Treatment * treatmentThree = [[Treatment alloc] init];
        treatmentThree.name = @"Ice";
        treatmentThree.injuryName = @"Pulled Groin";
        treatmentThree.shortDescription = @"Ice can be used to keep down the swelling and reduce the pain.";
        treatmentThree.longDescription = @"Ice the inside of your thigh to reduce pain and swelling. Experts recommend doing it for 20 to 30 minutes every 3 to 4 hours for 2 to 3 days, or until the pain is gone. Wait atleast 40 minutes before icing again.";
        treatmentThree.picture = [UIImage imageNamed:@"iceGroin.jpg"];
        treatmentThree.rating = 2;
        
        Treatment * treatmentFour = [[Treatment alloc] init];
        treatmentFour.name = @"Compress";
        treatmentFour.injuryName = @"Pulled Groin";
        treatmentFour.shortDescription = @"Compress your thigh using an elastic bandage or tape.";
        treatmentFour.longDescription = @"Compression will help reduce the swelling in the groin as well as immobilize the injury.";
        treatmentFour.picture = [UIImage imageNamed:@"compressGroin.jpg"];
        treatmentFour.rating = 3;
        
        Treatment * treatmentFive = [[Treatment alloc] init];
        treatmentFive.name = @"Anti-Inflammatories";
        treatmentFive.injuryName = @"Pulled Groin";
        treatmentFive.shortDescription = @"An anti-inflammatory will help reduce swelling and inflammation.";
        treatmentFive.longDescription = @"Take anti-inflammatory painkillers. Non-steroidal anti-inflammatory drugs (NSAIDs), like Advil, Aleve, or Motrin, will help with pain and swelling. However, studies show their effects are controversial especially if taken long term.  Additionally, these drugs can have side effects; they should be used only occasionally, unless your doctor specifically says otherwise.";
        treatmentFive.picture = [UIImage imageNamed:@"antiInflammatory.jpg"];
        treatmentFive.rating = 3;
        
        Treatment * treatmentSix = [[Treatment alloc] init];
        treatmentSix.name = @"Rest";
        treatmentSix.injuryName = @"Shin Splints";
        treatmentSix.shortDescription = @"Shin splints needs time to rest in order to heal.";
        treatmentSix.longDescription = @"Be pain free for atleast 2 weeks before returning to your exercise routine. Keep your activity to just the walking that you do during your reguler day. Try other low impact activities as long as there is no pain such as swimming or biking.";
        treatmentSix.picture = [UIImage imageNamed:@"restShin.jpg"];
        treatmentSix.rating = 2;
        
        Treatment * treatmentSeven = [[Treatment alloc] init];
        treatmentSeven.name = @"Ice";
        treatmentSeven.injuryName = @"Shin Splints";
        treatmentSeven.shortDescription = @"Ice your shins to ease pain and swelling.";
        treatmentSeven.longDescription = @"Icing your shins will help ease pain and reduce swelling. Apply an ice pack for 20-30 minutes every 3 to 4 hours for 2 to 3 days, or until the pain is gone. Wait atleast 40 minutes before icing again.";
        treatmentSeven.picture = [UIImage imageNamed:@"iceShin.jpg"];
        treatmentSeven.rating = 4;
        
        Treatment * treatmentEight = [[Treatment alloc] init];
        treatmentEight.name = @"Anti-Inflammatories";
        treatmentEight.injuryName = @"Shin Splints";
        treatmentEight.shortDescription = @"An anti-inflammatory will help reduce swelling and inflammation.";
        treatmentEight.longDescription = @"Take anti-inflammatory painkillers. Non-steroidal anti-inflammatory drugs (NSAIDs), like Advil, Aleve, or Motrin, will help with pain and swelling. However, studies show their effects are controversial especially if taken long term.  Additionally, these drugs can have side effects; they should be used only occasionally, unless your doctor specifically says otherwise.";
        treatmentEight.picture = [UIImage imageNamed:@"antiInflammatory.jpg"];
        treatmentEight.rating = 3;
        
        Treatment * treatmentNine = [[Treatment alloc] init];
        treatmentNine.name = @"Rest";
        treatmentNine.injuryName = @"Knee ACL Injury";
        treatmentNine.shortDescription = @"Avoid putting excess weight on your knee to allow the tear to heal.";
        treatmentNine.longDescription = @"Small tears in the ACL may just require several months of rest in order to strengthen the surrounding muscles, the hamstring and the quadriceps, so that these muscles can compensate for the torn ligament. You may need to use crutches for a time to allow the tear to heal.";
        treatmentNine.picture = [UIImage imageNamed:@"restAcl.jpg"];
        treatmentNine.rating = 3;
        
        Treatment * treatmentTen = [[Treatment alloc] init];
        treatmentTen.name = @"Ice";
        treatmentTen.injuryName = @"Knee ACL Injury";
        treatmentTen.shortDescription = @"Ice your knee to reduce pain and swelling.";
        treatmentTen.longDescription = @"Ice your knee to reduce pain and swelling. Apply an ice pack for 20-30 minutes every 3 to 4 hours for 2 to 3 days, or until the pain is gone. Wait atleast 40 minutes before icing again.";
        treatmentTen.picture = [UIImage imageNamed:@"iceAcl.jpg"];
        treatmentTen.rating = 4;
        
        Treatment * treatmentEleven = [[Treatment alloc] init];
        treatmentEleven.name = @"Compression";
        treatmentEleven.injuryName = @"Knee ACL Injury";
        treatmentEleven.shortDescription = @"Compress the knee to decrease swelling and reduce pain.";
        treatmentEleven.longDescription = @"Compressing your knee will restrict the movement on the knee and prevent it from being overexerted. Use an elastic bandage, straps, or sleeves on your knee to control the swelling.";
        treatmentEleven.picture = [UIImage imageNamed:@"compressAcl.jpg"];
        treatmentEleven.rating = 2;
        
        Treatment * treatmentTwelve = [[Treatment alloc] init];
        treatmentTwelve.name = @"Rest";
        treatmentTwelve.injuryName = @"Tennis Elbow";
        treatmentTwelve.shortDescription = @"Rest and avoid any activity that causes pain.";
        treatmentTwelve.longDescription = @"Stopping or changing activities that irritate the elbow are vital while pain is still present. Depending on how severe your condition is, you may need to rest your tendon for weeks to months.";
        treatmentTwelve.picture = [UIImage imageNamed:@"restElbow.jpg"];
        treatmentTwelve.rating = 1;
        
        Treatment * treatmentThirteen = [[Treatment alloc] init];
        treatmentThirteen.name = @"Anti-Inflammatories";
        treatmentThirteen.injuryName = @"Tennis Elbow";
        treatmentThirteen.shortDescription = @"An anti-inflammatory will help reduce swelling and inflammation.";
        treatmentThirteen.longDescription = @"Take anti-inflammatory painkillers. Non-steroidal anti-inflammatory drugs (NSAIDs), like Advil, Aleve, or Motrin, will help with pain and swelling. However, studies show their effects are controversial especially if taken long term.  Additionally, these drugs can have side effects; they should be used only occasionally, unless your doctor specifically says otherwise.";
        treatmentThirteen.picture = [UIImage imageNamed:@"antiInflammatory.jpg"];
        treatmentThirteen.rating = 2;
        
        Treatment * treatmentFourteen = [[Treatment alloc] init];
        treatmentFourteen.name = @"Ice";
        treatmentFourteen.injuryName = @"Tennis Elbow";
        treatmentFourteen.shortDescription = @"Ice your elbow to reduce pain and swelling.";
        treatmentFourteen.longDescription = @"Ice your elbow to reduce pain and swelling. Apply an ice pack for 20-30 minutes every 3 to 4 hours for 2 to 3 days, or until the pain is gone. Wait atleast 40 minutes before icing again.";
        treatmentFourteen.picture = [UIImage imageNamed:@"iceElbow.jpg"];
        treatmentFourteen.rating = 5;
        
        Treatment * treatmentFifteen = [[Treatment alloc] init];
        treatmentFifteen.name = @"Immobilization";
        treatmentFifteen.injuryName = @"Quadriceps Tendon Tear";
        treatmentFifteen.shortDescription = @"Wearing a knee immobilizer will help stabilize your knee as it heals.";
        treatmentFifteen.longDescription = @"Wearing a knee immobilizer or brace will keep your knee straight to help it heal. You will most likely need crutches to help you avoid putting all of your weight on your leg. You can expect to be in a knee immobilizer or brace for 3 to 6 weeks.";
        treatmentFifteen.picture = [UIImage imageNamed:@"immobilizeKnee.jpg"];
        treatmentFifteen.rating = 3;
        
        Treatment * treatmentSixteen = [[Treatment alloc] init];
        treatmentSixteen.name = @"Physical Therapy";
        treatmentSixteen.injuryName = @"Quadriceps Tendon Tear";
        treatmentSixteen.shortDescription = @"Physical therapy can help restore strength and range of motion.";
        treatmentSixteen.longDescription = @"Once the initial pain and swelling has settled down, physical therapy can begin. Specific exercises can restore strength and range of motion. Exercises will gradually be added to your program. Straight leg raises to strengthen your quadriceps are often central to a physical therapy plan. As time goes on, your doctor or therapist will unlock your brace. This will allow you to move more freely with a greater range of motion. You will be prescribed more strengthening exercises as you heal.";
        treatmentSixteen.picture = [UIImage imageNamed:@"ptQuad.jpg"];
        treatmentSixteen.rating = 5;
        
        Treatment * treatmentSeventeen = [[Treatment alloc] init];
        treatmentSeventeen.name = @"Surgical Treatment";
        treatmentSeventeen.injuryName = @"Quadriceps Tendon Tear";
        treatmentSeventeen.shortDescription = @"People with complete tears will need surgery to recover.";
        treatmentSeventeen.longDescription = @"Most people with complete tears will require urgent surgery to repair the torn tendon. Surgery is also an option for people with partial tears who also have tendon weakness and degeneration. Surgical repair reattaches the torn tendon to the top of the kneecap. People who require surgery do better if the repair is performed early after the injury. Early repair may prevent the tendon from scarring and tightening in a shortened position.";
        treatmentSeventeen.picture = [UIImage imageNamed:@"surgeryQuad.jpg"];
        treatmentSeventeen.rating = 3;
        
        Treatment * treatmentEighteen = [[Treatment alloc] init];
        treatmentEighteen.name = @"Rigid or stiff-soled shoe.";
        treatmentEighteen.injuryName = @"Toe/Foot Fractures";
        treatmentEighteen.shortDescription = @"Wearing a stiff-soled shoe keeps it properly positioned.";
        treatmentEighteen.longDescription = @"Wearing a stiff-soled shoe protects the toe and helps keep it properly positioned.";
        treatmentEighteen.picture = [UIImage imageNamed:@"shoeToe.jpg"];
        treatmentEighteen.rating = 4;
        
        Treatment * treatmentNineteen = [[Treatment alloc] init];
        treatmentNineteen.name = @"Rest";
        treatmentNineteen.injuryName = @"Toe/Foot Fractures";
        treatmentNineteen.shortDescription = @"Stay off the injured foot. Walking may cause further injury.";
        treatmentNineteen.longDescription = @"Rest is the primary treatment for stress fractures in the foot. Stay away from the activity that triggered the injury, or any activity that causes pain at the fracture site, for three to four weeks. Substitute another activity that puts less pressure on the foot, such as swimming.";
        treatmentNineteen.picture = [UIImage imageNamed:@"restAnkle.jpg"];
        treatmentNineteen.rating = 3;
        
        Treatment * treatmentTwenty = [[Treatment alloc] init];
        treatmentTwenty.name = @"Splinting";
        treatmentTwenty.injuryName = @"Toe/Foot Fractures";
        treatmentTwenty.shortDescription = @"The toe may be fitted with a splint to keep it in a fixed position.";
        treatmentTwenty.longDescription = @"The bone ends of a displaced fracture must be realigned and the bone kept immobile until healing takes place. If you have a broken toe, an option is to 'buddy-tape' the broken toe to an adjacent toe, with a gauze pad between the toes to absorb moisture. You should replace the gauze and tape as often as needed.";
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
