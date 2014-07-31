
class Game.Classes.Keyboard
    
    constructor: (@game) ->
        
        @cursors = @game.input.keyboard.createCursorKeys()
        
        Game.Global.onUpdate.add(@update, @)
        
    setKeyBindings: (key_bindings) ->
        @key_bindings = key_bindings
        
    update: () ->
        if @cursors.left.isDown
            @key_bindings.left('left')
        if @cursors.right.isDown
            @key_bindings.right('right')
        if @cursors.up.isDown
            @key_bindings.up('up')
        if @cursors.down.isDown
            @key_bindings.down('down')
