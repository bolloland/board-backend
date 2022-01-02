
require 'httparty'
require 'json'

def game_seed_data
    url = "https://api.boardgameatlas.com/api/search?random&limit=50&client_id=rXBDkScl0L"

    games = HTTParty.get(url)
        # byebug
    games_array = (games)["games"]
        # byebug
    games_array.each do |g|
        Game.create(name: g["name"], year_published: g["year_published"], min_player: g["min_players"], max_player: g["max_players"], min_time: g["min_playtime"], max_time: g["max_playtime"], age: g["min_age"], description: g["description"], thumb_url: g["thumb_url"], image_url: g["image_url"], avg_rating: g["average_user_rating"])
        end
    
end

game_seed_data()