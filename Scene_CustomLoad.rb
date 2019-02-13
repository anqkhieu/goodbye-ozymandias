#==============================================================================
# ** Scene_CustomLoad
#------------------------------------------------------------------------------
#  This class loads the game in customized format.
#==============================================================================

class Scene_CustomLoad < Scene_Base

#--------------------------------------------------------------------------
# * Start Processing
#--------------------------------------------------------------------------
  def start
    super
    create_background_custom
    custom_trigger
  end

#--------------------------------------------------------------------------
# * Termination Processing
#--------------------------------------------------------------------------
  def terminate
    super
    fadeout_all
  end

#--------------------------------------------------------------------------
# * Custom Trigger
#--------------------------------------------------------------------------
def custom_trigger
  # open File 1, Upward
  if Input.trigger?(:UP)
  DataManager.load_game(0)
  Sound.play_load
  $game_system.on_after_load
  SceneManager.goto(Scene_Map)
  end
  # open File 2, Down
  if Input.trigger?(:DOWN)
  DataManager.load_game(1)
  Sound.play_load
  $game_system.on_after_load
  SceneManager.goto(Scene_Map)
  end
  # open File 3, Right
  if Input.trigger?(:RIGHT)
  DataManager.load_game(2)
  Sound.play_load
  $game_system.on_after_load
  SceneManager.goto(Scene_Map)
  end
  # open File 4, LEFT
  if Input.trigger?(:LEFT)
  Sound.play_load
  DataManager.load_game(3)
  $game_system.on_after_load
  SceneManager.goto(Scene_Map)
  end
end

#--------------------------------------------------------------------------
# * Frame Update
#--------------------------------------------------------------------------
def update
  super
  if Input.trigger?(:DOWN)
  custom_trigger
  end
  if Input.trigger?(:UP)
  custom_trigger
  end
  if Input.trigger?(:RIGHT)
  custom_trigger
  end
  if Input.trigger?(:LEFT)
  custom_trigger
  end
end


#--------------------------------------------------------------------------
# * EDIT: Create Custom Background
#--------------------------------------------------------------------------
  def create_background_custom

    #Creates the Load Bg
    @spriteLoadBg = Sprite.new
    @spriteLoadBg.bitmap = Cache.system("Oz-Loading")
    @spriteLoadBg.x = 0
    @spriteLoadBg.y = 0
    @spriteLoadBg.z = 10

    # Creates the Load Image, File 1
    #@spriteLoadOne = Sprite.new
    #@spriteLoadOne.bitmap = Cache.system("Credits")
    #@spriteLoadOne.x = 30
    #@spriteLoadOne.y = 45
    #@spriteLoadOne.z = 10

    # Creates the Load Image, File 2
    #@spriteLoadTwo = Sprite.new
    #@spriteLoadTwo.bitmap = Cache.system("Credits")
    #@spriteLoadTwo.x = 30
    #@spriteLoadTwo.y = 45 + 100
    #@spriteLoadTwo.z = 10

    # Creates The Load Image, File 3
    #@spriteLoadThree = Sprite.new
    #@spriteLoadThree.bitmap = Cache.system("Credits")
    #@spriteLoadThree.x = 30
    #@spriteLoadThree.y = 45 + 100 + 100
    #@spriteLoadThree.z = 10

    # Creates The Load Image, File 4
    #@spriteLoadFour = Sprite.new
    #@spriteLoadFour.bitmap = Cache.system("Credits")
    #@spriteLoadFour.x = 30
    #@spriteLoadFour.y = 45 + 100 + 100 + 100
    #@spriteLoadFour.z = 10
end


end #of Scene Custom Load
