class ComentariosController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create(texto: params[:comentario]['texto'])
    redirect_to @post
  end
end
