; oscil.csd
; Chapter 1

<CsoundSynthesizer>

<CsOptions>
-o dac
</CsOptions>

<CsInstruments>

; header
sr     = 48000 ; sampling rate
kr     = 4800  ; control rate
ksmps  = 10    ; sr/kr ratio; must be an integer
nchnls = 1     ; number of audio output channels

; instruments
instr 1
; variable opcode arguments
  aneworc  oscil  2000, 220, 1 ; amplitude of 2,000, frequency of 220Hz, function table number 1
           out    aneworc      ; output the aneworc variable to disk or the sound output buffer
endin

</CsInstruments>

<CsScore>

; f-statements
; id action-time number-of-points GEN-routine harmonic-amplitude
  f1 0           4096             10          1

; i-statements
; only first three p-fields are required
; instrument action-time(s) duration(s)
  i1         0              3
  i1         4              2
  i1         6              2

</CsScore>

</CsoundSynthesizer>
