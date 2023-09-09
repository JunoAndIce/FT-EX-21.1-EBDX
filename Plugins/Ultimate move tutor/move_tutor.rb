#######################Settings#############################
MOVETUTOR=34
UCmoves=[:JUDGMENT,:OUTRAGE]
Poke=[:PSYDUCK]
BANVAR=35
BORW=59
Blacklist=[[],[:OUTRAGE,:DRAGONASCENT],[:DRAGONASCENT],[]]
Whitelist=[[],[:OUTRAGE],[:OUTRAGE,:DRAGONASCENT]]
############################################################

class MoveRelearnerScreen
  def eggMoves(pkmn)
    babyspecies=pkmn.species
    babyspecies = GameData::Species.get(babyspecies).get_baby_species(false, nil, nil)
    eggmoves=GameData::Species.get_species_form(babyspecies, pkmn.form).egg_moves
    return eggmoves
  end
		
	
  def premoves(pkmn)  
      babyspecies=pkmn.species
      babyspecies = GameData::Species.get(babyspecies).get_baby_species(false, nil, nil)
	  return [] if babyspecies=pkmn.species 
	  pkmn.species=babyspecies
	  moves= []
	  pkmn.getMoveList.each do |m|
        next if m[0] > pkmn.level || pkmn.hasMove?(m[1])
        moves.push(m[1]) if !moves.include?(m[1]) 
      end
      tmoves = []
      if pkmn.first_moves
        for i in pkmn.first_moves
          tmoves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i)
        end
      end
	  moves = tmoves + moves 
      return moves
  end
	
  def getMoveList
    return species_data.moves
  end
  
  def tutorMoves(pkmn)
    return pkmn.species_data.tutor_moves
  end
  
  def hackmoves
    moves=[]
	GameData::Move.each { |i| moves.push(i.id) }
	return moves
  end
  
  def compare_names(move,pkmn)
    pk= pkmn.name[0]
	m= move.real_name[0]
	return (pk==m)	
  end
  
  def pbGetRelearnableMoves(pkmn)
    return [] if !pkmn || pkmn.egg? || pkmn.shadowPokemon?
    moves = []
    pkmn.getMoveList.each do |m|
      next if m[0] > pkmn.level || pkmn.hasMove?(m[1])
      if $game_switches[BORW]
		  moves.push(m[1]) if !moves.include?(m[1]) && Whitelist[$game_variables[BANVAR]].include?(m[1]) 
	  else
		  moves.push(m[1]) if !moves.include?(m[1]) && !Blacklist[$game_variables[BANVAR]].include?(m[1])
	  end 
    end
    if pkmn.first_moves
	  tmoves = []
      for i in pkmn.first_moves
        if $game_switches[BORW]
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		else
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		end 
      end
	  moves = tmoves + moves
    end
	
	######pre-evo moves
	if $game_variables[MOVETUTOR]>=0 
	  specie=pkmn.species
      babyspecies=pkmn.species
      babyspecies = GameData::Species.get(babyspecies).get_baby_species(false, nil, nil) 
	  pkmn.species=babyspecies
	  pmoves=[]
	  pkmn.getMoveList.each do |m|
        next if m[0] > pkmn.level || pkmn.hasMove?(m[1])
		if $game_switches[BORW]
		  pmoves.push(m[1]) if !moves.include?(m[1]) && Whitelist[$game_variables[BANVAR]].include?(m[1]) 
		else
		  pmoves.push(m[1]) if !moves.include?(m[1]) && !Blacklist[$game_variables[BANVAR]].include?(m[1])
		end 
      end
	  moves=pmoves + moves
	  pkmn.species=specie
	end
    
    # add tutor moves, eggmoves and pre evolution moves
    if $game_variables[MOVETUTOR]>=1				#modify to == if you want to make distinct NPCs
      eggmoves=eggMoves(pkmn)
	  for i in eggmoves
        if $game_switches[BORW]
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		else
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		end 
      end
    end
    if $game_variables[MOVETUTOR]>=2				#modify to == if you want to make distinct NPCs
      tutormoves= tutorMoves(pkmn)
	  for i in tutormoves
        if $game_switches[BORW]
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		else
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		end 
      end
    end
	if $game_variables[MOVETUTOR]==3	#hackmon
	  hmoves = hackmoves
	  for i in hmoves 
	    if $game_switches[BORW]
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		else
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		end
      end
	end
	if $game_variables[MOVETUTOR]==4    #Stabmon
	  smoves=[]
	  if i.respond_to?(:maxMove?)
		GameData::Move.each { |i| smoves.push(i.id) if (i.type==pkmn.types[0] || i.type==pkmn.types[1]) && (!i.maxMove? && !i.zMove?) }	
	  else 
		GameData::Move.each { |i| smoves.push(i.id) if (i.type==pkmn.types[0] || i.type==pkmn.types[1])}
	  end
	  for i in smoves
		if $game_switches[BORW]
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		else
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		end 
	  end
	end
	if $game_variables[MOVETUTOR]==5    #Alphabetmon
	  smoves=[]
	  if i.respond_to?(:maxMove?)
		GameData::Move.each { |i| smoves.push(i.id) if compare_names(i,pkmn) && (!i.maxMove? && !i.zMove?)}	
	  else 
		GameData::Move.each { |i| smoves.push(i.id) if compare_names(i,pkmn)}
	  end
	  for i in smoves
		if $game_switches[BORW]
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		else
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		end  
	  end
	end	
    if $game_variables[MOVETUTOR]>=6	#universal move tutor		
		for i in UCmoves
		  if $game_switches[BORW]
		    moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
		  else
		    moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
		  end  
		end
	end
	if $game_variables[MOVETUTOR]>=7	#custom move tutor	
		pmoves=[:JUDGMENT]
		if Poke.include?(pkmn.species)
			for i in pmoves
				if $game_switches[BORW]
					moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && Whitelist[$game_variables[BANVAR]].include?(i) 
				else
					moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && !Blacklist[$game_variables[BANVAR]].include?(i)
				end  
			end
		end
	end		
    moves.sort! { |a, b| a.downcase <=> b.downcase } #sort moves alphabetically
    return moves | []   # remove duplicates
  end
  
end


 

