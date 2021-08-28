puts "じゃんけん..."

def rps
    opponent_hand = {0 => "グー", 1 => "チョキ", 2 => "パー"}
    @i = rand(0..2)
    
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

    your_hand = {0 => "グー", 1 => "チョキ", 2 => "パー", 3 => "戦わない"}
    @hand = gets.to_i
    
    puts "ホイ！"
    puts "-------------"

    case @hand
    when 0
        puts "あなた：#{your_hand[@hand]}を出しました"
        puts "相手：#{opponent_hand[@i]}を出しました"
        
        case @i
        when 0
            puts "あいこで..."
            rps
        
        when 1, 2
            face_over_there
            
        end

    when 1
        puts "あなた：#{your_hand[@hand]}を出しました"
        puts "相手：#{opponent_hand[@i]}を出しました"

        case @i
        when 0, 2
            face_over_there
            
        when 1
            puts "あいこで..."
            rps

        end
    when 2
        puts "あなた：#{your_hand[@hand]}を出しました"
        puts "相手：#{opponent_hand[@i]}を出しました"

        case @i
        when 0, 1
            face_over_there

        when 2
            puts "あいこで..."
            rps
        end
    when 3
        puts "あなたの負けです"
    end
end

def face_over_there
    opponent_vector = {0 => "上", 1 => "下", 2 => "左", 3 => "右"}
    j = rand(0..3)

    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"

    your_vector = {0 => "上", 1 => "下", 2 => "左", 3 => "右"}
    vector = gets.to_i

    puts "ホイ！"
    puts "-------------"

    case vector
    when 0, 1, 2, 3
        puts "あなた：#{your_vector[vector]}"
        puts "相手：#{opponent_vector[j]}"
        
        if vector != j
            puts "じゃんけん..."
            rps
        
        elsif 
            if @hand == 0 && @i ==1 || @hand == 1 && @i == 2 || @hand == 2 && @i == 0
                puts "あなたの勝ちです"
            
            elsif @hand == 0 && @i ==2 || @hand == 1 && @i == 0 || @hand == 2 && @i == 1
                puts "あなたの負けです"
            end

        end
    end
end

rps

