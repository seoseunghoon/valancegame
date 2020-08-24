class BoardController < ApplicationController
	def index
		@post = Post.all
		
	end
	def table
		@post = Post.all
	end
	def create
		title = params[:title]
		a = params[:A]
		b = params[:B]
		acontent = params[:Acontent]
		bcontent = params[:Bcontent]
		Post.create(title: title, A: a, B: b, Acontent: acontent, Bcontent: bcontent, Acount: 0, Bcount: 0, thumbsup: 0, thumbsdown: 0)
		@counting = Counting.find(1)
		@counting.counting = @counting.counting + 1
		@counting.save
		redirect_to '/board'
	end
	def start
		@counting = Counting.find(1).counting
		@game = Post.find(rand(1..@counting))
	end
	def Aclick
		@test= Post.find(params[:id])
		@test.Acount = @test.Acount + 1
		@test.save

	end
	
	def Bclick
		@test= Post.find(params[:id])
		@test.Bcount = @test.Bcount + 1
		@test.save
	end
	def edit
		@post = Post.find(params[:id])
	end
	def update
		@post = Post.find(params[:id])
		@post.title = params[:title]
		@post.A = params[:A]
		@post.B = params[:B]
		@post.Acontent = params[:Acontent]
		@post.Bcontent = params[:Bcontent]
		@post.Acount = params[:Acount]
		@post.Bcount = params[:Bcount]
		@post.thumbsup = params[:thumbsup]
		@post.thumbsdown = params[:thumbsdown]
		@post.save
		redirect_to '/table'
	end
	
	def up
		@post = Post.find(params[:id])
		@post.thumbsup = @post.thumbsup + 1
		@post.save
	end
	def down
		@post = Post.find(params[:id])
		@post.thumbsdown = @post.thumbsdown + 1
		@post.save
	end
	def thumbssort
		@post = Post.all
		@post.order("thumbsup")
	end
end
