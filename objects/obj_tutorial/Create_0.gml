/// @description Insert description here
// You can write your code in this editor




welcome_message=true;
welcome[0]="Welcome to the world of Dragon Ball"
welcome[1]="This is a tutorial to get you ready to fight"
welcome[2]="First, let's start with the basics"
welcome_index=0;

left_right_lesson=false;
left_right[0]="We'll start with movement";
left_right[1]="Press "+string(get_character(global.keyLeft))+ " to go left."
left_right[2]="Press "+string(get_character(global.keyRight))+ " to go right."
left_right[3]="Good Job, now let's try jumping";
left_right_index=0;

jumping_lesson=false;
jumping[0]="Press "+string(get_character(global.keyJump))+ " to jump."
jumping[1]="You're really getting the hang of this. Now let's try crouching."
jumping_index=0;

crouching_lesson=false;
crouching[0]="Hold "+string(get_character(global.keyDown))+ " to crouch when you're on the ground."
crouching[1]="Wowzers, u got that down fast.. Now let's try dashing."
crouching_index=0;

dashing_lesson=false;
dashing[0]="Double Tap "+string(get_character(global.keyLeft))+ " to dash left."
dashing[1]="Double Tap "+string(get_character(global.keyRight))+ " to dash right."
dashing[2]="Hot damn, It took me 3 years  to learn how to do that. Now let's try flying."
dashing[3]=-1;
dashing_index=0;

flying_lesson=false;
flying[0]="Double Tap "+string(get_character(global.keyJump))+ " to fly."
flying[1]="Flying takes ki to use. Check your bar at the top left. Now go back down to the ground."
flying_index=0;

flying_lesson2=false;
flying2[0]="Press "+string(get_character(global.keyUp))+ " to go up while flying."
flying2[1]="Press "+string(get_character(global.keyDown))+ " to go down while flying. (Go down to the ground)"
flying2[2]="It should take u a while to get enough control of your ki to maneuver yourself while flying... "
flying2[3]="Ur amazing, even Goten took longer to learn to fly. Now let's try attacking."
flying2[4]=-1;
flying2_index=0;

basic_attack_lesson=false;
basic_attack[0]="Each characterr usually has 2 sets of attacks. Goku, ur character, has punches and kicks"
basic_attack[1]="Punches tend to deal less damage but are quicker, while kicks are slower but deal more damage"
basic_attack[2]="Hold "+string(get_character(global.keyLeft))+" if your facing leftt or "+string(get_character(global.keyRight))+" if your facing right and  press "+string(get_character(global.keyPunch))+ " to punch and Press "+string(get_character(global.keyKick))+ " to kick."
basic_attack[3]="Don't get confident just yet. Now let's try directional attacks."
basic_attack[4]=-1;
basic_attack_index=0;

directional_attack_lesson=false;
directional_attack[0]="You have different attacks when you crouch and if ur aiming up"
directional_attack[1]="Use the same punching and kicking keys as before but hold "+string(get_character(global.keyUp))+" or "+string(get_character(global.keyDown))
directional_attack[2]="Hold "+string(get_character(global.keyUp))+" or "+string(get_character(global.keyDown))+" and  press "+string(get_character(global.keyPunch))+ " to punch and press "+string(get_character(global.keyKick))+ " to kick."
directional_attack[3]="Ur coming along just fine cricket. Now let's try aerial attacks."
directional_attack[4]=-1;
directional_attack_index=0;

aerial_attack_lesson=false;
aerial_attack[0]="Make sure your flying or jumping and try out using your directional keys and pressing punch and kick"
aerial_attack[1]="These aerial attacks generally deal more damage."
aerial_attack[2]="Hold "+string(get_character(global.keyUp))+" or "+string(get_character(global.keyDown))+" or "+string(get_character(global.keyLeft))+" or "+string(get_character(global.keyRight))+" while in air and press "+string(get_character(global.keyPunch))+ " to punch and press "+string(get_character(global.keyKick))+ " to kick."
aerial_attack[3]="You make it look easy.  Remember to watch your ki. I think ur ready for some special attacks"
aerial_attack[4]=-1;
aerial_attack_index=0;

special_attack_lesson1=false;
special_attack1[0]="Goku's first special attack is a ki blast, a crowd control attack that can be held for continous fire"
special_attack1[1]="The ki blast drains ki faster than you'd expect, and requires a specific combo to use"
special_attack1[2]="Press "+string(get_character(global.keyDown))+", "+string(get_character(global.keyRight))+", "+string(get_character(global.keyPunch))+" to fire a ki blast."
special_attack1[3]="Remember to watch your ki when using this attack."
special_attack1[4]=-1;
special_attack1_index=0;

