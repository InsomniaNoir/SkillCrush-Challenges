require 'rubygems'
require 'twilio-ruby'

account_sid = "ACd841fb09465dcc6b735d4fdf7a83683d"
auth_token = "0116becb3417cea57f0560b4b07da8c8"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask a question of the great magic 8 ball"
question = gets

answer_array = ["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it",
"As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again",
"Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
"Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

random_number = rand(answer_array.length)

message = client.account.sms.message.create({
  :from => "+14028196929"
  :to => "+14023059880"
  :body => "#{question.upcase}\n#{answer_array[random_number]}."

  })

puts message.to
