def get_first_name_of_season_winner(data, season)
  ppl = data[season]
  
  i = 0
  while i < ppl.length
    if ppl[i]["status"] == "Winner"
      name = ppl[i]["name"].split(" ")
      return name[0]
    end
    i += 1
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, players|
    players.each do |player|
      if player["occupation"] == occupation
          return player["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  out = 0
  data.each do |season, players|
    players.each do |player|
      if player["hometown"] == hometown
        out += 1
      end
    end
  end
  out
end

def get_occupation(data, hometown)
  data.each do |season, players|
    players.each do |player|
      if player["hometown"] == hometown
        return player["occupation"]
      end
    end  
  end
end

def get_average_age_for_season(data, season)
  total = 0
  ppl = data[season]
  ppl.each do |player|
    total += player["age"].to_f
  end
  out =  total / ppl.length
  out.round
end
