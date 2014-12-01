//
//  Injury.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "Injury.h"
#import "Treatment.h"

@implementation Injury
+(NSMutableArray*)injuries{
    static NSMutableArray *array;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        array = [NSMutableArray array];
        NSMutableArray *treatments = [Treatment treatments];
        Injury * injuryOne = [[Injury alloc] init];
        injuryOne.name = @"Sprained Ankle";
        injuryOne.shortDescription = @"An ankle sprain is an injury to one or more ligaments in the ankle, usually on the outside of the ankle.";
        injuryOne.longDescription = @"An ankle sprain is an injury to one or more ligaments in the ankle, usually on the outside of the ankle. The location of pain on the outside of the ankle with tenderness and swelling in a patient who has an ankle with inversion is very suggestive. Symptoms are Swelling, Bruising, Difficulty walking, or Stiffness in the joint.";
        injuryOne.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injuryOne.treatments =  [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:0],[treatments objectAtIndex:1],[treatments objectAtIndex:2],nil];
        
        Injury * injuryTwo = [[Injury alloc] init];
        injuryTwo.name = @"Pulled Groin";
        injuryTwo.shortDescription = @"A groin pull is an injury to the muscles of the inner thigh.";
        injuryOne.longDescription = @"A groin pull is an injury to the adductor muscles called a muscle strain. When a muscle is strained, the muscle is stretched too far. Less severe strains pull the muscle beyond their normal excursion. More severe strains tear the muscle fibers, and can even cause a complete tear of the muscle. Most commonly, groin pulls are minor tears of some muscle fibers, but the bulk of the muscle tissue remains intact. 1st degree: Mild pain, but little loss of strength or movement. 2nd degree: Moderate pain, mild to moderate strength loss and some tissue damage. 3rd degree: Severe pain, severe loss of strength and function due to a complete tear of the muscle.";
        injuryTwo.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injuryTwo.treatments =  [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:3],[treatments objectAtIndex:4],[treatments objectAtIndex:5],nil];
        
        Injury * injuryThree = [[Injury alloc] init];
        injuryThree.name = @"Shin Splints";
        injuryThree.shortDescription = @"Your shins throb and ache after your daily run or just sprinting to catch the bus.";
        injuryThree.longDescription = @"Shin splints can be caused by: Irritated and swollen muscles, often from overuse, Stress fractures, which are tiny breaks in the lower leg bones, Overpronation or 'flat feet' (when the impact of a step makes your foot's arch collapse), or Weakness in stabilizing muscles of the hips or core";
        injuryThree.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injuryThree.treatments =  [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:6],[treatments objectAtIndex:7],[treatments objectAtIndex:8],nil];
        
        Injury * injuryFour = [[Injury alloc] init];
        injuryFour.name = @"Knee Ligament ACL Injury";
        injuryFour.shortDescription = @"Ligament injuries in the knee - such as an anterior cruciate ligament (ACL) -- are dreaded by professional and amateur athletes alike";
        injuryFour.longDescription = @"The anterior cruciate ligament (ACL) is one of the two major ligaments in the knee. It connects the thigh bone to the shin bone in the knee. ACL injuries are a common cause of disability in the knee. In the U.S., 95,000 people get them every year. They are more common in women than men. An ACL injury -- or other ligament injury -- is sometimes hard to diagnose. Symptoms of a knee ligament injury are: Pain, often sudden and severe, A loud pop or snap during the injury, Swelling, A feeling of looseness in the joint, Inability to put weight on the point without pain";
        injuryFour.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injuryFour.treatments =  [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:9],[treatments objectAtIndex:10],[treatments objectAtIndex:11],nil];
        
        Injury * injuryFive = [[Injury alloc] init];
        injuryFive.name = @"Tennis elbow (epicondylitis)";
        injuryFive.shortDescription = @"Tennis elbow is a common term for a condition caused by overuse of arm, forearm, and hand muscles that results in elbow pain.";
        injuryFive.longDescription = @"Tennis elbow is caused by either abrupt or subtle injury of the muscle and tendon area around the outside of the elbow. Tennis elbow specifically involves the area where the muscles and tendons of the forearm attach to the outside bony area (called the lateral epicondyle) of the elbow.  Pain slowly increasing around the outside of the elbow. Less often, pain may develop suddenly. Pain is worse when shaking hands or squeezing objects. Pain is made worse by stabilizing or moving the wrist with force. Examples include lifting, using tools, opening jars, or even handling simple utensils such as a toothbrush or knife and fork.";
        injuryFive.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injuryFive.treatments = [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:12],[treatments objectAtIndex:13],[treatments objectAtIndex:14],nil];
        
        Injury * injurySix = [[Injury alloc] init];
        injurySix.name = @"Quadriceps Tendon Tear";
        injurySix.shortDescription = @"The quadriceps and patellar tendons can be stretched and torn.";
        injurySix.longDescription = @"The quadriceps tendons can be stretched and torn. Although anyone can injure these tendons, tears are more common among middle-aged people who play running or jumping sports. Falls, direct force to the front of the knee, and landing awkwardly from a jump are common causes of knee tendon injuries. Quadriceps tendon tears can be either partial or complete. Partial tears. Many tears do not completely disrupt the soft tissue. This is similar to a rope stretched so far that some of the fibers are torn, but the rope is still in one piece. Complete tears: A complete tear will split the soft tissue into two pieces Symptoms An indentation at the top of your kneecap where the tendon tore. Other symptoms include Bruising, Tenderness, Cramping, Your kneecap may sag or droop because the tendon is torn, You are unable to straighten your knee, Difficulty walking due to the knee buckling or giving way";
        injurySix.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injurySix.treatments =  [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:15],[treatments objectAtIndex:16],[treatments objectAtIndex:17],nil];
        
        Injury * injurySeven = [[Injury alloc] init];
        injurySeven.name = @"Toe and Forefoot Fractures";
        injurySeven.shortDescription = @"A broken (fractured) bone in your forefoot (metatarsals) or in one of your toes (phalanges) is often painful but rarely disabling.";
        injurySeven.longDescription = @"A fracture is a break in the bone. Fractures can be divided into two categories: traumatic fractures and stress fractures. Traumatic fractures (also called acute fractures) are caused by a direct blow or impact Stress fractures are tiny, hairline breaks that are usually caused by repetitive stress. Pain, swelling, and sometimes bruising are the most common signs of a fracture in the foot. If you have a broken toe, you may be able to walk, but this usually aggravates the pain. If the pain, swelling, and discoloration continue for more than two or three days, or if pain interferes with walking, something could be seriously wrong; see a doctor as soon as possible.";
        injurySeven.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        injurySeven.treatments =  [[NSMutableArray alloc] initWithObjects:[treatments objectAtIndex:18],[treatments objectAtIndex:19],[treatments objectAtIndex:20],nil];
        
        [array addObject:injuryOne];
        [array addObject:injuryTwo];
        [array addObject:injuryThree];
        [array addObject:injuryFour];
        [array addObject:injuryFive];
        [array addObject:injurySix];
        [array addObject:injurySeven];
        
    });
    return array;
}
@end
