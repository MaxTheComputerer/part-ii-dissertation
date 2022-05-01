# Manjanin v3

sample_dir = "Jembe Sound-Bank\\"
load_samples sample_dir

filter = lambda do |candidates|
  [candidates.choose]
end

define :jembe1 do |stroke, level=1, duration=1|
  add_sample [sample_dir, "Jembe_01", stroke, filter], level, duration
end

define :jembe2 do |stroke, level=1, duration=1|
  add_sample [sample_dir, "Jembe_02", stroke, filter], level, duration
end

define :dundun do |stroke, level=1, duration=1|
  add_sample [sample_dir, "Dundun", stroke, filter], level, duration
end

define :get_tempo do
  x = (vt / 300) * 100
  if x < 95.5
    (17.95 * Math.log(x+5.523)) + 103.5
  elsif x < 100
    (-0.3158*x*x) + (64.5*x) - 3093
  else
    200
  end
end

define :is_end? do
  if get[:end]
    stop
  end
end

use_debug false
use_metre '12/8', :jembe

set :tempo, get_tempo
set :end, false
set :bar_num, 2

live_loop :tempo_control do
  use_bpm get[:tempo]
  sync :jembe2_loop
  set :tempo, get_tempo
  puts "Bar: " + get[:bar_num].to_s
  puts "Tempo: " + get[:tempo].round(1).to_s + " bpm"
  puts "Progress: " + ((vt / 300) * 100).round(1).to_s + "%"
  set :bar_num, get[:bar_num] + 1
end


in_thread do
  use_bpm get[:tempo]
  bar do
    jembe1 'Tone', 2
    jembe1 'Tone', 2
    add_rest 1
    jembe1 'Slap'
    jembe1 'Slap'
    add_rest 1
    jembe1 'Tone'
    jembe1 'Slap'
    jembe1 'Slap'
    jembe1 'Tone'
    jembe1 'Slap'
    jembe1 'Slap'
    add_rest 1
  end
  cue :start1
  ...
end

with_fx :pan, pan: 1 do
  live_loop :jembe2_loop, sync: :start1 do
    use_bpm get[:tempo]
    is_end?
    bar do
      jembe2 'Slap'
      add_rest 1
      jembe2 'Tone'
      jembe2 'Slap'
      add_rest 1
      jembe2 'Bass'
      jembe2 'Slap'
      add_rest 1
      jembe2 'Tone'
      jembe2 'Slap'
      add_rest 1
      jembe2 'Bass'
    end
  end
end


with_fx :pan, pan: -1 do
  with_fx :eq, low: -0.4 do
    live_loop :dundun1_loop, sync: :start1 do
      use_bpm get[:tempo]
      is_end?
      bar do
        dundun 'open'
        add_rest 1
        dundun 'open'
        add_rest 1, 2
        dundun 'closed'
        add_rest 1, 2
        dundun 'open'
        add_rest 1
        dundun 'open'
        add_rest 1
      end
    end
  end
end

