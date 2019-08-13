#テスト問題解答用ファイル
#Q1
# def string(answer)
#     puts "#{answer}" + "!"
# end

# puts "何か値を入力してください・・・"
# answer = gets.chomp
# string(answer)

#Q2
# def string(num1,num2)
#     answer = num1 * num2
#     puts "#{num1}と#{num2}をかけた答えは#{answer}です！"
# end

# puts "最初の数字を入力してください"
# num1 = gets.chomp.to_i
# puts "２番目の数字を入力してください"
# num2 = gets.chomp.to_i

# string(num1, num2)

#Q3
# def answer(input, fruits_box)
#     puts "#{input}番目の要素は#{fruits_box[input - 1]}です！"
# end

# while true do
#     fruits_box = ["apple", "orange", "cherry"]
#     puts "何が出るかな？取り出したい要素の順番を1~#{fruits_box.length}の中から入力してください"
#     input = gets.to_i

#     if input  <= fruits_box.length && input  > 0
        
#     answer(input, fruits_box)

#     else
#         puts "入力された値は無効です"
#     end
# end

# #Q4
# def movie_info(movie, input)
#     puts movie[input]
# end
# movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}
# puts "以下から一つを選んで入力してください。\n 　・title\n　 ・genre\n 　・year"
# input = gets.chomp
# movie_info(movie, input)