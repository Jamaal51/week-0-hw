//
//  main.m
//  zombieRunRun
//
//  Created by Henna on 6/11/15.
//  Copyright (c) 2015 Henna Ahmed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger leaveRoom,
        leaveFriend,
        weapon,
        secondWeapon;
        BOOL roomChoice = NO,
        friendChoice = NO,
        weaponChoice = NO,
        secondWeaponChoice = NO;
        
        
        printf("Imagine this. You wake up in a dim hospital bed in a room with bright white walls and flickering lights. You slowly get out of bed wondering why the window on your door is shattered and why you have track marks all over your arm. You walk to the door and hear a high pitched scream. ");
        
        while (!roomChoice) {
            printf("Do you \n0)Go check where the scream came from \n1) Stay, and wait it out. \n->");
            scanf("%d", &leaveRoom);
            if (leaveRoom == 0) {
                roomChoice = YES;
                printf("You run towards the operating room and you're getting closer to the sound of the screams. You walk into a viewing room and see that your best friend is on the operating table and some zombies are trying to open them up. ");
                while (!friendChoice) {
                    printf("What do you do? \n0)Go fight the zombies and save your friend \n1)Get outta there, save yourself\n->");
                    scanf("%d", &leaveFriend);
                    if (leaveFriend == 0) {
                        friendChoice = YES;
                        printf("Yay! Let's kick some zombie butt");
                        while (!weaponChoice) {
                            printf("Weapon of choice? \n0)Giant loaf of bread \n1)Tranquilizer\n2)Sleeping powder\n->");
                            scanf("%d", &weapon);
                            if (weapon == 0) {
                                printf("The zombies get hungry and make a sandwich while you and your friend escape");
                                weaponChoice = YES;
                                
                            }
                            else if (weapon == 1){
                                weaponChoice = YES;
                                printf("Oh no! The tranquilizer doesn't work on the zombies! However, there's a scalpel near you. ");
                                
                                while (!secondWeaponChoice) {
                                    printf("Do you use it to\n0)defeat the zombies\n1)leave your friend\n");
                                    scanf("%d", &secondWeapon);
                                    if (secondWeapon == 0) {
                                        secondWeaponChoice = YES;
                                        printf("You defeat the 17 zombies with that tiny scalpel!");
                                    }
                                    else if (secondWeapon == 1){
                                        secondWeaponChoice = YES;
                                        printf("You leave your friend and live with regret for the rest of your life :(");
                                    }
                                }
                            }
                            else if(weapon == 2){
                                weaponChoice = YES;
                                printf("The zombies fall into a deep sleep and dream of zombie sheep while you and your friend escape.");
                            }
                        }
                        
                    }
                    else if (leaveFriend == 1){
                        friendChoice = YES;
                        printf("Because you left your BEST friend a velociraptor comes and adopts you. Don't be a bad friend, next time!");
                    }
                }
                
            }
            else if (leaveRoom == 1){
                roomChoice = YES;
                printf("Because you decided to stay, some GIANT doughnuts came and ate you. Better luck next time!");
                
            }
        }
        
    }
    return 0;
}
