#==============================================================================
# ** Window_TitleCommand
#------------------------------------------------------------------------------
#  This window is for CustomLoading after selection of <Continue>.
#==============================================================================

class Window_CustomLoad < Window_Command
  #--------------------------------------------------------------------------
  # * Object Initialization
  #--------------------------------------------------------------------------
  def initialize
    super(0, 0)
    update_placement
    self.openness = 0
    open
  end
  #--------------------------------------------------------------------------
  # * Get Window Width
  #--------------------------------------------------------------------------
  def window_width
    return 160
  end
  #--------------------------------------------------------------------------
  # * Update Window Position
  #--------------------------------------------------------------------------
  def update_placement
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height * 1.6 - height) / 2
  end

  #--------------------------------------------------------------------------
  # * Create Command List
  #--------------------------------------------------------------------------
  def make_command_list
    add_command("File One", :command_customloading_one)
    add_command("File Two", :command_customloading_two)
    add_command("File Three", :command_customloading_three)
    add_command("File Four", :command_customloading_four)
  end

  #--------------------------------------------------------------------------
  # * Close Command Window
  #--------------------------------------------------------------------------
  #def close_command_window
    #@command_window.close
    #fadeout_all
  #end

  #--------------------------------------------------------------------------
  # * [Custom Loading] Command 1
  def command_customloading_one
      #fadeout_all
      #close_command_window
      #if Input.trigger?(:C)
        DataManager.load_game(1)
        $game_system.on_after_load
        SceneManager.goto(Scene_Map)
      end
  #end
  # [Custom Loading] Command 2
  def command_customloading_two
      close_command_window
     DataManager.load_game(2)
     $game_system.on_after_load
     SceneManager.goto(Scene_Map)
     end
  # [Custom Loading] Command 3
  def command_customloading_three
     #close_command_window
     DataManager.load_game(3)
     $game_system.on_after_load
     SceneManager.goto(Scene_Map)
   end
  # [Custom Loading] Command 4
  def command_customloading_four
      close_command_window
     DataManager.load_game(4)
    $game_system.on_after_load
     SceneManager.goto(Scene_Map)
  end
  #--------------------------------------------------------------------------

end #Window of Custom Load
