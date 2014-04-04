class ComentariosController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create!(params[:comentario])
    redirect_to @post
  end
end
