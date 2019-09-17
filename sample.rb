require "byebug"

# while false
# puts "数字を入力してください。"
# puts "0: グー"
# puts "1: チョキ"
# puts "2: パー"





class Player

    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  def hand
    while true
    puts "数字を入力してください。"
    puts "0: グー"
    puts "1: チョキ"
    puts "2: パー"
      player_hand = gets.chomp
      if player_hand == "2" || player_hand == "1" || player_hand == "0"
        return player_hand
      else
        puts "0~2を入力してください。"
     end
   end
end
end

class Enemy
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  def hand
    enemy_hand = rand(0..2)
    if enemy_hand == 0
      puts "相手の手はグーです。"
      return enemy_hand
    elsif enemy_hand == 1
      puts "相手の手はチョキです。"
      return enemy_hand
    elsif enemy_hand == 2
      puts "相手の手はパーです。"
      return enemy_hand
    end
  end
end

class Janken
  def pon(player_hand,enemy_hand)
    if (player_hand.to_i - enemy_hand + 3)%3 ==2
      puts "あなたの勝ちです。"
      #return exit
    elsif (player_hand.to_i - enemy_hand + 3)%3 ==1
      puts "あなたの負けです。"
      #return exit
    elsif  (player_hand.to_i - enemy_hand + 3)%3 == 0
      puts "引き分けです。"

      #return true
      janken = Janken.new
      player = Player.new
      enemy = Enemy.new
      self.pon(player.hand, enemy.hand)
end
end
end


janken = Janken.new
player = Player.new
enemy = Enemy.new
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

# 下記の記述で、ジャンケンメソッドが起動される

#while  janken.pon(player.hand, enemy.hand) do
janken.pon(player.hand, enemy.hand)
#end
# end
# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
