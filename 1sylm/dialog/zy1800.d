
BEGIN ~ZY18MSGR~

CHAIN
IF ~Global("LetsTalk","LOCALS",0)~ THEN ZY18MSGR beenwaiting
@3000 /* Will these humans keep me waiting forever? Any time now the orcs could be marching on my people's lands! */
END
IF ~!Alignment(Player1,MASK_EVIL) !ReputationLT(Player1,14)~ EXTERN ZY18MSGR recognisepc
IF ~OR(2) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,14)~ EXIT

CHAIN
IF ~~ THEN ZY18MSGR recognisepc
@3001 /* Wait, you are <CHARNAME> are you not? Ah the Gods be praised, perhaps there is hope after all. */
DO ~SetGlobal("LetsTalk","LOCALS",1)~ 
= @3002 /* Surely if there were a small band that could provide assistance, it would be none other than the ones who saw an end to the Iron Throne in the North. Just spare a moment to hear what I have to say. */
END
IF ~~ THEN REPLY @3003 /* If there is anything I can do to help, I certainly will. */ EXTERN ZY18MSGR sylmarbg
IF ~~ THEN REPLY @3004 /* As long as there's a reward at the end of it, speak on. */ EXTERN ZY18MSGR sylmarbg
IF ~~ THEN REPLY @3005 /* Go on, I'll listen for now. */ EXTERN ZY18MSGR sylmarbg
IF ~~ THEN REPLY @3006 /* Sorry, I've got more pressing matters to attend to. */ EXTERN ZY18MSGR unfortunatereward
IF ~~ THEN REPLY @3007 /* I've no time to listen to your idle chatter. */ EXTERN ZY18MSGR unfortunatereward

CHAIN
IF ~Global("LetsTalk","LOCALS",1)~ THEN ZY18MSGR wetalkagain
@3008 /* You return! And not a moment too soon - my brethren's need grows with every passing minute. */
END
IF ~Global("toldbg","LOCALS",2)~ THEN REPLY @3009 /* Yes I have, and now I'm ready to go. */ EXTERN ZY18MSGR letsgonow
IF ~Global("toldbg","LOCALS",2)~ THEN REPLY @3010 /* I still have to make more preparations. */ EXTERN ZY18MSGR exitok
IF ~Global("toldbg","LOCALS",1)~ THEN REPLY @3011 /* I'll certainly assist you, you just have to show me the way. */ EXTERN ZY18MSGR howtogetthere
IF ~Global("toldbg","LOCALS",1)~ THEN REPLY @3012 /* Yes I have, but how am I going to get there? */ EXTERN ZY18MSGR howtogetthere
IF ~Global("toldbg","LOCALS",0)~ THEN REPLY @3003 /* If there is anything I can do to help, I certainly will. */ EXTERN ZY18MSGR sylmarbg
IF ~Global("toldbg","LOCALS",0)~ THEN REPLY @3004 /* As long as there's a reward at the end of it, speak on. */ EXTERN ZY18MSGR sylmarbg
IF ~Global("toldbg","LOCALS",0)~ THEN REPLY @3013 /* Tell me more, I'll listen for now. */ EXTERN ZY18MSGR sylmarbg
IF ~~ THEN REPLY @3006 /* Sorry, I've got more pressing matters to attend to. */ EXTERN ZY18MSGR exit2
IF ~~ THEN REPLY @3007 /* I've no time to listen to your idle chatter. */ EXTERN ZY18MSGR exit2

CHAIN
IF ~~ THEN ZY18MSGR unfortunatereward
@3014 /* How unfortunate. I wish there was more I could do to change your mind... perhaps the mention of a reward, yes? */
= @3015 /* Would the promise of perhaps say, a thousand gold, hold your attention for but a precious few moments? */
END 
IF ~~ THEN REPLY @3016 /* You've got my attention all right. Go on, I'm listening. */ EXTERN ZY18MSGR sylmarbg
IF ~~ THEN REPLY @3017 /* I'm sorry, but that's not quite enough. */ EXTERN ZY18MSGR exit2 
IF ~~ THEN REPLY @3018 /* A mere pittance to me. I'm out of here. */ EXTERN ZY18MSGR exit2

