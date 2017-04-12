class Team
	attr_accessor :name, :ranking

	def initialize (name, ranking)
		@name = name
		@ranking = ranking
	end
	
end

@teams = []

def menu
	puts "Welcome to the the Tournament!"
	puts "-------------------------------"
	puts " 1. Enter Teams"
	puts " 2. List Teams"
	puts " 3. Create brackets"
	puts " 4. Exit Program"


	choice = gets.chomp.to_i

	case choice
		when 1
			 enter_teams
		when 2
			 list_teams
		when 3
			 create_brackets
		when 4
			puts "Thank you for stopping by!"
			exit
		else
			puts "Sorry, not a valid entry.  Try again!"
			menu
	end							


end			




def enter_teams
	team = ""
	until team == "done"
		puts "Enter a team name, type 'done' when finished"
		team = gets.chomp.downcase
		if team != "done"
			puts "Enter team rank"
			rank = gets.chomp.to_i
			new_team = Team.new(team, rank)
			@teams.push(new_team)
			puts "Team created."
		end
	

	end
			@teams.sort_by! { |team| team.ranking  }
			menu
end



def list_teams
	@teams.each do |team|
		puts "#{team.ranking} -  #{team.name}"
	end
	menu
end



def create_brackets
	puts "Matchups:"

	temp_arr = []
	@teams.each do |team|
		temp_arr.push(team)
	end
	
	if @teams.length%2 != 0
		puts "(#{temp_arr[0].ranking}) #{temp_arr.delete_at(0).name} has a bye"
	end

	while temp_arr.length > 0
		puts "(#{temp_arr[0].ranking}) #{temp_arr.delete_at(0).name} versus (#{temp_arr[temp_arr.length-1].ranking}) #{temp_arr.delete_at(temp_arr.length-1).name}"
	end

	menu
end


menu
