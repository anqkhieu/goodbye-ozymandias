#==============================================================================
# ** Scene_Credits
#------------------------------------------------------------------------------
#  This class performs game credits processing.
#==============================================================================

class Scene_Credits < Scene_Base
  #--------------------------------------------------------------------------
  # * Start Processing
  #--------------------------------------------------------------------------
  def start
    super
    play_gameover_music
    fadeout_frozen_graphics
    create_background
    #------EXPERIMENT------
    #create_foreground
    #create_command_window

  end
  #--------------------------------------------------------------------------
  # * Termination Processing
  #--------------------------------------------------------------------------
  def terminate
    super
    dispose_background
    #dispose_foreground
  end
  #--------------------------------------------------------------------------
  # * Frame Update
  #--------------------------------------------------------------------------
  def update
    super
    goto_title if Input.trigger?(:C)
  end
  #--------------------------------------------------------------------------
  # * Execute Transition
  #--------------------------------------------------------------------------
  def perform_transition
    Graphics.transition(fadein_speed)
  end
  #--------------------------------------------------------------------------
  # * Play Music on Game Over Screen
  #--------------------------------------------------------------------------
  def play_gameover_music
    RPG::BGM.stop
    RPG::BGS.stop
    $data_system.gameover_me.play
  end
  #--------------------------------------------------------------------------
  # * Fade Out Frozen Graphics
  #--------------------------------------------------------------------------
  def fadeout_frozen_graphics
    Graphics.transition(fadeout_speed)
    Graphics.freeze
  end
  #--------------------------------------------------------------------------
  # * Create Background
  #--------------------------------------------------------------------------
  def create_background
    @sprite = Sprite.new
    @sprite.bitmap = Cache.system("Credits-BG")
  end

  #--------------------------------------------------------------------------
  # * Create Foreground
  #--------------------------------------------------------------------------
  def create_foreground
    @foreground_sprite = Sprite.new
    @foreground_sprite.bitmap = Bitmap.new(Graphics.width, Graphics.height)
    @foreground_sprite.z = 100
    draw_credits
  end

  #--------------------------------------------------------------------------
  # * Draw Credits
  #--------------------------------------------------------------------------
  #def draw_credits
  #  @foreground_sprite.bitmap.font.size = 24
  #  rect = Rect.new(0, 10, Graphics.width, Graphics.height / 2)
  #  @foreground_sprite.bitmap.draw_text(rect, "Game Design", 1)
  #  @foreground_sprite.bitmap.font.size = 22
  #  rect = Rect.new(120, 22, Graphics.width, Graphics.height / 2)
  #  @foreground_sprite.bitmap.draw_text(rect, "Programmer:", 0)
  #  rect = Rect.new(350, 22, Graphics.width, Graphics.height / 2)
  #  @foreground_sprite.bitmap.draw_text(rect, "Alisa Khieu", 0)
  #  rect = Rect.new(140, 44, Graphics.width, Graphics.height / 2)
  #  @foreground_sprite.bitmap.draw_text(rect, "with Enterbrain's RPG Maker VX Ace", 0)
  #  end
  #--------------------------------------------------------------------------
  # * Free Background
  #--------------------------------------------------------------------------
  def dispose_background
    @sprite.bitmap.dispose
    @sprite.dispose
  end
  #--------------------------------------------------------------------------
  # * Free Foreground
  #--------------------------------------------------------------------------
  #def dispose_foreground
  #  @foreground_sprite.bitmap.dispose
  #  @foreground_sprite.dispose
  #end
  #--------------------------------------------------------------------------
  # * Get Fade Out Speed
  #--------------------------------------------------------------------------
  def fadeout_speed
    return 50
  end
  #--------------------------------------------------------------------------
  # * Get Fade In Speed
  #--------------------------------------------------------------------------
  def fadein_speed
    return 50
  end
  #--------------------------------------------------------------------------
  # * Transition to Title Screen
  #--------------------------------------------------------------------------
  def goto_title
    fadeout_all
    SceneManager.goto(Scene_Title)
  end
end
