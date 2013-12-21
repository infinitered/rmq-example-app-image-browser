module ImagesCellStylesheet
  def cell_size
    {w: app_width / 2, h: app_height / 5}
  end

  def images_cell(st)
    st.frame = cell_size
    st.background_color = color.random
    st.clips_to_bounds = true
  end

  def image(st)
    st.frame = :full
    st.view.contentMode = UIViewContentModeScaleAspectFill
  end
end
