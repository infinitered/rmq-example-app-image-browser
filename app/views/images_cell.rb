class ImagesCell < UICollectionViewCell 
  attr_reader :reused

  def rmq_build
    rmq(self).apply_style :images_cell

    rmq(self.contentView).tap do |q|
      @image = q.append(UIImageView, :image).get
    end
  end

  def prepareForReuse
    @reused = true
  end

  def update(params)
    if url = params[:url]
      @image.url = url
    end
  end

end
