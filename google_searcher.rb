require 'launchy'

def check_if_user_gave_input
  abort("Renseigne ta recherche google") if ARGV.empty?  
end


def get_search_input
 input = ARGV
 output = input.join("+")
 return output
end


def search_google(search)
	Launchy.open("https://www.google.com/search?q=#{search}")
end

def perform
check_if_user_gave_input
search_google(get_search_input)

end

perform