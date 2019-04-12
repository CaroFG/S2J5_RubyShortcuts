def check_if_user_gave_input
	abort("mkdir: missing input") if ARGV.empty?
	abort("ecris en un seul mot stp") if ARGV.length > 1
end

def get_folder_name
	return folder_name = ARGV.first
end

def create_folder(name)
	Dir.mkdir(name)
	Dir.chdir(name)
end

def create_gemfile
	gemfile = File.open("Gemfile", "a")
	gemfile.puts("source \"https://rubygems.org\"")
	gemfile.puts("ruby '2.5.1'")
	gemfile.puts("gem 'rubocop', '~> 0.57.2'")
	gemfile.puts("gem 'rspec'")
	gemfile.puts("gem 'pry'")
	gemfile.puts("gem 'dotenv'")
end

def bundle_install
	system("bundle install")
end


def git_init
	system("git init")
end


def create_git_ignore
	system("touch .gitignore")
end

def create_env
	system("touch .env")
end

def ignore_env
	gitignore = File.open(".gitignore", "a+")
	gitignore.puts(".env")
end

def lib_folder
	system("mkdir lib")
end

def rspec_init
	system("rspec --init")
end

def create_readme
	system("touch README.md")
	readme = File.open("README.md", "a+")
	readme.puts("It's a ruby program")
end



def perform
	check_if_user_gave_input
	create_folder(get_folder_name)
	create_gemfile
	bundle_install
	git_init
	create_git_ignore
	create_env
	ignore_env
	lib_folder
	rspec_init
	create_readme
end

perform