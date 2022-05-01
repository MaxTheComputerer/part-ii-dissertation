# The Blue Danube

use_synth :piano
use_synth_defaults release: 2
use_bpm 190
use_metre '3/4', :viennese_waltz

#Accompaniment
in_thread do
  ...
end


# Melody
in_thread do
  bar do
    add_note :C4
    add_note :E4
    add_note :G4
  end
  bar do
    add_note :G4
    add_rest
    add_note [:E5, :G5]
  end
  bar do
    add_note [:E5, :G5]
    add_rest
    add_note [:C5, :E5]
  end
  bar do
    add_note [:C5, :E5]
    add_rest
    add_note :C4
  end
  
  bar do
    add_note :C4
    add_note :E4
    add_note :G4
  end
  bar do
    add_note [:F4, :G4]
    add_rest
    add_note [:F5, :G5]
  end
  bar do
    add_note [:F5, :G5]
    add_rest
    add_note [:B4, :F5]
  end
  bar do
    add_note [:B4, :F5]
    add_rest
    add_note :B3
  end
  
  bar do
    add_note :B3
    add_note :D4
    add_note :A4
  end
  bar do
    add_note :A4
    add_rest
    add_note [:F5, :A5]
  end
  bar do
    add_note [:F5, :A5]
    add_rest
    add_note [:B4, :F5]
  end
  bar do
    add_note [:B4, :F5]
    add_rest
    add_note :B3
  end
  
  bar do
    add_note :B3
    add_note :D4
    add_note :A4
  end
  bar do
    add_note :A4
    add_rest
    add_note [:E5, :A5]
  end
  bar do
    add_note [:E5, :A5]
    add_rest
    add_note [:C4, :E5]
  end
  bar do
    add_note [:C4, :E5]
    add_rest
    add_note :C4
  end
  
  bar do
    add_note :C4
    add_note :E4
    add_note :G4
  end
  bar do
    add_note :C5
    add_rest
    add_note [:G5, :C6]
  end
  bar do
    add_note [:G5, :C6]
    add_rest
    add_note [:E5, :G5]
  end
  bar do
    add_note [:E5, :G5]
    add_rest
    add_note :C4
  end
  
  bar do
    add_note :C4
    add_note :E4
    add_note :G4
  end
  bar do
    add_note :C5
    add_rest
    add_note [:A5, :C6]
  end
  bar do
    add_note [:A5, :C6]
    add_rest
    add_note [:F5, :A5]
  end
  bar do
    add_note [:F5, :A5]
    add_rest
    add_note :D4
  end
  
  bar do
    add_note :D4
    add_note :F4
    add_note :A4
  end
  bar do
    add_note :A4, 0, 3
  end
  bar do
    add_rest
    add_note :Fs4
    add_note :G4
  end
  bar do
    add_note [:C5, :E5], 0, 3
  end
  bar do
    add_rest
    add_note :C5
    add_note :E4
  end
  
  bar do
    add_note :E4, 0, 2
    add_note :D4
  end
  bar do
    add_note :A4, 0, 2
    add_note :G4
  end
  bar do
    add_note :C4
    add_rest
    add_note [:C4, :C5]
  end
  bar do
    add_note [:C4, :C5]
  end
end
