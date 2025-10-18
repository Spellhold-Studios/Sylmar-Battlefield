SYLMAR - Elves vs Orcs Battlefield
v1.025
by Zyraen (email : zyraen@hotmail.com )

UPDATES / BUG FIXES from v 1.02

- updated to WeiDU 2.03 which no longer requires me to TISPACK and TISUNPACK an existing map


UPDATES / BUG FIXES from v 1.01

- the map loading bug was not yet fixed on v1.01, so I included a separate TIS and tisunpack for it. the Installation is now significantly larger in size but it shouldn't be a problem

UPDATES / BUG FIXES from v 1.00

- Teleported directly to Zy1800, this should not cause the game to hang (tested by clearing the BG2/cache of AR1800.BIF)

- Balrogs are now immune to Harm, Stun and Slow
- Orcs will now spawn almost immediately if there are no orcs on the map
- Timers have been adjusted to increase Orc Squad Spawn Rate
- Orcs are slightly less prone to overcrowding
- The Warden now counts towards the 3 Elven Commander limit on the map
- The Warden's Squad no longer "separates" on spawning
- Respawning Squad members are now very unlikely to be assigned to the wrong Squad, an effect that caused Elf Squads to grow beyond their maximum size on Respawning

===========

This scenario is meant to be a precursor of what is to come in Silmarillion.

1. Disclaimer
This readme was done in haste to get this released before I leave the house, so it lacks some standard proper formatting. It will all be fixed though, don't worry. 
Note that when you first enter the map, it takes a while to load. Be patient and stare at that mound of grass a little longer.
Note also that this map may still require tweaking for difficulty and balance issues. Just feedback me by emailing or posting on the topic in SHS to let me know.

2. Background
The background is simple - you agree to help an elf with an invasion to their holy burial grounds, and are summoned to the place.
There you will help the general of the elves, called the Warden, remain alive and hold off waves of Orcs. On your side there will also be Elven squads spawning, but at a slower rate.
In order to aid the elves, just speak to Denaton who is waiting impatiently inside the Council of Six building

3. Gameplay Issues

3.1 Squad Mechanics

There is a fixed number of squads that will "reinforce" the map, for each side ; after that, the spawn rate is halved, ie reinforcements take a long time to arrive. So knowing how to take out enemy squads becomes important, while conserving your own sides squad numbers. Amidst this you will also have to keep the Warden alive at all costs. Squads revolve around Commanders, like Elven Sergeants Lieutenants etc, and Orcish Chieftains, Champions, Warlords.

3.2 Objectives

If you fail to conserve the Elven squads properly, with 25% of the Elven squads left in reserve, the Elven King Shade will spawn at the Graveyard. He has considerable battle ability and will greatly help against the orcs ; however he is also your countdown to defeat, as he cannot be healed and though he has a tonne of Life, they will gradually be whittled away as the Orcs arrive. Once the Elven King Shade arrives, he also becomes a critical objective - you have to guard him to the best of your ability while keeping the Warden alive as well. If the Elven King Shade dies you also lose the Scenario.

To win the scenario, you have to defeat the enemy commanders - turns out to be 3 Balrogs leading the Orcish army, and they arrive on the field when 75% of the Orcish squads have already been fielded, and only 25% are left in reserve. The Balrogs will attack one at a time, and the next will attack about 100 game-seconds after the previous one is defeated. Each Balrog can be likened to a building with a strong attacking capacity, and it will be fairly impossible to take them down alone ; you will have to rely on Elven Squad support to defeat each and every one of them, one at a time.

All enemies spawn with hitpoints stats etc, based on your Level. Both Balrogs and Elven King Shade engage in melee combat at a distance (ie they have a melee weapon with considerable Range)

3.3 Rewards

If you win the map, every party member gets 150K XP and the party gains 2 Reputation.
If you lose the map, the Warden's death results in -60K XP and -1 Rep ; the death of the Elven King Shade results in -90K XP and -1 Rep. 

There is also bonus 30K XP, for killing a Balrog before it starts to move on its own to attack the centre. This bonus would apply to killing the 2 Balrogs that do not attack initially, before they actually attack. Its quite a challenge but players are welcome to try it  I know I had hell a lot of fun playtesting this.

3.4 Other Features

- Warden uses, among other standard abilities like Prayer, Holy Smite, Chain Lightning, Stoneskin, he also uses something called Mass Regeneration that grants himself and all nearby friendly units +5 Life / Sec for 10 seconds. Note that the Warden's Holy Smite *does* hurt party members who are Evil, so Evil PCs cannot join the battle and watch out for Korgan / Viconia if you're using them
- Elven King Shade summons his Dancing Sword Anguirel, that has fast movement fast attack speed, and does ice damage on top of normal damage. It lasts only for 5 rounds, but is resummonable, and also has a tendency to "flit" around from enemy to enemy during battle, even though its original target is still alive. Hence its name the Dancing Sword.
- Balrogs use, apart from standard Fire Shield, Fear, Paralyzing Gaze, Sunfire, Fireball, they also use Flaming Whip, that does considerable fire damage and slows the target down to a crawl 

