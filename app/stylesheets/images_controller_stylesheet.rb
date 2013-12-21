class ImagesControllerStylesheet < ApplicationStylesheet

  include ImagesCellStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb

    @margin = ipad? ? 12 : 8
  end

  def collection_view(st)
    #st.view.contentInset = [@margin, @margin, @margin, @margin]
    st.background_color = color.white

    st.view.collectionViewLayout.tap do |cl|
      cl.itemSize = [cell_size[:w], cell_size[:h]]
      #cl.scrollDirection = UICollectionViewScrollDirectionHorizontal
      #cl.headerReferenceSize = [cell_size[:w], cell_size[:h]]
      cl.minimumInteritemSpacing = 0
      cl.minimumLineSpacing = 0
      #cl.sectionInsert = [0,0,0,0]
    end
  end

  def overlay(st)
    st.frame = :full
    st.background_color = color.from_rgba(0,0,0,0.7)
  end

  def overlay_note(st)
    st.frame = {t: 20, w: app_width, h: 18}
    st.text = 'tap anywhere to close'
    st.text_alignment = :center
    st.color = color.white
  end

  def overlay_photo(st)
    st.frame = :full
    st.view.contentMode = UIViewContentModeScaleAspectFit
  end
end
