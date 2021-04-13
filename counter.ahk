; === USAGE ===============================

; Press CTRL + # to add 1.
; Press CTRL + SHIFT + # to subtract 1.

; === HOTKEYS =============================

^1::update("counter1.txt", 1)
^+1::update("counter1.txt", -1)

^2::update("counter2.txt", 1)
^+2::update("counter2.txt", -1)

^3::update("counter3.txt", 1)
^+3::update("counter3.txt", -1)

^4::update("counter4.txt", 1)
^+4::update("counter4.txt", -1)

; === FUNCTIONS ===========================

update(filename, adjustment) {
  FileRead, current, %filename%
  if !FileExist(filename) {
    count := 0
  } else {
    count := current + adjustment
  }
  file := FileOpen(filename, "w")
  file.close()
  FileAppend, %count%, %filename%
  return
}

; =========================================