4.0 FAQ

Is this mod compatible with others?
Yes it is, very much so. As long as they are WeiDU Mods.

Is this mod a Total Conversion? 
No it is not. It is compatible with all other mods.

Where do I find the NPC / how do I get there?
Speak to Denaton in the Council of Six building. If he's not there, try starting a new game.
Alternatively, CLUAConsole:CreateCreature("ZY18MSGR")

How should I prepare for the battle?
Buy potions, lots of them. Prepare Area spells that are not damaging to allies, like Holy Smite would work a lot better than Fireball, Chain Lightning would do a lot better than Sunfire.

Can I try this out with a low level party?
Yes you can, but fighting the Balrogs will be harder. I suggest going in at least about level 12-15. You can try below that, it should be reasonable since the enemies scale down to your level, but the Balrogs are going to be hellish.

Can I try this out with a high level party?
Yes you could, but it would be easier since I have not enabled use of Kit Abilities and HLAs for the troops. Note that since enemies scale up to your level, even the normal soldier would have obscene amounts of health, so be prepared. Plus everyone would have extremely high Thac0 (even less than -5 Thac0) and Saving Throws of 1 for everything. It would be a very different sort of challenge. 

Why does the game hang after Denaton teleports me?
Try being a little patient staring at the mound of grass. It should be working after at most about a minute or so. If it is truly hung, well let me know

Why do the elves change color? 
They are being assigned to their respective squads.

Why are there so many elven archers?
Probably most of the melee people have died, so the archers seem many in comparison. Initially though, it is unlikely that most will be archers.

Why do the bodies drop so little loot?
Its intentional. 

There's so many things to sell! How am I going to carry them all?
Personally, I wouldn't bother. The most anything that drops which can sell for is less than 8 gold. It wouldn't be worth the trouble even to fill the Bag of Holding.

Where are the orcs coming from?
They are spawning in as squads.

Why doesn't the orcish leader move from their spawnpoint?
Its a hack that I use to prevent exploits. The leader is invulnerable but also unable to move or attack. This is to prevent players from ambushing the spawn point and killing the squad leaders, but the same time it prevents the leaders from accidentally running amok among your troops.

Why does the gameplay lag so much?
Try adjusting your options. Possibly though, your computer might be simply too slow to handle the mod. It can be quite intensive on the scripting side.

How do I conserve the squad numbers of the Elves?
There's a fixed number of commanders, both for elves and orcs, on the battlefield. If you keep all your commanders alive, after a while there will be no more elven squads spawning in.

How do I make the elves spawn faster?
You can't.

How do I get the Warden to listen to me and get out of danger?
You can't.

How do I adjust the difficulty apart for the damage?
Gameplay is about the same for Normal and below. For Hard setting, the orcish squads are a lot more likely to spawn in large squads led by Warlords. For Hardest setting , the elven squads are a lot more likely to spawn in small groups led by Sergeants.

Why can't I heal the Elven King Shade move from their spawnpoint?
You can't, I disabled that intentionally.

How do the Balrogs and the Elven King Shade attack the air?
They both have melee weapons that have a range in excess of 10. This allows them to attack someone from far away as if they were right next to the person.

Why can't I seem to hurt the Balrog?
The thing has over 700 life, even over 1000 life. It would be comparable to trying to demolish a house with swords - bring along some elven squads to help you, or you will almost certainly die. And killing magic etc has no effect on it.

Why can't I rest? 
You can't rest on a battlefield. You can save game though.

Can I just run away?
Strictly speaking you can, but you'll lose XP and Reputation for deserting the Elves you agreed to help.

How do I make the Warden get angry with me?
You can't.

What happens if I attack the elves / some elves?
The elf turns red and everyone nearby turns red. You still get penalised if you kill the Warden yourself.

How do I make the gameplay more balanced?
I'm not sure how balanced it is, so just email me on the difficulty and I will tweak it myself :)

How do I give you a piece of my mind?
Please email me or post it to the forum topic. All feedback and other pieces of mind are welcome. No flames please.

5.0 Credits

This is not the complete list ^^;; am in a rush and can't really think clearly.

K'aeloree - hosting and getting me to promise him a timeline it would be released by, and countless feedback and interest
Rabain - encouragement, support and feedback, and lots of help and comments on balance
Archmage183 - for ideas on coding.

There's probably a lot more who have helped and supported this project, I'd like to thank all of you. I'll be back to modify this readme so let me know if I miss you out. 

Meantime I'd also like to thank everyone who is trying this out, ESPECIALLY those who feedback me on issues and balance in the game.

