-- circuit

inspect = include 'lib/inspect'

engine.name = 'PolyPerc'

g = grid.connect()


function init()
  -- initialization
  step = 0
  clock.run(loop, 'hello')
end

function loop(msg)
  while true do
    clock.sync(1)
    step = step + 1
    step = step % 16
    engine.hz(440)
    redraw()
  end
    
end

function key(n,z)
  -- key actions: n = number, z = state
end

function enc(n,d)
  -- encoder actions: n = number, d = delta
end

function redraw()
  screen.clear()
  screen.move(10,10)
  screen.text(step)
  screen.update()
end

function cleanup()
  -- deinitialization
end