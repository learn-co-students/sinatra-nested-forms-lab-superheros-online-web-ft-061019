class SuperheroTeamController < App
   
   get '/' do
      erb :'team/new'
   end

   post '/team' do
      #work with the models of Team and heros and save them and display them
      @team = Team.new(params[:team])
      
      params[:team][:members].each do |hero_hash|
         Hero.new(hero_hash)
      end 

      @heroes = Hero.all
      erb :'team/team'
   end

end