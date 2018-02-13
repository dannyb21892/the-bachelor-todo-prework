def get_first_name_of_season_winner(data, season)
  ppl = data[season]
  
  i = 0
  while i < ppl.length
    if ppl[i][:status] == "Winner"
      ppl[i][:name].split(" ")[0]
    end
end

def get_contestant_name(data, occupation)
  data.each do |season, players|
    players.each do |player|
      player.each do |stat, value|
        if value == occupation
          player["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  out = 0
  data.each do |season, players|
  players.each do |player|
    player.each do |stat, value|
      if value == occupation
        player["name"]
      end
    end
  end
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
