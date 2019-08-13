# 先に定義しておく
def post_review(a_posts)  #メソッド名
    post = {}    #メソッドの処理を記載
    puts "ジャンルを入力してください:"
    post[:genre] = gets.chomp
    puts "タイトルを入力してください:"
    post[:title] = gets.chomp
    puts "感想を入力してください:"
    post[:review] = gets.chomp
    line = "---------------------------"
    
    #レビューの描画
    puts "ジャンル : #{post[:genre]}\n#{line}"
    puts "タイトル : #{post[:title]}\n#{line}"
    puts "感想 :\n#{post[:review]}\n#{line}"
    
    #配列オブジェクトに追加処理
    a_posts << post
    #postを追加した配列オブジェクトを返り値として返す
    return a_posts
end

def read_reviews(a_posts)
    number = 0
    a_posts.each do |post| #②ここもpostに入る時点で１つ１つの要素が呼び出される（ハッシュオブジェクトに変わってる）ので[:キー]が使える。
        puts "[#{number}]:#{post[:title]}のレビュー"
        number += 1
    end
    puts "\n見たいレビューの番号を入力してください:"
    answer = gets.to_i 
    post = a_posts[answer] #①配列オブジェクトから1つの要素を選んだものなので、a_postsはハッシュオブジェクトに変身する。すなわちpostもハッシュオブジェクト。
    
    line = "---------------------------"
    puts "ジャンル : #{post[:genre]}\n#{line}"
    puts "タイトル : #{post[:title]}\n#{line}"
    puts "感想 :\n#{post[:review]}\n#{line}"
end

def end_program
    exit
end

def exception
    puts "入力された値は無効な値です"
end

posts = []


while true do

    puts "レビュー数：#{posts.length}\n[0]レビューを書く\n[1]レビューを読む\n[2]アプリを終了する"
    input = gets.to_i
        
    if input == 0     #レビューを書く
        posts = post_review(posts)   #メソッド呼び出し
    elsif input == 1     #レビューを読む
        read_reviews(posts)
    elsif input == 2     #プログラムを終了する
        end_program
    else
        exception
    end
end