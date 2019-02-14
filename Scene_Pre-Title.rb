#==============================================================================
# ** Scene_Pre-Title
#------------------------------------------------------------------------------
#  This class loads a breakable movie.
#==============================================================================

#==============================================================================#
# ** Scene_Pre_Title
#==============================================================================#
class Scene_Pre_Title < Scene_Base

  def initialize
    Graphics.play_movie("Movies/Oz-Opening")
  end

  def update
    super
    goto_title
  end

  def delay?(amount)
      amount.times do
        update_basic
        break if Input.trigger?(:C)
      end
  end

  def goto_title
    delay?(500)
    SceneManager.goto(Scene_Title)
  end

end

#=*==========================================================================*=#
# ** END OF FILE
#=*==========================================================================*=#