CHAIN
IF ~~ THEN ZY18MSGR exit2
@3019 /* I'm truly sorry to hear that. I will still be here if you shoud change your mind. */
EXIT

CHAIN
IF ~~ THEN ZY18MSGR sylmarbg
@3020 /* I represent the elven kingdom of Sylmar, in the lands south of here. We are small and keep much to ourselves, with few dealings with humans, and our settlements are well fortified and self-sufficient. */
DO ~SetGlobal("toldbg","LOCALS",1)~
= @3021 /* Recently a veritable army of orcs have been assailing our villages, aiming to destroy us. We suspect malignant forces behind the well organised brutes, and so far we have kept them at bay with little loss. */
= @3022 /* However now our intelligence informs us that they now march upon one of our sacred burial grounds, far from our key areas and defensive strongholds. We know their intention is to draw our forces out for open warfare and weaken us, but we have little choice but to meet them head-on. */ 
= @3023 /* If they were mere orcs we would not fear them, but we suspect powerful forces backing them and holding their rigid discipline, and their forces outnumber those that we can field at such short notice. */
= @3024 /* So I have come here on wings of magic seeking aid from these lands, but it seems unlikely any would be forthcoming, and now even if aid did arrive it would be too late. */
= @3025 /* If you would aid us, we would be most grateful and we will reward you as best as we can. */
END 
IF ~~ THEN REPLY @3026 /* Sure I'll help, just show me the way to get there. */ EXTERN ZY18MSGR howtogetthere
IF ~~ THEN REPLY @3027 /* I would like to, but I do not know how to get there. */  EXTERN ZY18MSGR howtogetthere
IF ~~ THEN REPLY @3028 /* This is no mere favour you ask of me. I'll decide based on the reward. */ EXTERN ZY18MSGR reward
IF ~~ THEN REPLY @3029 /* I wish I could help you, but this sounds way out of my league. */ EXTERN ZY18MSGR exit2
IF ~~ THEN REPLY @3030 /* Too bad, no interest at all from me. I have better things to do. */ EXTERN ZY18MSGR exit2

CHAIN
IF ~~ THEN ZY18MSGR howtogetthere
@3031 /* You will not have far to travel - I will use my spells and send you directly to our holy grounds. We normally would not suffer strangers tread there but we have little choice. */
DO ~SetGlobal("toldbg","LOCALS",2)~
= @3032 /* Over there our general, whom we call the March Warden by his title and dominion, will cover in detail what you need to do, assuming he has not yet engaged the enemy forces. */
= @3033 /* Likely it will involve supporting his forces, which will bear the brunt of the attacks. You have but to keep him alive, and as many of his troops as possible, until the orcish forces are sufficiently thinned out for further developments. */
= @3034 /* If you are ready, I will need but a moment to prepare my spells, then you will be where you need to be. */
END
IF ~~ THEN REPLY @3035 /* Yes, I'm ready to go. */ EXTERN ZY18MSGR letsgonow
IF ~~ THEN REPLY @3036 /* I think I need to make preparations first. */ EXTERN ZY18MSGR exitok
IF ~~ THEN REPLY @3037 /* I've a change of heart, I'm not going to go. Find someone else. */ EXTERN ZY18MSGR exit2

CHAIN
IF ~~ THEN ZY18MSGR reward
@3038 /* We have little to offer in terms of reward, except for gold. I think the price of a thousand gold is a fair and princely amount, not to mention the huge experience and prestige that you will earn from triumphing in such a battle. */
= @3039 /* I trust that will be enough for you? */
END
IF ~~ THEN REPLY @3040 /* Sounds good, now just show me the way to get there. */ EXTERN ZY18MSGR howtogetthere
IF ~~ THEN REPLY @3017 /* I'm sorry, but that's not quite enough. */ EXTERN ZY18MSGR exit2 
IF ~~ THEN REPLY @3018 /* A mere pittance to me. I'm out of here. */ EXTERN ZY18MSGR exit2

