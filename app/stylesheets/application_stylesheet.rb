class ApplicationStylesheet < RubyMotionQuery::Stylesheet

  def application_setup

    # An example of setting up standard fonts and colors
    font_family = 'Helvetica Neue'
    font.add_named :large,    font_family, 36
    font.add_named :medium,   font_family, 24
    font.add_named :small,    font_family, 18 

    color.add_named :translucent_black, color.from_rgba(0, 0, 0, 0.4) 
    color.add_named :battleship_gray,   '#7F7F7F' 

  end

end
