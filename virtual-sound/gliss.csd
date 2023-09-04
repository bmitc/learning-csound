; gliss.csd
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
  kglis    line   220, p3, 440 ; go from 220 to 440 in p3 seconds
  a1       oscil  p4, kglis, 1 ; amplitude from p4, frequency from kglis, function table number 1
           out    a1           ; output the aone variable to disk or the sound output buffer
endin

</CsInstruments>

<CsScore>

; f-statements
; id action-time number-of-points GEN-routine harmonic-amplitude
  f1 0           4096             10          1 ; sine wave

; i-statements
; only first three p-fields are required
; p1:instrument p2:action-time(s) p3:duration(s) p4:amplitude
  i1            0                 3              4000 ; amplitude is 4000 and frequency ramps from 220Hz to 440Hz in 3 seconds
  i1            4                 10             2000 ; amplitude is 2000 and frequency ramps from 220Hz to 440Hz in 10 seconds

</CsScore>

</CsoundSynthesizer>