CHAIN
IF ~~ THEN ZY18MSGR exitok
@3041 /* Certainly, that is wise, although I am still understandably anxious. */
= @3042 /* I would suggest preparing healing spells, and area spells that will only hurt foes and not allies. An ample stock of potions and ammunition would be extremely helpful. */
= @3043 /* Meantime, I will be waiting here. I hope you will not tarry. */
EXIT 

CHAIN
IF ~~ THEN ZY18MSGR letsgonow
@3044 /* Excellent! Now, let me send you on your way by the quickest means possible... */
DO ~SetCutSceneLite(TRUE)
AddJournalEntry(@500,QUEST)
FadeToColor([30.0],0)
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
Wait(2)
ActionOverride(Player1, LeaveAreaLUA("ZY1800","",[1600.525],2))
ActionOverride(Player2, LeaveAreaLUA("ZY1800","",[1560.485],2))
ActionOverride(Player3, LeaveAreaLUA("ZY1800","",[1640.565],2))
ActionOverride(Player4, LeaveAreaLUA("ZY1800","",[1640.485],2))
ActionOverride(Player5, LeaveAreaLUA("ZY1800","",[1600.445],2))
ActionOverride(Player6, LeaveAreaLUA("ZY1800","",[1680.605],2))~
EXIT


BEGIN ~ZY18BAL1~
BEGIN ~ZY18BAL2~
BEGIN ~ZY18BAL3~
BEGIN ~ZY18ELSH~
BEGIN ~ZY18WRDN~

CHAIN 
IF  ~RandomNum(3,3)~ THEN ZY18WRDN DuringTalkA
@3045 /* My people are eternally grateful for your assistance. */
DO ~ClearActions(Myself)~ EXIT

CHAIN 
IF ~RandomNum(2,3)~ THEN ZY18WRDN DuringTalkA
@3046 /* Your aid couldn't be more welcome in this time of need. */
DO ~ClearActions(Myself)~ EXIT

CHAIN 
IF ~RandomNum(1,3)~ THEN ZY18WRDN DuringTalkB
@3047 /* I thank you for your support in this dire hour. */
DO ~ClearActions(Myself)~ EXIT

CHAIN 
IF WEIGHT #2 ~Global("AssignDialogue","LOCALS",1)~ THEN ZY18WRDN FirstTalk
@3048 /* Your arrival is much appreciated, <CHARNAME>. I had hoped a hero of renown from the north would have heard of our plight and aid us, and it is indeed a relief to see that you are here in our hour of dire need. */
DO ~SetGlobal("AssignDialogue","LOCALS",2)~
= @3049 /* As we speak, the orcs are marching from the south and the west to encroach upon our holiest grounds. I have been tasked to prevent the desecration of this most sacred place, but we are outnumbered to say the least. */
= @3050 /* I can spare but a few moments to keep you appraised on what is going on, if you have anything to ask please feel free to do so. */
END
IF ~~ THEN REPLY @3051 /* I will not burden you with more questions, just prepare our forces as best as you can. */ EXTERN ZY18WRDN iamready
IF ~~ THEN REPLY @3052 /* What is the size of the forces ranged against us and how will it affect our battle? */ EXTERN ZY18WRDN forcesize
IF ~~ THEN REPLY @3053 /* What is your plan on the things we must do to win this battle? */ EXTERN ZY18WRDN plantowin
IF ~~ THEN REPLY @3054 /* Good luck, but I'm not going to stick my neck out in a skirmish like this. */ EXTERN ZY18WRDN willnotfight