charging_lesson=false;
charging[0]="Ur ki seems to be pretty drained, and it's regenerating oh so slowly."
charging[1]="Lucky for you, u can easily charge your ki"
charging[2]="Press "+string(get_character(global.keyCharge))+" to charge your ki until it's full."
charging[3]="Don't spend too much time charging lest ur enemy attacks you midway. Let's learn how to fire a kamehameha."
charging[4]=-1;
charging_index=0;

special_attack_lesson2=false;
special_attack2[0]="Goku's second special attack is a kamehameha, a mid range chargeable attack"
special_attack2[1]="The kamehameha also requires a specific combo to use, and drains a third of your ki"
special_attack2[2]="Press "+string(get_character(global.keyLeft))+", "+string(get_character(global.keyDown))+", "+string(get_character(global.keyRight))+", "+string(get_character(global.keyPunch))+" to fire a kamehameha."
special_attack2[3]="You'll enter a blocking state while you're doing a kamehameha. Now let's see Goku's ultimate ability."
special_attack2[4]=-1;
special_attack2_index=0;

ultimate_attack_lesson1=false;
ultimate_attack1[0]="Goku's ultimate attack is a genkidama, or spirit bomb, that takes a while to charge"
ultimate_attack1[1]="but deals massive amounts of damage, and doesn't require a combo"
ultimate_attack1[2]="Press "+string(get_character(global.KeySpecial))+" to charge a genkidama till it's full. Charge your ki if necessary."
ultimate_attack1[3]="Be careful, if ur hit while charging, u lose half ur charge."
ultimate_attack1[4]=-1;
ultimate_attack1_index=0;

ultimate_attack_lesson2=false;
ultimate_attack2[0]="Now that ur genkidama is charged, it's time to throw it."
ultimate_attack2[1]="You only need half charge to throw the genkidama, although it'll do less damage"
ultimate_attack2[2]="Double Tap "+string(get_character(global.KeySpecial))+" to throw a genkidama."
ultimate_attack2[3]="Last thing to touch open is Goku's Signature Ability, Instant Transmission"
ultimate_attack2[4]=-1;
ultimate_attack2_index=0;

dodging_lesson=false;
dodging[0]="Wow, charging your genkidama can leave you pretty vulnerable, what can you do?"
dodging[1]="Luckily, as Goku, you have access to Instant Transmission, allowing u to basically teleport"
dodging[2]="Press "+string(get_character(global.keyDodge))+" to teleport, and use directional keys to pick direction."
dodging[3]="Now I think it's time for some actual combat training."
dodging[4]=-1;
dodging_index=0;

blocking_lesson=false;
blocking[0]="When you move away from your enemy. You'll move slower and begin to block"
blocking[1]="Blocking reduces how much stamina and health an enemy attack drains at the expense of ki"
blocking[2]="Block 3 of the enemy's attack"
blocking[3]="Good job. Now I think it's time to learn how to parry."
blocking[4]=-1;
blocking_index=0;

parrying_lesson=false;
parrying[0]="When you start blocking, for a short window, you can parry attacks and stop ur enemy's combo"
parrying[1]="Parrying still takes ki, but it fully blocks attacks and even gives u some stamina"
parrying[2]="Parry 3 of the enemy's attack"
parrying[3]="It's tough huh? No!?!?! Wow, ur a natural."
parrying[4]=-1;
parrying_index=0;

tired_lesson=false;
tired[0]="So what happens when your ki reaches 0? You'll enter a tired state";
tired[1]="A tired state basically freezes u in place for 3 seconds while your ki charges back up";
tired[2]="Put your enemy in the Tired state."
tired[3]="Be careful as your enemy will release ki when they're tired state is done, flinging you away."
tired[4]=-1;
tired_index=0;

freePlay_lesson=false;
freePlay[0]="Okay, that's it. You're ready to fight.";
freePlay[1]="Be aware that as ur stamina goes down, you'll take increased damage";
freePlay[2]="Press P, then select Quit to leave. Press 1 to make enemy attack, press 2 to make him block"
freePlay[3]="Press 3 to reset both characters, and press 4 to make the enemy just follow";
freePlay_index=0;

progress=0;
alarm[0]=room_speed*4;
lesson_index=0;
lessons[0]=welcome_message;
lessons[1]=left_right_lesson;
lessons[2]=jumping_lesson;
lessons[3]=crouching_lesson;
lessons[4]=dashing_lesson;
lessons[5]=flying_lesson;
lessons[6]=flying_lesson2;
lessons[7]=basic_attack_lesson;
lessons[8]=directional_attack_lesson;
lessons[9]=aerial_attack_lesson;
lessons[10]=special_attack_lesson1;
lessons[11]=charging_lesson;
lessons[12]=special_attack_lesson2;
lessons[13]=ultimate_attack_lesson1;
lessons[14]=ultimate_attack_lesson2;
lessons[15]=dodging_lesson;
lessons[16]=blocking_lesson;
lessons[17]=parrying_lesson;
lessons[18]=tired_lesson;
lessons[19]=freePlay_lesson;