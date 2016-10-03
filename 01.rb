require 'line/bot'

@client = Line::Bot::Client.new { |config|
        config.channel_secret = "0ef054e3ad6da638d64457e916204012"
        config.channel_token = "N+gvJ5zU/Qte4sBpv4q9G8oP1tdLxHf6dlUE8KKMcKwZNnMCeK/gABoVI3iV6fEBswKFitBDBYf+PTagn+W4jG9tIeQvCzfnGxXTEFmvJB9+eSPlR5SQw1z8oug/gmeclpwjDeAD0lpK4UUpC6yZ4gdB04t89/1O/w1cDnyilFU="
}

def push
    message = {
    type: 'text',
    text: 'hello'
    }
    response = @client.push_message("1482310929", message)
    p response
end

def get_contents
    response = @client.get_message_content("<messageId>")
    if response.code == 200 {
        tf = Tempfile.open("content")
        tf.write(response.body)
    } else {
        p "#{response.code} #{response.body}"
    }
end