CHAIN 
IF ~~ THEN ZY18WRDN forcesize
@3055 /* From our intelligence reports, we are outnumbered roughly two to one, both in terms of reserves and on the field. They will be coming at us from three sides - the south, the west and the southwest. */
= @3056 /* Once an army's reserve squads are depleted, reinforcements will take far longer to reach the battlefield. If we keep their numbers low before the next force comes, eventually when their reserves are depleted we can make use of the lull to march onto their positions. */
END
IF ~~ THEN REPLY @3051 /* I will not burden you with more questions, just prepare our forces as best as you can. */ EXTERN ZY18WRDN iamready
IF ~~ THEN REPLY @3053 /* What is your plan on the things we must do to win this battle? */ EXTERN ZY18WRDN plantowin
IF ~~ THEN REPLY @3054 /* Good luck, but I'm not going to stick my neck out in a skirmish like this. */ EXTERN ZY18WRDN willnotfight

CHAIN
IF ~~ THEN ZY18WRDN plantowin
@3057 /* Our plan is simple. Let all of us remain alive, and conserve our resources such as our magic and keep our life up. Also do ensure that I do not fall, lest my brethren lose heart and retreat. */
= @3058 /* Together we will erode away the orcish forces until their army commanders have no choice but to take to the field. */
= @3059 /* Once that happens, we will advance on their positions and upon slaying their leaders, the army itself should largely fall into disarray as it will be every orc for himself. Then our victory will be complete. */
END
IF ~~ THEN REPLY @3051 /* I will not burden you with more questions, just prepare our forces as best as you can. */ EXTERN ZY18WRDN iamready
IF ~~ THEN REPLY @3052 /* What is the size of the forces ranged against us and how will it affect our battle? */ EXTERN ZY18WRDN forcesize
IF ~~ THEN REPLY @3060 /* Good luck, but I'm not ggoing to stick my neck out in a skirmish like this. */ EXTERN ZY18WRDN willnotfight

CHAIN 
IF ~~ THEN ZY18WRDN iamready
@3061 /* I knew you would not desert us at this time, <CHARNAME>. I would speak more with you, but now the hour grows evil and I must rouse my men from their preparations before the enemy arrives. */
= @3062 /* To arms, brethren! Our hour has come - let us endure in valour, and strike out with boldness. */
= @3063 /* Now stand with me, and our foes will tremble as leaves before our wrath. Today, our swords will cleave our path to victory ; today, our blades shall carve our names into legends! */ 
EXIT

CHAIN 
IF ~~ THEN ZY18WRDN willnotfight
@3064 /* You disappoint me, <CHARNAME>, but I will not force your hand. Then I suggest you leave this place post haste before the enemy arrives. Meantime, I have a battle to attend to so forgive me if I do not escort you from here. */
= @3062 /* To arms, brethren! Our hour has come - let us endure in valour, and strike out with boldness. */
= @3063 /* Now stand with me, and our foes will tremble as leaves before our wrath. Today, our swords will cleave our path to victory ; today, our blades shall carve our names into legends! */ 
EXIT

CHAIN
IF ~Global("Awaken","LOCALS",0)~ THEN ZY18ELSH whatevilday
@3065 /* What evil day is this, that creatures so vile would tread so near to my resting place? */
= @3066 /* Much blood has been shed this day, and many that of my people. Ages ago, I fought so that my people may live - must they now die to protect me when I am dead? */
= @3067 /* Enough, this will end here. The dead will rise that the living may not fall, and one last time I will raise my swords to the heavens! */
DO ~SetGlobal("Awaken","LOCALS",1) SetGlobal("ZySpawnElvenShade","Zy1800",1)~
== ZY18WRDN @3068 /* Amazing... the legends were true after all. King Arveinas, and even his dancing blade Anguirel, has risen to join us... who could have imagined...!? */
= @3069 /* Yet this only shows how dire our situation is. Now that he has risen, should his essence be undone, it would spell utter failure and desecration for these grounds. And a spectre I fear, may not be healed through any means... */
DO ~AddJournalEntry(@501,QUEST)~
= @3070 /* Brethren, gather your spirits! Now our King walks among us - who then may withstand us? Let us stand tall and hold strong together. Soon this bloody night will pass, so let us each and every one, live to welcome the glorious dawn! */
EXIT

