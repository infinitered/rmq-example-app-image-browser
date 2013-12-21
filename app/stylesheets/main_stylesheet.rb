class MainStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.light_gray
  end

  def search_label(st)
    st.frame = {l: 10, t: 100, w: app_width - 20, h: 40}
    st.font = font.large
    st.text = 'Find'
    st.color = color.white
  end

  def query(st)
    st.frame = {l: 10, t: 150, w: app_width - 20, h: 50}
    st.background_color = color.white
    st.view.font = font.large
  end

  def submit_button(st)
    st.frame = {l: 10, t: 210, w: app_width - 20, h: 50}
    st.background_color = color.blue
    st.color = color.white
    st.text = 'Go!'
    st.font = font.large
  end

end
