$title = "test3.mxl"
in_thread do
  use_metre [[1/8r,1/8r],[1/8r,1/8r],[1/8r,1/8r],[1/8r,1/8r]]
  bar do
    use_bpm 120.0
    add_note :C4, 0, 2
    add_note :G4, 0, 2
  end
  use_metre [[1/8r,1/8r],[1/8r,1/8r],[1/8r,1/8r]]
  bar do
    add_note :C4, 1, 1
    add_note :D4, 1, 1
    add_note :E4, 1, 1
    add_note :F4, 1, 1
    add_note :E4, 1, 1
    add_note :D4, 1, 1
  end
  use_metre [[1/8r,1/8r],[1/8r,1/8r]]
  bar do
    add_note :C4, 2, 1
    add_note :D4, 2, 1
    add_note :E4, 2, 1
    add_note :F4, 2, 1
    add_note :G4, 0, 1
  end
  use_metre [[1/8r,1/8r,1/8r],[1/8r,1/8r,1/8r]]
  bar do
    add_note :C4, 0, 2
  end
end

