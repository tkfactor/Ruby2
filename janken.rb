def janken_game
 puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
   player_hands = gets.to_i
   opponent_hands = rand(3)
   
   hands = ["グー","チョキ","パー"]
   
   puts "ホイ！"
   puts "--------------------"
   puts "あなた:#{hands[player_hands]}を出しました"
   puts "相手:#{hands[opponent_hands]}を出しました"
   puts "--------------------"
   
   if player_hands == opponent_hands
     puts "あいこでした..."
     return true
    
  elsif (player_hands == 0 && opponent_hands == 1) || (player_hands == 1 && opponent_hands == 2) || (player_hands == 2 && opponent_hands == 0)
    puts "勝ちました"
    $result_win = "win"
    return false
    
    elsif player_hands == 3
      puts "棄権しました"
      return true
    
  else
    puts "負けました"
    $result_lose = "lose"
    return false
  end
end

janken_game



def direction_game
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_direction = gets.to_i
  opponent_direction = rand(4)
  direction_container = ["上","下","左","右"]
  
  puts "ホイ！"
  puts "--------------------"
  puts "あなた:#{direction_container[player_direction]}"
  puts "相手:#{direction_container[opponent_direction]}"
  puts "--------------------"
  
  if player_direction == opponent_direction && $result_win
    puts "あなたの勝ちです"
    return false
    
  elsif player_direction == opponent_direction && $result_lose
      puts "あなたの負けです"
      return false
      
  else
    puts "勝敗がつきませんでした..."
    return true
  end
end

direction_game

def game
  if janken_game == true
    return true
  
  elsif direction_game == true
    return true
    
  else
    return false
  end
 end

next_game = true
while next_game
  next_game = game
end