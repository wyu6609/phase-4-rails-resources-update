class Bird < ApplicationRecord
  def increment_likes
    bird = Bird.find_by(id: params[:id])
    if bird
      bird.update(likes: bird.likes + 1)
      render json: bird
    else
      render json: { error: 'bird not found' }, status: :not_found
    end
  end
end
