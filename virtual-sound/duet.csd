; duet.csd
; Chapter 1

<CsoundSynthesizer>

<CsOptions>
-o dac
</CsOptions>

<CsInstruments>

; header
sr     = 44100 ; sampling rate
kr     = 4410  ; control rate
ksmps  = 10    ; sr/kr ratio; must be an integer
nchnls = 1     ; number of audio output channels

; instruments
instr 1
; variable opcode arguments
  aone     oscil  p4, p5, 1 ; amplitude from p4, frequency from p5, function table number 1
           out    aone      ; output the aone variable to disk or the sound output buffer
endin

instr 2
; variable opcode arguments
  asquare  oscil  p4, p5, 2 ; amplitude from p4, frequency from p5, function table number 2
           out    asquare   ; output the asquare variable to disk or the sound output buffer
endin

</CsInstruments>

<CsScore>

; f-statements
; id action-time number-of-points GEN-routine harmonic-amplitude
  f1 0           4096             10          1                                 ; sine wave
  f2 0           4096             10          1 0 0.33 0 2 0 0.14 0 0.11 0 0.09 ; square wave

; i-statements
; only first three p-fields are required
; p1:instrument p2:action-time(s) p3:duration(s) p4:amplitude p5:frequency(Hz)
  i1            0                 3              10000        222
  i2            4                 3              10000        222
  i1            8                 3              8000         800
  i2            12                3              8000         800

</CsScore>

</CsoundSynthesizer>