// defeated by EKS Slain

CHAIN
IF WEIGHT #2 ~Global("EKSSlain","Zy1800",2) Global("SaidEKSSlain","LOCALS",0)~ THEN ZY18WRDN eksslain
@3071 /* No, it cannot be... King Arveinas... defeated? Destroyed!? This... this is impossible! */
= @3072 /* We cannot prevail here. His destruction has proven this. Fighting here can only be futile and costly in terms of lives as well. */
= @3073 /* Retreat, men! Fall back to our cities! There is nothing left for our people here! */
DO ~SetGlobal("SaidEKSSlain","LOCALS",1)
EraseJournalEntry(@500)
EraseJournalEntry(@501)
EraseJournalEntry(@502)
EraseJournalEntry(@503)
EraseJournalEntry(@504)
AddJournalEntry(@506,QUEST_DONE)~ EXIT

// balrogs arrive

CHAIN
IF ~Global("BalrogTalk","LOCALS",0)~ THEN ZY18BAL1 starttalk
@3074 /* Such futile resistance. */
DO ~SetGlobal("BalrogTalk","LOCALS",1)~ EXIT

CHAIN
IF ~Global("BalrogTalk","LOCALS",0)~ THEN ZY18BAL2 starttalk
@3075 /* Pathetic. They shall learn. */
DO ~SetGlobal("BalrogTalk","LOCALS",1)~ EXIT

CHAIN
IF ~Global("BalrogTalk","LOCALS",0)~ THEN ZY18BAL3 starttalk
@3076 /* Now, despair... */
DO ~SetGlobal("BalrogTalk","LOCALS",1)
SetGlobal("SetBalrogDialog","Zy1800",5)~ EXIT

CHAIN
IF WEIGHT #2 ~Global("SetBalrogDialog","Zy1800",5)~ THEN ZY18WRDN balrogcommand
@3077 /* These beasts are commanded by Balrogs? This is most dire news indeed. */
= @3078 /* Let us hasten to the graveyard - there can be no doubt that if they come they will aim to devastate our gathering point. If we can destroy all of them, we might yet win this battle. */
DO ~SetGlobal("SetBalrogDialog","Zy1800",6)
AddJournalEntry(@502,QUEST)~ EXIT

// Victory! 

CHAIN
IF ~Global("ZyElvesWin","Zy1800",1)
Global("EKSHere","Zy1800",1)	
Global("EKSLeft","Zy1800",0)~ THEN ZY18ELSH victoryeks
@3079 /* My resting grounds have been purged of the demonic taint, and the outcome of this battle is certain. */
= @3080 /* Well done, Warden Aeltharon. You have proven worthy of the title March Warden over these lands, and Arveinas salutes you this day. Receive now the blessing of your King. */
== ZY18WRDN @3081 /* Your majesty, I am not worthy of this honor... */
DO ~ReallyForceSpell(Myself, CLERIC_DRAW_UPON_HOLY_MIGHT)~
== ZY18ELSH @3082 /* I have touched you this day, and my presence will remain upon you, and make you strong and wise in leading our people. And now I return now to my eternal slumber. Farewell. */
DO ~SetGlobal("EKSLeft","Zy1800",1)
CreateVisualEffectObject("ICRMPARI",Myself)
DestroySelf()~ EXIT

CHAIN
IF WEIGHT #2 ~Global("ZyElvesWin","Zy1800",1)
Global("EKSHere","Zy1800",1)	
Global("EKSLeft","Zy1800",1)~ THEN ZY18WRDN touchedbyking
@3083 /* Incredible... fighting alongside a legend, and touched by King Arveinas himself. I feel him now, his divine strength and power coursing through my being. */
= @3084 /* How could I have lived before this? I feel as if I were reborn, as life is renewed in my veins, and I rejoice now in this victory against the odds. */
EXTERN ZY18WRDN victory

