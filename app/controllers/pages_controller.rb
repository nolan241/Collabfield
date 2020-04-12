class PagesController < ApplicationController
    
    def index
    	@posts = Post.limit(5)
	    @hobby_posts = Post.by_branch('hobby').last(8)
	    @study_posts = Post.by_branch('study').last(8)
	    @team_posts = Post.by_branch('team').last(8)
    end
    
end
