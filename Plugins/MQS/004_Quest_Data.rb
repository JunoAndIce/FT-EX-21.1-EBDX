module QuestModule
  
  # You don't actually need to add any information, but the respective fields in the UI will be blank or "???"
  # I included this here mostly as an example of what not to do, but also to show it's a thing that exists
  Quest0 = {
  
  }
  
  # Here's the simplest example of a single-stage quest with everything specified
   Quest1 = {
    :ID => "1",
    :Name => "Shipments for Leona",
    :QuestGiver => "Leona",
    :Stage1 => "Talk to the Shopkeeper.",
	:Stage2 => "Talk to Leona.",
    :Location1 => "Lillium City",
	:Location2 => "Lillium Ranch",
    :QuestDescription => "Leona is dealing with a sick Tauros in the ranch, she told me to talk to the shopkeeper in Lillium City, to get them to ship in medicine from the Sinnoh Region.",
    :RewardString => "Nifty Tool"
  }
  
  # Here's an extension of the above that includes multiple stages
  Quest2 = {
    :ID => "2",
    :Name => "Exploring in Paeonia Park",
    :QuestGiver => "Timothy",
    :Stage1 => "Meet Timothy.",
    :Stage2 => "Enter the secret area.",
    :Stage3 => "Explore the abandoned building.",
    :Location1 => "Paeonia Park",
    :Location2 => "Paeonia Park Secret Area",
    :Location3 => "Abandoned Building",
    :QuestDescription => "A kid named Timothy found a secret area in Paeonia Park that leads to an abandoned building. He wants me to meet him at the Park to help him explore this mysterious building.",
    :RewardString => "nil"
  }
  
  # Here's an example of a quest with lots of stages that also doesn't have a stage location defined for every stage
  Quest3 = {
    :ID => "3",
    :Name => "The Sick Pokémon in the Lighthouse",
    :QuestGiver => "Group of Sailors",
    :Stage1 => "Meet at the Syringa Lighthouse.",
    :Location1 => "Syringa Town",
    :QuestDescription => "Some sailors found a sick Pokémon and are nursing it at the Syringa Lighthouse. They want me to meet them there because they're looking for a capable trainer to take care of said Pokémon.",
    :RewardString => "Rare(?) Pokémon"
  }
  
  # Here's an example of not defining the quest giver and reward text
  Quest4 = {
    :ID => "4",
    :Name => "Hungriest Man",
    :QuestGiver => "Working Man",
    :Stage1 => "Find the man in his aparment.",
    :Stage2 => "Bring the man his food.",
    :Location1 => "Paeonia Residential Area",
    :Location2 => "Paeonia Residential Area",
    :QuestDescription => "A man in Paeonia City claims he's hungry, and for some reason he's too lazy to go get said food himself. I have to find him in his apartment in Paeonia City's Residential Zone.",
    :RewardString => "Very Useful Item"
  }
  
  # Other random examples you can look at if you want to fill out the UI and check out the page scrolling
  Quest5 = {
    :ID => "5",
    :Name => "Battle Training on Ixora Island",
    :QuestGiver => "Jarvis",
    :Stage1 => "Find Jarvis on Ixora Island.",
    :Stage2 => "Get Milo's gym badge.",
	:Location1 => "Ixora Island",
    :Location2 => "Ixora Town Gym",
    :QuestDescription => "Jarvis on Ixora Island wants to train for the Gym Leader; Milo's gym badge. I'm to meet him on Ixora Island, and battle him in preparation for his battle. I think he said something about a gym badge...? ",
    :RewardString => "Really Cool TM?"
  }
  
  Quest6 = {
    :ID => "6",
    :Name => "Legendary Mysteries",
    :QuestGiver => "Terrence",
    :Stage1 => "Meet Terrence on Lobelia Island.",
    :Stage2 => "Find the people Terrence spoke of.",
    :Stage3 => "Return to Terrence.",
    :Location1 => "Lobelia Island",
    :Location2 => "nil",
	:Location3 => "Lobelia Island",
    :QuestDescription => "A man named Terrence wants to find all the legendary Pokémon hidden in Rialtra. He needs an able bodied trainer to help them search the region to find them all.",
    :RewardString => "nil"
  }
  
  Quest7 = {
    :ID => "7",
    :Name => "Artificial Power",
    :QuestGiver => "Yila",
    :Stage1 => "Meet Yila at Marigold City",
    :Stage2 => "Catch a Fletchinder for Yila.",
    :Stage3 => "Catch a Wishiwashi for Yila.",
    :Stage4 => "Catch a Budew for Yila.",
    :Stage5 => "Catch an Arcanine for Yila.",
    :Location1 => "Marigold City",
    :Location2 => "nil",
    :Location3 => "nil",
    :Location4 => "nil",
    :Location5 => "nil",
    :QuestDescription => "A scientist named Yila claims she wants to recreate the legendary Pokémon Arceus in her own image. She says she needs an assistant to help her bring the materials she'll need to do it.",
    :RewardString => "nil"
  }
  
  Quest8 = {
    :ID => "8",
    :Name => "The 'Z' Pokémon",
    :QuestGiver => "Jasmine",
    :Stage1 => "Meet Jasmine on Route K.",
    :Stage2 => "Find 10 Zygarde Cells.",
    :Location1 => "Route K",
    :Location2 => "nil",
    :QuestDescription => "A scientist named Jasmine wants to revive the legendary Zygarde. In order to do that she needs someone to help her. Sounds like that's my call."
  }
  
  Quest9 = {
    :ID => "9",
    :Name => "Missing Ring",
    :QuestGiver =>"Lucy",
    :Stage1 => "Meet Lucy at Marigold City.",
    :Stage2 => "Ask around to find the ring.",
    :Stage3 => "Find the Pokémon Breeder.",
    :Stage4 => "Find the Electivire Grunt.",
    :Stage5 => "Return the ring to Lucy.",
    :Location1 => "Marigold City",
    :Location2 => "Marigold City",
    :Location3 => "Marigold City",
    :Location4 => "Marigold City",
    :Location5 => "Marigold City",
    :QuestDescription => "A lady named Lucy has misplaced her wedding ring, and needs me to find it. I'm to meet her at Marigold City to help her search for it.",
    :RewardString => "Rare(?) Item"
  }
  
  Quest10 = {
    :ID => "10",
    :Name => "Swampy Terrors",
    :QuestGiver => "Hannah",
    :Stage1 => "Head to the Swamp Safari Zone.",
    :Stage2 => "Take out the Croagunk Family!",
    :Stage3 => "Report back to Hannah.",
    :Location1 => "Swamp Safari Zone",
    :Location2 => "Safari Zone: Swamp",
    :Location3 => "Nymphaea Town",
    :QuestDescription => "A family of Croagunk are terrorizing the swamp area in the Safari Zone. The kind lady from the Rangers told me to head up there and deal with the croagunk family so that they stop their terrorizing days.",
    :RewardString => "Rare(?) Item"
  }
  
  Quest11 = {
    :ID => "11",
    :Name => "The Lost House",
    :QuestGiver => "Dedrick",
    :Stage1 => "Find the Realtor in Paeonia City.",
    :Stage2 => "Return to Dedrick.",
	:Location1 => "Paeonia City",
    :Location2 => "Route E",
    :QuestDescription => "A man named Dedrick claims he's being kicked out of his house. He wants me to go and talk to the realtors in Paeonia City to get them to reconsider repurposing his house into a Fisherman Shack.",
    :RewardString => "nil"
  }
  
  Quest12 = {
    :ID => "12",
    :Name => "Lost Pokéball",
    :QuestGiver => "Tobias",
    :Stage1 => "Find Tobias's lost Pokéball.",
    :Stage2 => "Return the Pokéball to Tobias.",
    :Location1 => "Route I",
    :Location2 => "Galanthus Town",
    :QuestDescription => "Tobias was locked out of his house in Galanthus Town by his older brother. He said he lost his prized Pokéball. He wants me to find it on Route I, and return it to him.",
    :RewardString => "Cool Item"
  }
  
  Quest13 = {
    :ID => "13",
    :Name => "Beast in the Park",
    :QuestGiver => "Rangers",
    :Stage1 => "Head to Paeonia Park.",
    :Stage2 => "Neutralize the Kangaskhan",
    :Location1 => "Paeonia Park",
    :Location2 => "Paeonia Park",
    :QuestDescription => "A Kangaskhan has gone loose in Paeonia Park! The Rangers need help dealing with it, and they're calling for anyone who can help!. I need to hurry!",
    :RewardString => "nil"
  }

  Quest14 = {
    :ID => "14",
    :Name => "The Old Amber",
    :QuestGiver => "Tex",
    :Stage1 => "Head to Route L.",
    :Stage2 => "Follow Tex to the Crystal Cavern.",
    :Stage3 => "Follow Tex to the Old Amber",
    :Stage4 => "Defeat the Pokémon guarding the Old Amber.",
    :Location1 => "Route L  ",
    :Location2 => "Crystal Caverns",
    :Location3 => "Crystal Cavern Pits",
    :Location4 => "Crystal Cavern Clearing",
    :QuestDescription => "A worker think they've found one of the rarest fossils on Rialtra. He's a worker, working on the Crystal Cavern Path. I'm too meet him on Route L and see what he wants...",
    :RewardString => "nil"
  }
  
  Quest15 = {
    :ID => "15",
    :Name => "Training for Glory",
    :QuestGiver => "Darla",
    :Stage1 => "Head to Aster Town.",
    :Stage2 => "Find Darla.",
    :Stage3 => "Find Darla Again.",
    :Location1 => "Aster Town",
    :Location2 => "Aster Town",
    :Location3 => "Aster Town",
    :QuestDescription => "A girl named Darla is losing to Diego and she wants to change that. She needs help training and offers a mega stone if she gets the proper training she needs. I'm to meet her at Aster Town.",
    :RewardString => "Mega Stone"
  }
  Quest16 = {
    :ID => "16",
    :Name => "Desert Blues",
    :QuestGiver => "Terrence",
    :Stage1 => "Meet Terrence on Lobelia Island.",
    :Stage2 => "Head to the Dark Caverns.",
    :Stage3 => "Relay the info to Terrence.",
    :Location1 => "Lobelia Island",
    :Location2 => "Aster Labs",
    :Location3 => "Lobelia Island",
    :QuestDescription => "Terrence has info on another legendary Pokémon in the desert. He wants to get in touch with the scientist working there to get more info on the surrounding area. I'm to meet Terrence first to hear the briefing.",
    :RewardString => "nil"
  }

  Quest17 = {
    :ID => "17",
    :Name => "The Abandoned South Desert",
    :QuestGiver => "Lonnie",
    :Stage1 => "Check out the surrounding area.",
    :Stage2 => "Find the 'hidden' thing.",
    :Stage3 => "Return the machine part.",
    :Location1 => "South Red Aster Desert",
    :Location2 => "South Red Aster Desert",
    :Location3 => "Aster Caves",
    :QuestDescription => "Lonnie talked about the abandoned rest spot in the desert below. She talks about an altercation that took place, and wants to know the full story. If I do some digging, I'll be able to find out what went down...",
    :RewardString => "nil"
  }
  
  Quest18 = {
    :ID => "18",
    :Name => "The House",
    :QuestGiver => "Dedrick",
    :Stage1 => "Go to the house.",
    :Stage2 => "Explore Dedrick's house.",
    :Location1 => "Route E",
    :Location2 => "???",
    :QuestDescription => "?????",
    :RewardString => "nil"
  }
  
    Quest19 = {
    :ID => "19",
    :Name => "Artificial Creation",
    :QuestGiver => "Yila",
    :Stage1 => "Meet Yila at Marigold City",
    :Location1 => "Marigold City",
    :QuestDescription => "Yila's done it! She's created the legendary Pokémon Arceus in her own image! I have to go see it! This is a monumentous occasion! I have to get to Marigold City quickly!",
    :RewardString => "nil"
  }
  
    Quest20 = {
    :ID => "20",
    :Name => "Flock Escape",
    :QuestGiver => "Ivan",
    :Stage1 => "Meet Ivan.",
    :Stage2 => "Find Farfetch'd.",
    :Location1 => "Dianthus Greenery",
    :Location2 => "Dianthus Greenery",
    :QuestDescription => "Ivan is running a farm and has lost a lot of Ducklett out on the route. He needs someone to help him gather all of them. I'm to meet him on Dianthus Greenery.",
    :RewardString => "nil"
  }
  
    Quest21 = {
    :ID => "21",
    :Name => "The Thumper",
    :QuestGiver => "Kingsley",
    :Stage1 => "Meet Kingsely.",
    :Stage2 => "Find the thumper.",
    :Stage1 => "Report to Kingsely.",
    :Location1 => "Magnolia City",
    :QuestDescription => "Kingsley in Magnolia City is having problems sleeping due to a thumping sound coming from his house. I'm to meet him at his house in Magnolia City and see what the issue is.",
    :RewardString => "nil"
  }
  
    Quest22 = {
    :ID => "22",
    :Name => "Missing Poochyena",
    :QuestGiver => "Sky",
    :Stage1 => "Find Sky's Poochyena",
    :Location1 => "Dianthus Walkway",
    :QuestDescription => "Sky has lost her Poochyena on Dianthus Walkway. She needs help finding it so she can get back home before dinner. I offered to help look around the route for her, and see if I can find her Poochyena.",
    :RewardString => "nil"
  }
  
    Quest23 = {
    :ID => "23",
    :Name => "Berry Errands for Leona",
    :QuestGiver => "Leona",
    :Stage1 => "Retrieve Damp and Gooey Mulch.",
    :Location1 => "Lillium City Floral Department",
    :QuestDescription => "Leona and Gray are trying to grow berries on their farm and they need more equipment if they're going to do so. I'm to bring them Gooey Mulch, and Damp Mulch. One of each. I can find it at Lillium City's Floral Department.",
    :RewardString => "nil"
  }
  
    Quest24 = {
    :ID => "24",
    :Name => "Legendary Hunters",
    :QuestGiver => "Cole?",
    :Stage1 => "Meet Cole at his lab in Lobelia.",
    :Stage2 => "Find all the Legendary Pokémon.",
    :Location1 => "Aster Desert Labs.",
    :Location2 => "Rialtra",
    :QuestDescription => "Terrence left a quest for me to meet him, but it was written over by Cole... It says that I should meet Cole instead of Terrence at Cole's lab. I wonder what's going on...?",
    :RewardString => "nil"
  }

    Quest25 = {
    :ID => "25",
    :Name => "The Orphanage.",
    :QuestGiver => "Faye",
    :Stage1 => "Meet up at the Orphanage.",
    :Stage2 => "Find help with the shed.",
    :Stage2 => "Clear out the house.",
    :Stage2 => "Meet back at the Orphanage.",
    :Location1 => "Greenleaf Orphanage",
    :Location2 => "Paeonia City",
    :Location3 => "Route D",
	:Location4 => "Greenleaf Orphanage",
    :QuestDescription => "Now that the Professor is gone, there's no one to watch over the orphanage. Faye wants to meet up and come up with a plan for the orphanage long term. I should meet up at Greenleaf Orphanage and see what's up.",
    :RewardString => "nil"
  }
  
    Quest26 = {
    :ID => "26",
    :Name => "Robbed Robbber.",
    :QuestGiver => "Marshal",
    :Stage1 => "Meet Marshal.",
    :Stage2 => "Find Marshal's items.",
    :Location1 => "Magnolia City Apartments",
    :Location2 => "Magnolia City: Underground",
    :QuestDescription => "Marshal has found a lot of his own items stolen. He wants me too meet him at Magnolia City. ",
    :RewardString => "nil"
  }
  
    Quest27 = {
    :ID => "27",
    :Name => "The Complete Forme.",
    :QuestGiver => "Jasmine",
    :Stage1 => "Meet Jasmine.",
    :Stage2 => "Create 100% Zygarde.",
    :Location1 => "North Route K",
	:Location2 => "North Route K",
    :QuestDescription => "Jasmine has completed her machine that's able to create the Legendary Pokémon Zygarde. She wants me to meet her at her lab on Route K. This could be a big breakthrough in Pokémon creation science all around the world!",
    :RewardString => "nil"
  }
  
  Quest28 = {
    :ID => "28",
    :Name => "Leaving the Orphanage",
    :Stage1 => "Go outside",
    :Location1 => "Greenleaf Orphanage",
    :QuestDescription => "It's my first day out of the Orphanage! My friends Faye and Del are also going to be leaving with me. I should go see the Professor outside.",
    :RewardString => "nil"
	}
	
	Quest29 = {
    :ID => "29",
    :Name => "My First Pokémon!",
    :Stage1 => "Head to the Professor's Lab",
    :Location1 => "Helianthus Town",
    :QuestDescription => "The Orphanage is now in the past. It's time to begin my journey as a Pokémon Trainer! I'm to meet Faye and Del at the Professor's lab to finally get my very own partner.",
    :RewardString => "Starter Pokémon"
	}
	
	Quest30 = {
    :ID => "30",
    :Name => "The Journey Begins!",
    :Stage1 => "Challenge my first gym.",
    :Location1 => "Lillium City",
    :QuestDescription => "I've got my partner! It's time to head out on my journey! I want to complete the Pokédex, and challenge all the gyms! I remember hearing on TV that there was a gym in Lillium City. Let's head there first.",
    :RewardString => "A journey I'll never forget!"
	}
	
	Quest31 = {
    :ID => "31",
    :Name => "The Ranch.",
    :Stage1 => "Head to Lillium Ranch.",
    :Location1 => "Lillium Ranch.",
    :QuestDescription => "The Professor mentioned that he had some old friends at the ranch that are willing to give us some things for our journey. I should go and meet them so I don't miss out on some juicy stuff!",
    :RewardString => "New Friends"
	}
	
	Quest32 = {
    :ID => "32",
    :Name => "Finding Dori.",
    :Stage1 => "Go to Route B.",
    :Location1 => "Route B.",
    :QuestDescription => "I've met the gym leader... Well their assistant. Garrison explained that Dori has a tough time handling losses as a gym leader. She's run off to Route B to hide, and Faye and I are going to meet Garrison there to help find her.",
    :RewardString => "A Gym Battle"
	}
	
	Quest33 = {
    :ID => "33",
    :Name => "Looking for Dori.",
    :Stage1 => "Search for Dori on Route B.",
    :Location1 => "Route B.",
    :QuestDescription => "Garrison let us in on some information about Gavin Harris, the old gym leader before Dori. Gavin has given his gym up to Dori and has tasked Garrison with training her. Dori has lost another battle and has ran off to Route B in a fit of rage. We're going to find her, and bring her back to the city in hopes of calming her down.",
    :RewardString => "A Gym Battle... Hopefully."
	}
	
	Quest34 = {
    :ID => "34",
    :Name => "The First Gym!",
    :Stage1 => "Defeat Garrison.",
    :Location1 => "Lillium City Gym",
    :QuestDescription => "After a tough loss in the forest, we've all decided to pursue Team Blight and rescue Dori. Garrison is going to be our first gym leader, and he wants to take us on to test us, and ready us for the road ahead. It's time for our first gym battle!",
    :RewardString => "Lillium City Badge"
	}
	
	Quest35 = {
    :ID => "35",
    :Name => "Continue the journey!",
    :Stage1 => "Head to Paeonia City.",
    :Location1 => "Paeonia City",
    :QuestDescription => "I've gotten my first gym badge! Garrison was a tough battle, but I managed to take him down! Now our next stop is Paeonia City. Faye suggests we meet up there and come up with a better plan to rescue Dori. I heard there's a shopping mall there, maybe I could stop by and see what they have.",
    :RewardString => "New Sights!"
	}
	
	Quest36 = {
    :ID => "36",
    :Name => "Talkative Grunts.",
    :Stage1 => "Tail the Team Blight Grunts.",
    :Location1 => "Paeonia City",
    :QuestDescription => "Faye and I ran into some Team Blight grunts who were talking about taking a boat to Ixora Island. There's a possibility that Dori could be on her way to that Island as well! Faye wants me to tail the Blight grunts, and get a little more information out of them to be sure. I should make sure I'm not seen by them.",
    :RewardString => "Dori's Wherabouts...?"
	}
	
	Quest37 = {
    :ID => "37",
    :Name => "The road to Syringa!",
    :Stage1 => "Head to Syringa Town.",
    :Location1 => "Syringa Town",
    :QuestDescription => "The Team Blight grunts we were overhearing tried to ambush me! Luckily the officers showed up to get me out of that situation. After getting ambushed by Team Blight grunts, we decided to follow them to Syringa Town to hopefully get on the boat they're taking. We're probably going to need Rose's help.",
    :RewardString => "A Boat Ride!"
	}
	
	Quest38 = {
    :ID => "38",
    :Name => "Small Town, Big Problems!",
    :Stage1 => "Explore Syringa Town.",
    :Location1 => "Syringa Area",
    :QuestDescription => "As expected, Rose wasn't too happy about the news on Dori. She's going to try to help us get tickets to get on the S.S. Gladiolus, so that we can pursue Team Blight onto Ixora Island. In the meantime, we're supposed to be getting more information and taking a little break until Rose gets back to us.",
    :RewardString => "Plenty of Info"
	}
	
	
	Quest39 = {
    :ID => "39",
    :Name => "A Solution?",
    :Stage1 => "Return to Garrison's House",
    :Location1 => "Syringa Town",
    :QuestDescription => "Wow, what a day! Faye and I ran into two Team Blight grunts, who were no help, and I had battles with Del and Garrison! After a long day, it's time to return back to Garrison's house to see what the final verdict will be on the tickets. ",
    :RewardString => "Tickets...?"
	}
	
	Quest40 = {
    :ID => "40",
    :Name => "The S.S. Gladiolus!",
    :Stage1 => "Head to the harbor south of town",
    :Location1 => "Syringa Town",
    :QuestDescription => "Thanks to some new and old faces, we're able to finally board the S.S. Gladiolus and get to Ixora Island! The others are waiting for me at Syringa Harbor. If I have any other obligations to take care of, now would be the time. It seems like uur chance to save Dori is getting closer and closer!",
    :RewardString => "The Boat Ride!"
	}
	
	Quest41 = {
    :ID => "41",
    :Name => "Nice Boat!",
    :Stage1 => "Check on the group.",
    :Location1 => "S.S. Gladiolus",
    :QuestDescription => "We've finally boarded the S.S. Gladiolus! It looks so much larger from the inside! Now that we're finally in, the plan was to lay low until we get to Ixora Island. In the meantime, let's check out the gang and see how everyone's doing!",
    :RewardString => "Exploration!"
	}
	
	Quest42 = {
    :ID => "42",
    :Name => "A Blight?! On my Boat?!",
    :Stage1 => "Follow Garrison into the engine room.",
    :Location1 => "S.S. Gladiolus",
    :QuestDescription => "After checking up on the gang, I ran into Garrison on the lower levels. He said he's found traces of Team Blight on the boat, and wants to check it out. The others don't look like they're up to it right now, but I'm always ready to battle! Let's go!",
    :RewardString => "Battles?"
	}
	
	Quest43 = {
    :ID => "43",
    :Name => "Island Resort!",
    :Stage1 => "Head to Ixora Town.",
    :Location1 => "Ixora Island",
    :QuestDescription => "We finally landed on Ixora Island! It seems like everyone else has already gone on ahead, so I should probably get going. We're headed to the nearest town so we can start our search on Dori. Let's get this show on the road!",
    :RewardString => "A new view!"
	}
	
	Quest44 = {
    :ID => "44",
    :Name => "Small Island Town.",
    :Stage1 => "Explore the Ixora Area",
    :Stage2 => "Go See Milo.",
    :Location1 => "Ixora Island",
    :Location2 => "Ixora Island",
    :QuestDescription => "Now that I've made it to Ixora Town, it's time to begin this search for Team Blight. Del, Faye and Garrison have already gotten started in their own ways, so let's hop to it! Let's look around town for some information, and maybe check out the gym in the meantime!",
    :RewardString => "New information."
	}
	
	Quest45 = {
    :ID => "45",
    :Name => "Spelunking on an Island!",
    :Stage1 => "Head to Ixora Caverns",
    :Location1 => "Ixora Cavern",
    :QuestDescription => "So it seems like Milo has stepped away from his gym for a bit. Del has explained to me that Garrison and Faye have heard reports of Team Blight entering and exiting the cave in Ixora Forest. It seems like our trip to this Island is finally yielding results! Time to see what this cave has in store for us!",
    :RewardString => "Dori's Location?"
	}
	
	Quest46 = {
    :ID => "46",
    :Name => "Domain in Danger!",
    :Stage1 => "Find out the source of Team Blight.",
    :Location1 => "Ixora Domain",
    :QuestDescription => "We've reached our destination! Ixora Domain is where Team Blight was hiding Dori! After managing through the Ixora Caverns we've come into a valley-like area that looks beautiful! It seems like Team Blight set up base here but are already taking their leave! Guess they knew of our arrival! We have to hurry!",
    :RewardString => "Team Blight's trail."
	}
	
	Quest47 = {
    :ID => "47",
    :Name => "The Mountainside Base.",
    :Stage1 => "Explore the Team Blight Base.",
	:Stage2 => "Go see Garrison.",
	:Stage3 => "Go see the group.",
    :Location1 => "Blight Mountain Base 1F",
    :Location2 => "Blight Mountain Base 1F",
    :Location2 => "Ixora Forest",
    :QuestDescription => "Those Team Blight grunts tried to slow us down, but we've finally entered Team Blight's base here in the Ixora Domain. Just like we figured, it's empty! While we're here, we're going to look around for clues and see if we can find anything that might get us closer to Dori. Team Blight have to have left something!",
    :RewardString => "Clues and Leads."
	}
	
	Quest48 = {
    :ID => "48",
    :Name => "The Second Gym!",
    :Stage1 => "Defeat Milo!",
	:Stage2 => "Find Garrison on the beach.",
    :Location1 => "Ixora Town",
    :Location2 => "Ixora Town",
    :QuestDescription => "After a bunch of crazy tough battles, the hardest one has yet to come! We've uncovered Team Blight's next location: Marigold City. Dori has given us the details, so our only objective now is to get strong enough to rescue her. Milo is our second challenge. Can we do it?",
    :RewardString => "Second Gym Badge!"
	}
	
	Quest49 = {
    :ID => "49",
    :Name => "Swampy Days.",
    :Stage1 => "Head to Nymphaea Town.",
    :Location1 => "Nymphaea Town",
    :QuestDescription => "After making it back to the mainland, we now have a real destination, with confirmation of Dori's wellbeing. Since Del, Faye and I are completing the gym challenge, we've decided that I'll be the sole traveler to Nymphaea Town to check it out, while the others chase Team Blight to Marigold City. Let's hope it doesn't take too long! ",
    :RewardString => "Another gym badge!"
	}
end