; oscil1.csd
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
  f1 0           4096             10          10 9 8 7 6 5 4 3 2 1
  f1 3           4096             10          10 5 3.3 2.5 2 1.6 1.4 1.25 1.1 1 ; sawtooth
  f1 6           4096             10          10 0 3.3 0 2 0 1.4 0 1.1          ; square
  f1 9           4096             10          1                                 ; sine
  f1 12          4096             10          0 1                               ; 2nd harmonic only
  f1 15          4096             10          0 0 1                             ; 3rd harmonic only
  f1 18          4096             10          0 0 0 1                           ; 4th harmonic only
  f1 21          4096             10          1 1 1 1                           ; fundamental + 2nd + 3rd + 4th
  f1 24          4096             10          10 0 0 0 0 0 1                    ; fundamental + 7th
  f1 27          4096             10          0 0 0 0 0 0 1                     ; 7th harmonic only

; i-statements
; only first three p-fields are required
; instrument action-time(s) duration(s)
  i1         0              2
  i1         3              2
  i1         6              2
  i1         9              2
  i1         12             2
  i1         15             2
  i1         18             2
  i1         21             2
  i1         24             2
  i1         27             2

</CsScore>

</CsoundSynthesizer>
