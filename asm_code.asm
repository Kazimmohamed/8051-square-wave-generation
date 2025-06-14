ORG 0000H
      LJMP MAIN        ; Jump to main code

ORG 000BH              ; Timer0 interrupt vector
      AJMP ISR         ; Jump to interrupt service routine

MAIN:
      MOV TMOD, #01H   ; Timer0 mode 1 (16-bit)
      MOV TH0, #0FCH   ; Load initial high byte
      MOV TL0, #018H   ; Load initial low byte
      SETB TR0         ; Start Timer0
      SETB ET0         ; Enable Timer0 interrupt
      SETB EA          ; Enable global interrupts
      CLR P1.0         ; Clear P1.0 initially

HERE: SJMP HERE        ; Infinite loop

ISR:                   ; Interrupt Service Routine
      CPL P1.0         ; Toggle P1.0
      MOV TH0, #0FCH   ; Reload high byte
      MOV TL0, #018H   ; Reload low byte
      RETI             ; Return from interrupt
