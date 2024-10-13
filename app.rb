require "sinatra"
require "sinatra/reloader" #only for developing remove when deploying app

get("/") do
  erb(:home, {:layout => :layout})
end

get("/rock") do
  @moves=["rock", "paper", "scissors"]
  @comp_move = @moves.sample
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "lost"
  end

  erb(:rock, {:layout => :layout})
end

get("/scissors") do
  @moves=["rock", "paper", "scissors"]
  @comp_move = @moves.sample
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "scissors"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "won"
  end

  erb(:scissors, {:layout => :layout})
end

get("/paper") do
  @moves=["rock", "paper", "scissors"]
  @comp_move = @moves.sample
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "tied"
  end

  erb(:paper, {:layout => :layout})
end
