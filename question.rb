# #Q1
# def fizz_buzz
#     puts "FizzBuzz"
# end

# def fizz
#     puts "Fizz"
# end

# def buzz
#     puts "Buzz"
# end

# num = 1
# while num <= 100 do
#     if num % 15 == 0
#         fizz_buzz
#     elsif num % 3 == 0
#         fizz
#     elsif num % 5 == 0
#         buzz
#     else 
#         puts num
#     end
# num += 1
# end

#Q2
# def get_days(year, month)
#     if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
#          31
#     elsif month == 4 || month == 6 || month == 9 || month == 11
#          30
#     elsif year % 4 == 0 && year % 100 == 0 && year % 400 == 0 && month == 2
#          29
#     else
#          28
#     end
# end

# puts "年を入力してください："
# year = gets.to_i
# puts "月を入力してください："
# month = gets.to_i

# days = get_days(year, month)
# puts "#{year}年#{month}月は#{days}日間あります"

#Q3
# def get_days(year, month)
#     days = 0
#     month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#     if month == 2
#         if  year % 4 == 0 
#             if year % 100 == 0 && year % 400 != 0
#                 days = 28
#             else
#                 days = 29
#             end
#         else
#             days = 28
#         end
#     else 
#         days = month_days[month - 1]
#     end

#     return days    
# end


# def get_week(year, month, day)
#     weeks = ["月", "火", "水", "木", "金", "土", "日"]
#     days = 0
    
#     year_index = year - 1
#     while year_index > 0 do
#         if get_days(year_index, 2) == 29
#             days = days + 366
#         else
#             days = days + 365
#         end
#         year_index -= 1
#     end
    
    
#     month_index = month - 1
#     while month_index > 0 do
#         month_days = get_days(year, month_index)
#         days = days + month_days
#         month_index -= 1
#     end
#     days = days + day

#     return weeks[(days - 1) % 7 ]
# end

# puts "年を入力してください："
# year = gets.to_i
# puts "月を入力してください："
# month = gets.to_i
# puts "日を入力してください："
# day = gets.to_i

# week = get_week(year, month, day)
# puts "#{year}年#{month}月#{day}日は#{week}曜日です"

#Q4
def win 
    puts "あなたの勝ちです"
end
def draw
    puts "あいこで"
end
def lose
    puts "あなたの負けです"
end
def janken
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i
    program_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]
    puts "わたしの手：#{jankens[program_hand]}, あなたの手：#{jankens[player_hand]}"

    if player_hand == program_hand
        draw
        return true
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        win
        return false
    else
        lose
        return false
    end 
end

next_game = true
puts "最初はグー、じゃんけん..."
while next_game do
    next_game = janken
end