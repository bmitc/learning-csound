; oscil2.csd
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
  asound   oscil  p4, p5, 1 ; amplitude from p4, frequency from p5, function table number 1
           out    asound    ; output the asound variable to disk or the sound output buffer
endin

</CsInstruments>

<CsScore>

; f-statements
; id action-time number-of-points GEN-routine harmonic-amplitude
  f1 0           4096             10          1

; i-statements
; only first three p-fields are required
; p1:instrument p2:action-time(s) p3:duration(s) p4:amplitude p5:frequency(Hz)
;   i1            0                 2              20000        110 ; amplitude of 20,000 and frequency of 110Hz
;   i1            3                 2              8000         110
;   i1            6                 2              9000         440 ; amplitude of 9,000 and frequency of 440Hz
;   i1            9                 2              15000        440

  i1            0                 3              7000         261.625 ; C
  i1            0                 3              7000         329.627 ; E
  i1            0                 3              7000         391.995 ; G
  i1            1                 2              7000         466.163 ; B flat

</CsScore>

</CsoundSynthesizer>