CHAIN
IF WEIGHT #2 ~Global("ZyElvesWin","Zy1800",1)
Global("EKSHere","Zy1800",0)~ THEN ZY18WRDN victorynoeks
@3085 /* Thus falls the last of those fell demons. Behold, the orcs are retreating! We are Victorious! */
EXTERN ZY18WRDN victory

CHAIN
IF ~~ THEN ZY18WRDN victory
@3086 /* Brethren, the day is ours! Once more we have protected our heritage and endured unto the dawn ; once more I am privileged to have fought beside each and every one of your courageous spirits. For that honor, I give all of you the sincerest thanks. */
DO ~SetGlobal("TalkVictory","LOCALS",1)~
= @3087 /* Meantime, let us also honor the memory of those who gave their lives, that we may record their names in our historical annals, and forever will they be numbered among the departed valiant. */
= @3088 /* I would also like to take this chance to acknowledge and thank the one that has protected and guarded me, and indeed all of us, to lead us to triumph against the impossible odds. */
= @3089 /* All of you here have seen <PRO_HISHER> skill on the battlefield ; all of you have watched as the tides of foes broke before <PRO_HISHER> prowess; as the onslaught of our enemies ground to a halt before <PRO_HISHER> face. */
= @3090 /* Never has someone not of our people come to our aid, especially against such odds, and never has someone stood alongside us with such distinguishing selflessness, battling with such valour in the face of death. */
= @3091 /* Brothers in arms, it is an honor and privilege to have fought beside one such person, and so it is with a heart of gratefulness and a heart of admiration I present to you our hero and champion - <CHARNAME>! */
= @3092 /* My comrade, my friend, we are forever in your debt. I wish there was more I could give you, but this is all I have been given and brought with me, as a prize for our allies, if any were forthcoming. */
= @3093 /* So to you I present it all, withholding nothing. Though it was a price meant to purchase armies, I think it is but a meagre token for your feats upon the battlefield. */
DO ~GiveGoldForce(1000)~
= @3094 /* I will not forget this day, <CHARNAME>. Though we may not meet again, I will forever remember how it felt to be inspired by your spirit and your prowess. */
END
IF ~~ THEN REPLY @3095 /* It has been a privilege, being able to assist the elves in your time of need. */ EXTERN ZY18WRDN pcsaythank
IF ~~ THEN REPLY @3096 /* I am honored as well to have fought alongside you, and to have met you, Warden. */ EXTERN ZY18WRDN pcsaythank
IF ~~ THEN REPLY @3097 /* Thanks for the praise, though I just want to know how to get back. */ EXTERN ZY18WRDN howtogetback
IF ~~ THEN REPLY @3098 /* Whatever, just get me back to Athkatla, or at least tell me how to get there. */ EXTERN ZY18WRDN howtogetback

CHAIN
IF ~~ THEN ZY18WRDN pcsaythank
@3099 /* You are too kind with your words, <CHARNAME>. In reality, it is I and my people who are forever indebted to you. */
= @3100 /* But enough pleasantries, you have tarried long enough here and must wish to be back on your way. */
EXTERN ZY18WRDN howtogetback

CHAIN
IF ~~ THEN ZY18WRDN howtogetback
@3101 /* I will send you back to where you came, to the city of Athkatla, through the means of my magic. It will save you much time and hassle, and represents my thanks to you. */
END
IF ~~ THEN REPLY @3102 /* Thank you, you are too kind to send us off this way. */ EXTERN ZY18WRDN farewell
IF ~~ THEN REPLY @3103 /* Certainly a fair offer, just send me back to Athkatla then. */ EXTERN ZY18WRDN farewell
IF ~~ THEN REPLY @3104 /* A most kind offer, but I would like to stay here and have a look around. */ EXTERN ZY18WRDN iwishtostay
IF ~~ THEN REPLY @3105 /* I intend to look around first, so you can just keep your offer to yourself. */ EXTERN ZY18WRDN iwishtostay

