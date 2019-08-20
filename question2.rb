#Q1
# class Dog
#     @@type = "犬"
#     def self.say
#         puts "ワンワン"
#     end

#     def initialize
#         @name = "マロン"
#         @dog_type = "トイプードル"
#     end

#     def say_type
#         puts "わたしは「#{@@type}」です"
#     end

#     def self_introduction
#         puts "わたしの名前は「#{@name}」で種類は「#{dog_type}」です"
#     end
# end

# dog_instance = Dog.new
# Dog.say
# dog_instance.say_type
# dog_instance.self_introduction


#Q2
# class Fruits
#     @@sum = 0
#     def self.get_sum
#         puts "合計の価格は#{@@sum}円です"
#     end

#     def initialize(name, price)
#         @name = name
#         @price = price
#         @@sum = @@sum + @price
#     end
# end

# apple = Fruits.new("リンゴ", 120)
# orange = Fruits.new("オレンジ", 200)
# strawberry = Fruits.new("イチゴ", 60)

# Fruits.get_sum

#Q3
class Food
    @@foods = []

    def self.input
        puts "料理名を入力してください:"
        name = gets.chomp
        puts "カロリーを入力してください:"
        calory = gets.to_i

        food = Food.new(name, calory)
        @@foods << food
    end

    def self.show_all_calory
        all_calory = 0
        line = "---------------------------"
        puts line
        @@foods.each do |food|
            puts "#{food.name} :#{food.calory}kcal"
            all_calory = all_calory + food.calory
        end
        puts line
        puts "カロリー合計  : #{all_calory}kcal"
    end

    def initialize(name, calory)
        @name = name
        @calory = calory
    end
    
    def name
        return @name
    end

    def calory
        return @calory
    end
end

while true do
    puts "[0]:カロリーを入力する\n[1]:カロリーの合計を見る"
    input = gets.to_i

    if input == 0
        Food.input
    elsif input == 1
        Food.show_all_calory
        exit
    else
        puts "入力された値は無効な値です"
    end
end