CHAIN
IF ~~ THEN ZY18WRDN iwishtostay
@3106 /* I'm afraid that much as I wish to, I cannot let you remain here, nor would it be fitting for you to remain. */
= @3107 /* This is the holy grounds of our people, and there will be much menial work for us to do to cleanse the filthy blood that has stained this grounds. It is the chore of soldiers, and not that of heroes. */
= @3108 /* Even if you were to remain here, you would not be able to leave easily. The forest paths leading here are complex, and the ways carefully watched by our scouts, most of whom probably would not know that you are our ally and would attempt to kill you. */
= @3109 /* If not for the demons' ingenuity, the orcs could not have seen through our wards to find our hidden paths ; if not for their numbers, our archers would have taken individuals down long before they could have reached here. */
= @3110 /* I hope you understand. If you wish to stay I know I cannot stop you by any means I can muster, but please allow me the privilege of returning you to where you came. */
END
IF ~~ THEN REPLY @3111 /* Certainly, in that case I'll be happy to leave you to your duties. */ EXTERN ZY18WRDN farewell
IF ~~ THEN REPLY @3112 /* Since you insist I will go, albeit reluctantly. */ EXTERN ZY18WRDN farewell
IF ~~ THEN REPLY @3113 /* Sorry, but I intend to stay. I trust this is not going to be a problem. */ EXTERN ZY18WRDN farewellnot
IF ~~ THEN REPLY @3114 /* Shut up, I'm going to stay here whether you like it or not. */ EXTERN ZY18WRDN farewellnot

CHAIN
IF ~~ THEN ZY18WRDN farewell
@3115 /* Farewell then, my friend and comrade. As I mentioned, it has been an honor and a privilege. */
= @3116 /* Though it is likely that we will not meet again, I hope we do. Be well and may the gods ever walk with you. */
DO ~SetCutSceneLite(TRUE)
SetGlobal("ZyWardenTeleportPlayer","GLOBAL",1)
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
Wait(2)
ActionOverride(Player2, LeaveAreaLUA("AR1000","",[2460.150],8))
ActionOverride(Player3, LeaveAreaLUA("AR1000","",[2560.150],8))
ActionOverride(Player4, LeaveAreaLUA("AR1000","",[2510.200],8))
ActionOverride(Player5, LeaveAreaLUA("AR1000","",[2460.200],8))
ActionOverride(Player6, LeaveAreaLUA("AR1000","",[2560.200],8))
SetCutSceneLite(FALSE)
ActionOverride(Player1, LeaveAreaLUA("AR1000","",[2510.150],8))
~ EXIT

CHAIN
IF ~~ THEN ZY18WRDN farewellnot
@3117 /* Very well, you may stay if that is truly your wish. I will attend to organising my men shortly, but first, here is something to safeguard you from our hidden bowmen. */
DO ~SetCutSceneLite(TRUE)
DisplayStringHead(Myself,@55)
SetGlobal("ZyWardenTeleportPlayer","GLOBAL",1)
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
Wait(2)
ActionOverride(Player2, LeaveAreaLUA("AR1000","",[2460.150],8))
ActionOverride(Player3, LeaveAreaLUA("AR1000","",[2560.150],8))
ActionOverride(Player4, LeaveAreaLUA("AR1000","",[2510.200],8))
ActionOverride(Player5, LeaveAreaLUA("AR1000","",[2460.200],8))
ActionOverride(Player6, LeaveAreaLUA("AR1000","",[2560.200],8))
SetCutSceneLite(FALSE)
ActionOverride(Player1, LeaveAreaLUA("AR1000","",[2510.150],8))
~ EXIT
