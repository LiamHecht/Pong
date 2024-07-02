IDEAL
MODEL small
p186
jumps
STACK 100h

DATASEG
;----------------
;VARIABLES HERE!!
;----------------

;variables for Players
cordX dw ?
cordY dw ?
color db 0


playersWidth dw 8
playersHeight dw 28

x_cordinate1 dw 10
y_cordinate1 dw 90

x_cordinate2 dw 300
y_cordinate2 dw 90

;variables for score
player1ScoreX db 10
player1ScoreY db 3

player2ScoreX db 27
player2ScoreY db 3

player1Score db 0
player2Score db 0

;sound
note dw 0A98h
note2 dw 9000h




ballExample		db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h	
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h	
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h	
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h		
				db 09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h,09h	


;variables for ball
;--------------------------
;LIGHTBLUE BALL
;-------------------------

lightBlueBallWithBlackBackground 	    db 00h,00h,00h,00h,00h,00h,00h,00h
										db 00h,00h,09H,09H,09H,09H,00h,00h
										db 00h,09H,09H,09H,09H,09H,09H,00h
										db 00h,09H,09H,09H,09H,09H,09H,00h
										db 00h,09H,09H,09H,09H,09H,09H,00h
										db 00h,09H,09H,09H,09H,09H,09H,00h
										db 00h,00h,09H,09H,09H,09H,00h,00h
										db 00h,00h,00h,00h,00h,00h,00h,00h
						
lightBlueBallWithGreyBackground 	    db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
										db 0A4H,0A4H,09H,09H,09H,09H,0A4H,0A4H
										db 0A4H,09H,09H,09H,09H,09H,09H,0A4H
										db 0A4H,09H,09H,09H,09H,09H,09H,0A4H
										db 0A4H,09H,09H,09H,09H,09H,09H,0A4H
										db 0A4H,09H,09H,09H,09H,09H,09H,0A4H
										db 0A4H,0A4H,09H,09H,09H,09H,0A4H,0A4H
										db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H

lightBlueBallWithYellowBackground 	    db 037H,037H,037H,037H,037H,037H,037H,037H
									db 037H,037H,09H,09H,09H,09H,037H,037H
									db 037H,09H,09H,09H,09H,09H,09H,037H
									db 037H,09H,09H,09H,09H,09H,09H,037H
									db 037H,09H,09H,09H,09H,09H,09H,037H
									db 037H,09H,09H,09H,09H,09H,09H,037H
									db 037H,037H,09H,09H,09H,09H,037H,037H
									db 037H,037H,037H,037H,037H,037H,037H,037H


;--------------------------
;GREEN BALL
;-------------------------

greenBallWithBlackBackground 	    db 00h,00h,00h,00h,00h,00h,00h,00h
									db 00h,00h,02H,02H,02H,02H,00h,00h
									db 00h,02H,02H,02H,02H,02H,02H,00h
									db 00h,02H,02H,02H,02H,02H,02H,00h
									db 00h,02H,02H,02H,02H,02H,02H,00h
									db 00h,02H,02H,02H,02H,02H,02H,00h
									db 00h,00h,02H,02H,02H,02H,00h,00h
									db 00h,00h,00h,00h,00h,00h,00h,00h
						
greenBallWithGreyBackground 	    db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
									db 0A4H,0A4H,02H,02H,02H,02H,0A4H,0A4H
									db 0A4H,02H,02H,02H,02H,02H,02H,0A4H
									db 0A4H,02H,02H,02H,02H,02H,02H,0A4H
									db 0A4H,02H,02H,02H,02H,02H,02H,0A4H
									db 0A4H,02H,02H,02H,02H,02H,02H,0A4H
									db 0A4H,0A4H,02H,02H,02H,02H,0A4H,0A4H
									db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H

greenBallWithYellowBackground 	    db 037H,037H,037H,037H,037H,037H,037H,0A4H
									db 037H,037H,02H,02H,02H,02H,037H,037H
									db 037H,02H,02H,02H,02H,02H,02H,037H
									db 037H,02H,02H,02H,02H,02H,02H,037H
									db 037H,02H,02H,02H,02H,02H,02H,037H
									db 037H,02H,02H,02H,02H,02H,02H,037H
									db 037H,037H,02H,02H,02H,02H,037H,037H
									db 037H,037H,037H,037H,037H,037H,037H,037H

;--------------------------
;BLUE BALL
;-------------------------

blueBallWithBlackBackground 	    db 00h,00h,00h,00h,00h,00h,00h,00h
									db 00h,00h,04H,04H,04H,04H,00h,00h
									db 00h,04H,04H,04H,04H,04H,04H,00h
									db 00h,04H,04H,04H,04H,04H,04H,00h
									db 00h,04H,04H,04H,04H,04H,04H,00h
									db 00h,04H,04H,04H,04H,04H,04H,00h
									db 00h,00h,04H,04H,04H,04H,00h,00h
									db 00h,00h,00h,00h,00h,00h,00h,00h
						
blueBallWithGreyBackground 	    	db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
									db 0A4H,0A4H,04H,04H,04H,04H,0A4H,0A4H
									db 0A4H,04H,04H,04H,04H,04H,04H,0A4H
									db 0A4H,04H,04H,04H,04H,04H,04H,0A4H
									db 0A4H,04H,04H,04H,04H,04H,04H,0A4H
									db 0A4H,04H,04H,04H,04H,04H,04H,0A4H
									db 0A4H,0A4H,04H,04H,04H,04H,0A4H,0A4H
									db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H

blueBallWithYellowBackground 	    db 037H,037H,037H,037H,037H,037H,037H,037H
									db 037H,037H,04H,04H,04H,04H,037H,037H
									db 037H,04H,04H,04H,04H,04H,04H,037H
									db 037H,04H,04H,04H,04H,04H,04H,037H
									db 037H,04H,04H,04H,04H,04H,04H,037H
									db 037H,04H,04H,04H,04H,04H,04H,037H
									db 037H,037H,04H,04H,04H,04H,037H,037H
									db 037H,037H,037H,037H,037H,037H,037H,037H

;--------------------------
;WHITE BALL
;-------------------------
whiteBallWithBlackBackground 	    db 00h,00h,00h,00h,00h,00h,00h,00h
									db 00h,00h,0FFh,0FFh,0FFh,0FFh,00h,00h
									db 00h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,00h
									db 00h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,00h
									db 00h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,00h
									db 00h,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,00h
									db 00h,00h,0FFh,0FFh,0FFh,0FFh,00h,00h
									db 00h,00h,00h,00h,00h,00h,00h,00h
						
whiteBallWithGreyBackground 	    db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
									db 0A4H,0A4H,0FFh,0FFh,0FFh,0FFh,0A4H,0A4H
									db 0A4H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0A4H
									db 0A4H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0A4H
									db 0A4H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0A4H
									db 0A4H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,0A4H
									db 0A4H,0A4H,0FFh,0FFh,0FFh,0FFh,0A4H,0A4H
									db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H

whiteBallWithYellowBackground 	    db 037H,037H,037H,037H,037H,037H,037H,037H
									db 037H,037H,0FFh,0FFh,0FFh,0FFh,037H,037H
									db 037H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,037H
									db 037H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,037H
									db 037H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,037H
									db 037H,0FFh,0FFh,0FFh,0FFh,0FFh,0FFh,037H
									db 037H,037H,0FFh,0FFh,0FFh,0FFh,037H,037H
									db 037H,037H,037H,037H,037H,037H,037H,037H





;----------------------------------------
;BALLS WITH THE COLOR OF THE BACKGROUND
;---------------------------------------
blackBall  				db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h
						db 00h,00h,00h,00h,00h,00h,00h,00h

yellowDelete  			db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H
						db 037H,037H,037H,037H,037H,037H,037H,037H


greyDelete  			db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H
						db 0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H,0A4H

;----------------------------------------
;BALLS WITH WHITE BACKGROUND FOR THE SETTINGS PAGE
;---------------------------------------






; ballColorArray db 0FFH, 04h, 02h, 09h
ballColorPos db, 0
pic_off dw ?
ballX dw 150
ballY dw 100
tempX dw ?
ballWidth dw 8
ballHeight dw 7
currectColor db ?
ballSideX db 0
ballSideY db 0
ballSpeed dw 013FFH
ballLimitSpeed db 0
;Random Variables
bxsaver dw 0
rndx dw 0
randomX dw 0
randomY dw 0

;Timer variables
number db 10
ten db 10
endTime db ?
time db 0
timeCounter db 3

;BMP variables
menuScreen db  'menuScr.bmp',0
rulesScreen db  'rulesScr.bmp',0
player1WinScreen db  'pl1Win.bmp',0
player2WinScreen db  'pl2Win.bmp',0
settingsScreen db  'setting.bmp',0
PlayersHoverScreen db  'PHover.bmp',0
BallHoverScreenBlackExample db  'BHoverB.bmp',0
BallHoverScreenLightBlueExample db  'BHoverL.bmp',0
BallHoverScreenGreenExample db  'BHoverG.bmp',0
BallHoverScreenBlueExample db  'BHoverBL.bmp',0

BackGroundHoverScreen db  'BOHover.bmp',0
SimulationHoverScreen db  'SHover.bmp',0

background1 db  'back1.bmp',0
background2 db  'back2.bmp',0 ;037H
background3 db  'back3.bmp',0 ;0A4H
exitScreen db 'quit.bmp', 0

filehandle dw ?
Header db 54 dup (0)
Palette db 256*4 dup(0)
ScrLine db 320 dup (0)
ErrorMsg db 'Error',13,10,'$'

;Settings Pages Variables
;------------------------
;CHANGE PLAYERS COLORS
;------------------------
widthOptions dw 17
heightOptions dw 17

colorOptions1 dw 0F9H
cordOptionsX1 dw ?
cordOptionsY1 dw ?

x_OptionsCordinate1 dw 126
y_OptionsCordinate1 dw 84


colorOptions2 dw 2
cordOptionsX2 dw ?
cordOptionsY2 dw ?

colorArray1 db 0F9H,3,4,5,6,7,0
colorArray2 db 2,3,4,5,6,7
colorPos1 dw 0
colorPos2 dw 0

x_OptionsCordinate2 dw 252
y_OptionsCordinate2 dw 84
;------------------------
;CHANGE Background
;------------------------

widthBackground dw 35
heightBackground dw 15

x_BackGroundOptions dw 180
y_BackGroundOptions dw 85

backGroundColor2 db 0
backGroundColor dw, 0
backGroundColorPos dw, 0
backGroundColorArray db, 037H,0A4H


SimulationTimeScore db, 5
SimulationTimeScoreX db, 67
SimulationTimeScoreY db, 12




widthBackgroundExample dw 110
heightBackgroundExample dw 50

x_BackGroundExampleOptions dw 145
y_BackGroundExampleOptions dw 140

CODESEG


;------------------------
;PROCEDURES/FUNCTIONS HERE
;------------------------- 

;Print Messages
proc printString
	pusha
	mov ah, 9h
	int 21h
	popa
	ret
endp printString

;print menu screen
proc openMenuScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset menuScreen
   int 21h
   jc openerror1
   mov [filehandle], ax
   ret
   openerror1:
	mov dx, offset ErrorMsg
	mov ah, 9h
	int 21h
    ret
endp openMenuScreen

;print rules screen
proc openRulesScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset rulesScreen
   int 21h
   jc openerror2
   mov [filehandle], ax
   ret
openerror2:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp openRulesScreen



;print player1Win screen
proc openPlayer1WinScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset player1WinScreen
   int 21h
   jc openerror3
   mov [filehandle], ax
   ret
   openerror3:
	mov dx, offset ErrorMsg
	mov ah, 9h
	int 21h
    ret
endp openPlayer1WinScreen

;print player2Win screen
proc openPlayer2WinScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset player2WinScreen
   int 21h
   jc openerror4
   mov [filehandle], ax
   ret
openerror4:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp openPlayer2WinScreen

proc openSettingsScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset settingsScreen
   int 21h
   jc openerror5
   mov [filehandle], ax
   ret
openerror5:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp openSettingsScreen


;Open Black Background
proc OpenBackGround1
   mov ah, 3Dh
   xor al, al
   mov dx, offset background1
   int 21h
   jc openerror6
   mov [filehandle], ax
   ret
openerror6:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBackGround1

;Open Yellow Background
proc OpenBackGround2
   mov ah, 3Dh
   xor al, al
   mov dx, offset background2
   int 21h
   jc openerror7
   mov [filehandle], ax
   ret
openerror7:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBackGround2


;Open Grey Background
proc OpenBackGround3
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset background3
   int 21h
   jc openerror8
   mov [filehandle], ax
   ret
openerror8:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBackGround3

proc OpenExitScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset exitScreen
   int 21h
   jc openerror9
   mov [filehandle], ax
   ret
openerror9:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenExitScreen
; PlayersHoverScreen


proc OpenPHoverScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset PlayersHoverScreen
   int 21h
   jc openerror10
   mov [filehandle], ax
   ret
openerror10:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenPHoverScreen

proc OpenBHoverScreenBlack
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset BallHoverScreenBlackExample
   int 21h
   jc openerror14
   mov [filehandle], ax
   ret
openerror14:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBHoverScreenBlack

proc OpenBHoverScreenLightBlue
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset BallHoverScreenLightBlueExample
   int 21h
   jc openerror16
   mov [filehandle], ax
   ret
openerror16:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBHoverScreenLightBlue

proc OpenBHoverScreenBlue
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset BallHoverScreenBlueExample
   int 21h
   jc openerror17
   mov [filehandle], ax
   ret
openerror17:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBHoverScreenBlue


proc OpenBHoverScreenGreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset BallHoverScreenGreenExample
   int 21h
   jc openerror18
   mov [filehandle], ax
   ret
openerror18:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBHoverScreenGreen



proc OpenBOHoverScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset BackGroundHoverScreen
   int 21h
   jc openerror12
   mov [filehandle], ax
   ret
openerror12:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenBOHoverScreen


proc OpenSHoverScreen
; Open file
   mov ah, 3Dh
   xor al, al
   mov dx, offset SimulationHoverScreen 
   int 21h
   jc openerror13
   mov [filehandle], ax
   ret
openerror13:
   mov dx, offset ErrorMsg
   mov ah, 9h
   int 21h
   ret
endp OpenSHoverScreen

proc ReadHeader
; Read BMP file header, 54 bytes
  mov ah,3fh
  mov bx, [filehandle]
  mov cx,54
  mov dx,offset Header
  int 21h
  ret
 endp ReadHeader
proc ReadPalette
; Read BMP file color palette, 256 colors * 4 bytes (400h)
  mov ah,3fh
  mov cx,400h
  mov dx,offset Palette
  int 21h
  ret
 endp ReadPalette

proc CopyPal
; Copy the colors palette to the video memory
; The number of the first color should be sent to port 3C8h
; The palette is sent to port 3C9h
  mov si,offset Palette
  mov cx,256
  mov dx,3C8h
  mov al,0
; Copy starting color to port 3C8h
  out dx,al
; Copy palette itself to port 3C9h
  inc dx
PalLoop:
; Note: Colors in a BMP file are saved as BGR values rather than RGB.
  mov al,[si+2] ; Get red value.
  shr al,2 ; Max. is 255, but video palette maximal
; value is 63. Therefore dividing by 4.
  out dx,al ; Send it.
  mov al,[si+1] ; Get green value.
  shr al,2
  out dx,al ; Send it.
  mov al,[si] ; Get blue value.
  shr al,2
  out dx,al ; Send it.
  add si,4 ; Point to next color.
; (There is a null chr. after every color.)

  loop PalLoop
  ret
 endp CopyPal
proc CopyBitmap
; BMP graphics are saved upside-down.
; Read the graphic line by line (200 lines in VGA format),
; displaying the lines from bottom to top.
  mov ax, 0A000h
  mov es, ax
  mov cx,200
PrintBMPLoop:
  push cx
; di = cx*320, point to the correct screen line
  mov di,cx
  shl cx,6
  shl di,8
  add di,cx
; Read one line
  mov ah,3fh
  mov cx,320
  mov dx,offset ScrLine
  int 21h
; Copy one line into video memory
  cld ; Clear direction flag, for movsb
  mov cx,320
  mov si,offset ScrLine

rep movsb ; Copy line to the screen
;rep movsb is same as the following code:
;mov es:di, ds:si
;inc si
;inc di
;dec cx
 ;loop until cx=0
   pop cx
loop PrintBMPLoop
ret
endp CopyBitmap
	
proc CloseFile
mov ah,3Eh
mov bx, [filehandle]  
int 21h
ret
endp CloseFile

proc changeBackGoundColor
	pusha
	mov AH, 06h    ; Scroll up function
	xor AL, AL     ; Clear entire screen
	xor CX, CX     ; Upper left corner CH=row, CL=column	
	mov DX, 184FH  ; lower right corner DH=row, DL=column 
	mov BH, 09h    ; color
	int 10H
	popa
	ret
endp changeBackGoundColor


;------------------------------
;PLAYER NUMBER 1
;-----------------------------
proc drawPixel
	pusha
	xor bh,bh
	mov cx, [cordX]
	mov dx, [cordY]
	mov al, [color]
	mov ah, 0ch
	int 10h
	popa
	ret
endp drawPixel

proc drawLine1
	pusha
	mov ax, [x_cordinate1]
	mov [cordX], ax
	mov cx, [playersWidth]
	draw1:
		call drawPixel
		inc [cordX]
		loop draw1
		popa
		ret
endp drawLine1

;Draw player 1
proc drawPlayer1
	pusha
	mov ax, [colorOptions1]
    mov [color], al
	mov cx, [playersHeight]
	mov ax, [y_cordinate1]
	mov [cordY], ax
	rect1:
		call drawLine1
		inc [cordY]
		loop rect1
	popa
	ret
endp drawPlayer1

;Draw black rect on player 1
proc removePlayer1
	pusha
	mov cx, [playersHeight]
	mov ax, [y_cordinate1]
	mov [cordY], ax
	rect5:
		mov bl, [backGroundColor2]
	    mov [color], bl
		call drawLine1
		inc [cordY]
		loop rect1
	mov ax, [colorOptions1]
    mov [color], al
	popa
	ret
endp removePlayer1

;------------------------------
;PLAYER NUMBER 2
;-----------------------------
proc drawLine2
	pusha
	mov ax, [x_cordinate2]
	mov [cordX], ax
	mov cx, [playersWidth]
	draw2:
		call drawPixel
		inc [cordX]
		loop draw1
		popa
		ret
endp drawLine2

;Draw player 2
proc drawPlayer2
	pusha
	mov ax, [colorOptions2]
    mov [color], al
	mov cx, [playersHeight]
	mov ax, [y_cordinate2]
	mov [cordY], ax
	rect2:
		call drawLine2
		inc [cordY]
		loop rect2
	popa
	ret
endp drawPlayer2

;Draw black rect on player 1
proc removePlayer2
	pusha
	mov cx, [playersHeight]
	mov ax, [y_cordinate2]
	mov [cordY], ax
	rect4:
		mov bl, [backGroundColor2]
	    mov [color], bl
		call drawLine2
		inc [cordY]
		loop rect4
	mov ax, [colorOptions2]
    mov [color], al
	popa
	ret
endp removePlayer2

;------------------------------
;DRAWING THE BALL
;-----------------------------
proc printBall
	; DI  שמירה כתובת התחלתית של מערך דמות 0
	mov [ballHeight], 7
	mov di,[pic_off]
	mov dx, [ballY]
	
print_line:
	mov cx, [ballX] ; X מיקום התחלתי בציר 
	mov si, [ballWidth] ; רוחב תמונה

print_columns: 
	; AL קריאת צבע ממערך של דמות לריסטר 
	mov al, [di] ;AL להעתיק צבע ל
	inc di  ; לקדם לבצע הבא במערך
	
	; פסיקה ציור פיקסל 
	;  cx = x coordinate , dx = y coordinate, al- color
	mov bh,0
	mov ah,0ch ; cx ,dx במיקומים  al פסיקהפסיקה מציירת פיקסל  
	int 10h 
	
	inc cx ; X מגדילים 
	dec si ; מקטינים מונה עמודות
	cmp si, 0
	jne print_columns
	
	inc dx ; יורדים שורה , Y מגדילים 
	dec [ballHeight] ; מקטינים מונה שורות
	cmp [ballHeight], 0
	jne print_line
	ret
endp printBall

;------------------------------
;PRINT THE SCORE
;-----------------------------
;Print player1Score
proc printPlayer1Score
	pusha
	mov dh,[player1ScoreY]
	mov dl,[player1ScoreX]
	mov bh,0
	mov ah,2
	int 10h
	mov al,[player1Score]
	mov ah,0
	div [ten]
	add ax,'00'
	
	mov dx,ax
	mov ah,2h
	int 21h
	
	mov dl,dh
	mov ah,2
	int 21h
	popa
	ret
endp printPlayer1Score

;Print player2Score
proc printPlayer2Score
	pusha
	mov dh,[player2ScoreY]
	mov dl,[player2ScoreX]
	mov bh,0
	mov ah,2
	int 10h
	mov al,[player2Score]
	; mov ax, [colorPos1]
	mov ah,0
	div [ten]
	add ax,'00'
	
	mov dx,ax
	mov ah,2h
	int 21h
	
	mov dl,dh
	mov ah,2
	int 21h
	popa
	ret
endp printPlayer2Score




;Delay
proc delay
	pusha
	mov cx,00h
	mov dx, [ballSpeed]
	; mov dx, 01AFFH
	mov al,0
	mov ah,86h
	int 15h
	popa 
	ret
endp delay

;Delay for the settings
proc delay2
    pusha
    mov cx, 03h   ;High Word
    mov dx, 0D090H ;Low Word
    mov al, 0
    mov ah, 86h  ;Wait
    int 15h
    popa
    ret
endp delay2
;When the ball touches the player he changes his side
proc getBallSideX
	pusha
	mov al,0001b
	and al, [ballSideX]
	jz left1

	right1:
	mov ax, [ballX]
	mov [tempX], ax
	add [tempX], 5h

	mov cx, [tempX]
	mov dx, [ballY]
	jmp readColor

	left1:
	mov cx, [ballX]
	mov dx, [ballY]

	readColor:
	; read color from screen on ball place to AL
	mov bh, 0h
	mov ah, 0dh ; get color of a single pixel.
	int 10h


	
	mov [currectColor], al ; AL = pixel color
	mov bl, [backGroundColor2]
	cmp [currectColor], bl
		je none
	incballSideX:
		inc [ballSideX]
		call sound
		call drawPlayer2
		call drawPlayer1
	none:
	popa
	ret
endp getBallSideX

;When the ball touches the border he changes his side
proc getBallSideY
	pusha
	mov ax, [ballY]
	cmp [ballY], 40
		je incBallLocaionY
	cmp [ballY], 150
		je incBallLocaionY

	con1:
		jmp non2
	incBallLocaionY:
		inc [ballSideY]
	non2:
	popa
	ret
endp getBallSideY

;When the player Score Restart Ball location and inc the score of the player.
proc restartWhenScore
	pusha
	cmp [ballX], 0
		je restartBall2
	cmp [ballX], 320
		je restartBall1

	con3:
		jmp non4

	restartBall1:
		call randomBallSideX
		call randomBallSideY
		call sound2
		call deleteBall
		mov [ballX], 150
		mov [ballY], 60
		mov [ballSideY], 0
		inc [player1Score]
		call isWin
		jmp randomSideX
	restartBall2:
		call randomBallSideX
		call randomBallSideY
		call sound2
		call deleteBall
		mov [ballX], 150
		mov [ballY], 60
		mov [ballSideY], 0
		inc [player2Score]
		call isWin
		jmp randomSideX

	randomSideX:
		cmp [randomX], 1
			je incBallX
	randomSideY:
		cmp [randomY], 1
			je incBallY
		jmp non4
	incBallX:
		inc [ballSideX]
		jmp randomSideY
	incBallY:
		inc [ballSideY]
	non4:
	popa
	ret
endp restartWhenScore

;;;;TEST
; proc restartWhenScore
; 	pusha
; 	cmp [ballX], 0
; 		je restartBall
; 	cmp [ballX], 320
; 		je restartBall
; 	jmp non4
; 		restartBall:
; 		call delay
; 		call sound2
; 		call deleteBall
; 		mov [ballX], 150
; 		mov [ballY], 60
; 		mov [ballSideY], 0
; 	cmp [ballX], 320
; 		je incPlayer1
; 	cmp [ballX], 0
; 		je incPlayer2

; 	incPlayer1:
; 		inc [player1Score]
; 		jmp randomSideX
; 	incPlayer2:
; 		inc [player2Score]
; 	randomSideX:
; 		call randomBallSideX
; 		cmp [rndx], 1
; 			je incBallX 
; 	randomSideY:
; 		call randomBallSideY
; 		cmp [rndx], 1
; 			je incBallY 
; 		jmp non4
; 	incBallX:
; 		inc [ballSideX]
; 		jmp randomBallSideY
; 	incBallY:
; 		inc [ballSideY]
; 	non4:
; 	popa
; 	ret
; endp restartWhenScore


;Sound when the ball touches the players
proc sound
	pusha
	in al,61h
	or al,00000011b
	out 61h,al
	mov al,0b6h
	out 43h,al
	mov ax,[note]
	out 42h,al
	mov al,ah
	out 42h,al
	mov cx,01h
	mov dx, 04240h
	mov al,0
	mov ah,86h
	int 15h
	in al,61h
	and al,11111100b
	out 61h,al
	popa 
	ret
endp sound

;Sound when someone score
proc sound2
	pusha
	in al,61h
	or al,00000011b
	out 61h,al
	mov al,0b6h
	out 43h,al
	mov ax,[note2]
	out 42h,al
	mov al,ah
	out 42h,al
	mov cx,01h
	mov dx, 04240h
	mov al,0
	mov ah,86h
	int 15h
	in al,61h
	and al,11111100b
	out 61h,al
	popa 
	ret
endp sound2
;After a score the ball gets a random side
proc randomBallSideX
	
	pusha
	mov bx,[bxsaver]
	mov ax,40h
	mov es,ax
	mov ax,[es:6ch]
	xor ax,[bx]
	inc [bxsaver]
	mov ah,0
	and al,1
	mov [randomX],ax
	popa
	ret
endp randomBallSideX



proc randomBallSideY
	
	pusha
	mov bx,[bxsaver]
	mov ax,40h
	mov es,ax
	mov ax,[es:6ch]
	xor ax,[bx]
	inc [bxsaver]
	mov ah,0
	and al,1
	mov [randomY],ax
	popa
	ret
endp randomBallSideY

;Print the timer
proc printTimer
	pusha
	mov dh,1
	mov dl,35
	mov bh,0
	mov ah,2
	int 10h
	mov al,[number]
	mov ah,0
	div [ten]
	add ax,'00'
	
	mov dx,ax
	mov ah,2h
	int 21h
	
	mov dl,dh
	mov ah,2
	int 21h
	popa
	ret
endp printTimer


proc calculateEndTime
	pusha 
	mov ah,2ch
	int 21h
	mov [endTime],dh
	cmp [endTime],40
	ja add59
	add [endTime],20
	
	jmp endCalculate
add59:
	sub [endTime],40
endCalculate:
	popa
	ret
endp calculateEndTime

proc checkEndTime
	pusha
	mov ah,2ch
	int 21h
	cmp [timeCounter],0
	jne endCheckEndTime
	; mov [lost],1
endCheckEndTime:
	cmp [time],dh
	jne deccounter
	jmp contcounter
deccounter:
	dec [timeCounter]
contcounter:
	mov [time],dh
	popa 
	ret
endp checkEndTime
;Check if someone wins
proc isWin
	pusha
	cmp [player1Score], 10
		je end1
	cmp [player2Score], 10
		je end2
	popa
	ret
endp isWin

proc training_mode
	pusha
	call removePlayer2
	mov ax, [ballY]
	mov [tempX], ax
	sub [tempX], 15
	mov ax, [tempX]
	mov [y_cordinate2], ax
	call drawPlayer2
	popa
	ret
endp training_mode


proc simulation_mode
	pusha
	call removePlayer1
	mov ax, [ballY]
	mov [tempX], ax
	sub [tempX], 15
	mov ax, [tempX]
	mov [y_cordinate1], ax
	call drawPlayer1
	popa
	ret
endp simulation_mode

;-----------------------------
;SETTINGS PAGE
;----------------------------

;-------------------------
;PLAYER 1
;------------------------

proc drawPixelOptions1
	pusha
	xor bh,bh
	mov cx, [cordOptionsX1]
	mov dx, [cordOptionsY1]
	mov ax, [colorOptions1]
	mov ah, 0ch
	int 10h
	popa
	ret
endp drawPixelOptions1

proc drawLineOptions1
	pusha
	mov ax, [x_OptionsCordinate1]
	mov [cordOptionsX1], ax
	mov cx, [widthOptions]
	drawOption1:
		call drawPixelOptions1
		inc [cordOptionsX1]
		loop drawOption1
		popa
		ret
endp drawLineOptions1

proc drawColorOptions1
	pusha
	mov cx, [heightOptions]
	mov ax, [y_OptionsCordinate1]
	mov [cordOptionsY1], ax
	rectOption1:
		call drawLineOptions1
		inc [cordOptionsY1]
		loop rectOption1
	popa
	ret
endp drawColorOptions1

;-------------------------
;PLAYER 2
;------------------------

proc drawPixelOptions2
	pusha
	xor bh,bh
	mov cx, [cordOptionsX1]
	mov dx, [cordOptionsY1]
	mov ax, [colorOptions2]
	mov ah, 0ch
	int 10h
	popa
	ret
endp drawPixelOptions2


proc drawLineOptions2
	pusha
	mov ax, [x_OptionsCordinate2]
	mov [cordOptionsX1], ax
	mov cx, [widthOptions]
	drawOption2:
		call drawPixelOptions2
		inc [cordOptionsX1]
		loop drawOption2
		popa
		ret
endp drawLineOptions2

;Draw player 1
proc drawColorOptions2
	pusha
	mov cx, [heightOptions]
	mov ax, [y_OptionsCordinate2]
	mov [cordOptionsY1], ax
	rectOption2:
		call drawLineOptions2
		inc [cordOptionsY1]
		loop rectOption2
	popa
	ret
endp drawColorOptions2

;-------------------------
;ARROWS
;------------------------

proc changeColorRight1
	pusha
	cmp [colorPos1], 7
		je resetPosRight1
	cmp [colorOptions1], 00H
		je resetPosRight1
	inc [colorPos1]
	mov si, [colorPos1]
	mov bx, offset colorArray1
	mov ax, [word ptr bx + si]
	mov [colorOptions1], ax
	jmp non9
	resetPosRight1:
		mov [colorPos1], 0
		mov [colorOptions1],0F9H
		mov ax, 00H
		mov si, 0
		mov bx, offset colorArray1
	non9:
	popa
	ret
endp changeColorRight1

proc changeColorLeft1
	pusha
	cmp [colorPos1], 0
		je resetPosLeft1
	cmp [colorOptions1], 00H
		je resetPosLeft1
	dec [colorPos1]
	mov si, [colorPos1]
	mov bx, offset colorArray1
	mov ax, [word ptr bx + si]
	mov [colorOptions1], ax
	jmp non10
	resetPosLeft1:
		mov [colorPos1], 0
		mov [colorOptions1],0F9H
		mov ax, 00H
		mov si, 0
		mov bx, offset colorArray1
	non10:
	popa
	ret
endp changeColorLeft1

proc changeColorRight2
	pusha
	cmp [colorPos2], 7
		je resetPosRight2
	cmp [colorOptions2], 00H
		je resetPosRight2
	inc [colorPos2]
	mov di, [colorPos2]
	mov bx, offset colorArray2
	mov ax, [word ptr bx + di]
	mov [colorOptions2], ax
	jmp non11
	resetPosRight2:
		mov [colorPos2], 0
		mov [colorOptions2],02H
		mov ax, 00H
		mov di, 0
		mov bx, offset colorArray2
	non11:
	popa
	ret
endp changeColorRight2

proc changeColorLeft2
	pusha
	cmp [colorPos2], 0
		je resetPosLeft2
	cmp [colorOptions2], 00H
		je resetPosLeft2
	dec [colorPos2]
	mov di, [colorPos2]
	mov bx, offset colorArray2
	mov ax, [word ptr bx + di]
	mov [colorOptions2], ax
	jmp non12
	resetPosLeft2:
		mov [colorPos2], 0
		mov [colorOptions2],02H
		mov ax, 00H
		mov di, 0
		mov bx, offset colorArray2
	non12:
	popa
	ret
endp changeColorLeft2


;-------------------------
;BALL ARROWS
;------------------------

proc changeBallColorRight
	pusha
	inc [ballColorPos]
	popa
	ret
endp changeBallColorRight

proc changeBallColorLeft
	pusha
	dec [ballColorPos]
	popa
	ret
endp changeBallColorLeft
	
proc drawBall
	pusha
	mov [ballWidth], 8
	mov [ballHeight], 7

	cmp [ballColorPos],4
		je resetBallColor
	cmp [ballColorPos],0FFH
		je resetBallColor
	cmp [ballColorPos], 0
		je drawWhiteBall
	cmp [ballColorPos], 1
		je drawGreenBall
	cmp [ballColorPos], 2
		je drawBlueBall
	cmp [ballColorPos], 3
		je drawLightBlueBall
	drawWhiteBall:
		cmp [backGroundColorPos],0
			je drawWhiteBallWithBlackBackGround
		cmp [backGroundColorPos],1
			je drawWhiteBallWithYellowBackGround
		cmp [backGroundColorPos],2
			je drawWhiteBallWithGreyBackGround

		drawWhiteBallWithBlackBackGround:
			mov [pic_off], offset whiteBallWithBlackBackground
			call printBall
			jmp non6
		drawWhiteBallWithYellowBackGround:
			mov [pic_off], offset whiteBallWithYellowBackground
			call printBall
			jmp non6

		drawWhiteBallWithGreyBackGround:
			mov [pic_off], offset whiteBallWithGreyBackground
			call printBall
			jmp non6
	drawGreenBall:
		cmp [backGroundColorPos],0
			je drawGreenBallWithBlackBackGround
		cmp [backGroundColorPos],1
			je drawGreenBallWithYellowBackGround
		cmp [backGroundColorPos],2
			je drawGreenBallWithGreyBackGround

		drawGreenBallWithBlackBackGround:
			mov [pic_off], offset greenBallWithBlackBackground
			call printBall
			jmp non6
		drawGreenBallWithYellowBackGround:
			mov [pic_off], offset whiteBallWithYellowBackground
			call printBall
			jmp non6

		drawGreenBallWithGreyBackGround:
			mov [pic_off], offset greenBallWithGreyBackground
			call printBall
			jmp non6
		drawBlueBall:
		cmp [backGroundColorPos],0
			je drawBlueBallWithBlackBackGround
		cmp [backGroundColorPos],1
			je drawBlueBallWithYellowBackGround
		cmp [backGroundColorPos],2
			je drawBlueBallWithGreyBackGround

		drawBlueBallWithBlackBackGround:
			mov [pic_off], offset blueBallWithBlackBackground
			call printBall
			jmp non6
		drawBlueBallWithYellowBackGround:
			mov [pic_off], offset blueBallWithYellowBackground
			call printBall
			jmp non6

		drawBlueBallWithGreyBackGround:
			mov [pic_off], offset blueBallWithGreyBackground
			call printBall
			jmp non6

		drawLightBlueBall:
		cmp [backGroundColorPos],0
			je drawLightBlueBallWithBlackBackGround
		cmp [backGroundColorPos],1
			je drawLightBlueBallWithYellowBackGround
		cmp [backGroundColorPos],2
			je drawLightBlueBallWithGreyBackGround

		drawLightBlueBallWithBlackBackGround:
			mov [pic_off], offset lightBlueBallWithBlackBackground
			call printBall
			jmp non6
		drawLightBlueBallWithYellowBackGround:
			mov [pic_off], offset lightBlueBallWithYellowBackground
			call printBall
			jmp non6

		drawLightBlueBallWithGreyBackGround:
			mov [pic_off], offset lightBlueBallWithGreyBackground
			call printBall
			jmp non6

		resetBallColor:
			mov [ballColorPos], 0
			mov [pic_off], offset whiteBallWithBlackBackground
			call printBall
	non6:
	popa
	ret
endp drawBall

proc deleteBall
	pusha
	mov [ballWidth], 8
	mov [ballHeight],7
	cmp [backGroundColorPos],3
		je resetPos
	cmp [backGroundColorPos], 0
		je deleteBlackBall
	cmp [backGroundColorPos], 1
		je deleteYellowBall
	cmp [backGroundColorPos], 2
		je deleteGreyBall
	deleteBlackBall:
		mov [pic_off], offset blackBall
		call printBall
		jmp non8
	deleteYellowBall:
		mov [pic_off], offset yellowDelete
		call printBall
		jmp non8
	deleteGreyBall:
		mov [pic_off], offset greyDelete
		call printBall
		jmp non8
	resetPos:
		mov [pic_off], offset blackBall
		call printBall
		jmp non8
	non8:
	popa
	ret
endp deleteBall

proc drawBallExample
	pusha
	cmp [ballColorPos], 0
		je blackBallExample
	cmp [ballColorPos], 1
		je greenBallExample
	cmp [ballColorPos], 2
		je blueBallExample
	cmp [ballColorPos], 3
		je lightBlueBallExample
	cmp [ballColorPos], 4
		je blackBallExample
	jmp non17
	blackBallExample:
		call delay
		call OpenBHoverScreenBlack
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CopyBitmap
		call CloseFile
		jmp non17
	greenBallExample:
		call delay
		call OpenBHoverScreenGreen
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CopyBitmap
		call CloseFile
		jmp non17
	blueBallExample:
		call delay
		call OpenBHoverScreenBlue
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CopyBitmap
		call CloseFile
		jmp non17
	lightBlueBallExample:
		call delay
		call OpenBHoverScreenLightBlue
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CopyBitmap
		call CloseFile
	non17:
	popa
	ret
endp drawBallExample
;-------------------------
;CHANGE BACKGROUND COLOR
;------------------------
proc drawBackGroundPixel
	pusha
	xor bh,bh
	mov cx, [cordOptionsX1]
	mov dx, [cordOptionsY1]
	mov ax, [backGroundColor]
	mov ah, 0ch
	int 10h
	popa
	ret
endp drawBackGroundPixel

proc drawBackGroundLine
	pusha
	mov ax, [x_BackGroundOptions]
	mov [cordOptionsX1], ax
	mov cx, [widthBackground]
	drawOption3:
		call drawBackGroundPixel
		inc [cordOptionsX1]
		loop drawOption3
		popa
		ret
endp drawBackGroundLine

proc drawBackGroundRect
	pusha
	mov cx, [heightBackground]
	mov ax, [y_BackGroundOptions]
	mov [cordOptionsY1], ax
	rectOption3:
		call drawBackGroundLine
		inc [cordOptionsY1]
		loop rectOption3
	popa
	ret
endp drawBackGroundRect


proc changeBackGroundColorLeft
	pusha
	dec [backGroundColorPos]
	cmp [backGroundColorPos], 0FFH
		je resetBackGroundPosLeft
	cmp [backGroundColorPos], 0FFH
		je resetBackGroundPosLeft
	mov si, [backGroundColorPos]
	mov bx, offset backGroundColorArray
	mov ax, [word ptr bx + si]
	mov [backGroundColor], ax
	mov al, [byte ptr bx + si]
	mov [backGroundColor2], al
	jmp non13
	resetBackGroundPosLeft:
		mov [backGroundColorPos], 0
		mov [backGroundColor],00H
		mov [backGroundColor2], 00H
		mov ax, 00H
		mov si, 0
		mov bx, offset backGroundColorArray
	non13:
	popa
	ret
endp changeBackGroundColorLeft

proc changeBackGroundColorRight
	pusha
	cmp [backGroundColorPos], 3
		je resetBackGroundPosRight
	cmp [backGroundColor], 0A4H
		je resetBackGroundPosRight
	inc [backGroundColorPos]
	mov si, [backGroundColorPos]
	mov bx, offset backGroundColorArray
	mov ax, [word ptr bx + si]
	mov [backGroundColor], ax
	mov al, [byte ptr bx + si]
	mov [backGroundColor2], al
	jmp non14
	resetBackGroundPosRight:
		mov [backGroundColorPos], 0
		mov [backGroundColor],00H
		mov [backGroundColor2], 00H
		mov ax, 00H
		mov si, 0
		mov bx, offset backGroundColorArray
	non14:
	popa
	ret
endp changeBackGroundColorRight

;---------------------------
;DRAW BACKGROUND AS AN EXAMPLE
;-------------------------------
proc drawBackGroundExamplePixel
	pusha
	xor bh,bh
	mov cx, [cordOptionsX1]
	mov dx, [cordOptionsY1]
	mov ax, [backGroundColor]
	mov ah, 0ch
	int 10h
	popa
	ret
endp drawBackGroundExamplePixel

proc drawBackGroundExampleLine
	pusha
	mov ax, [x_BackGroundExampleOptions]
	mov [cordOptionsX1], ax
	mov cx, [widthBackgroundExample]
	drawOption4:
		call drawBackGroundExamplePixel
		inc [cordOptionsX1]
		loop drawOption4
		popa
		ret
endp drawBackGroundExampleLine

proc drawBackGroundExampleRect
	pusha
	mov cx, [heightBackgroundExample]
	mov ax, [y_BackGroundExampleOptions]
	mov [cordOptionsY1], ax
	rectOption4:
		call drawBackGroundExampleLine
		inc [cordOptionsY1]
		loop rectOption4
	popa
	ret
endp drawBackGroundExampleRect





proc drawBackGround
	pusha
	cmp [backGroundColorPos], 0
		je blackBackGround
	cmp [backGroundColorPos], 1
		je yellowBackGround
	cmp [backGroundColorPos], 2
		je greyBackGround
	blackBackGround:
		caLL OpenBackGround1
		jmp non7
	yellowBackGround:
		caLL OpenBackGround2
		jmp non7
	greyBackGround:
		caLL OpenBackGround3
		jmp non7
	non7:
	popa
	ret
endp drawBackGround

proc printSimulationTime
	pusha
	mov dh,[SimulationTimeScoreY]
	mov dl,[SimulationTimeScoreX]
	mov bh,0
	mov ah,2
	int 10h
	mov al,[SimulationTimeScore]
	; mov ax, [colorPos1]
	mov ah,0
	div [ten]
	add ax,'00'
	
	mov dx,ax
	mov ah,2h
	int 21h
	
	mov dl,dh
	mov ah,2
	int 21h
	popa
	ret
endp printSimulationTime

proc changeSimulationTimeRight
	pusha
	cmp [SimulationTimeScore], 20
		je non16
	inc [simulationTimeScore]
	non16:
	popa
	ret
endp changeSimulationTimeRight

proc changeSimulationTimeLeft
	pusha
	cmp [SimulationTimeScore], 5
		je non15
	dec [simulationTimeScore]
	non15:
	popa
	ret
endp changeSimulationTimeLeft
		
start:
mov ax, @data
mov ds, ax


;-----------------
;START CODING HERE
;-----------------
;Graphic Mode
mov ax, 13h
int 10h

;------------------------------
;MENU SCREEN
;-----------------------------
mainMenu:
	call openMenuScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	; mov ax, 13h
	; int 10h

	;boot mouse
	mov ax, 0h
	int 33h
	
openningScreen:
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h
	; nokey3:
	cmp bx, 01h
		je Clicked1
jmp openningScreen
Clicked1:
	mov ax,2
	int 33h
    ;Checks colors
	mov bh, 0h
	shr cx,1
	
    mov ah, 0Dh ; get color of a single pixel.
    int 10h
	cmp al, 0FAH
		je game
	cmp al, 03FH
		je rules
	cmp al, 0E8H
		je training_game
	cmp al, 049H
		je playersSettings
	cmp al, 052H
		je checkY
	cmp al, 0EBH
		je playersSettings
	cmp al, 0F9H
		je quitScreenF
	jmp openningScreen
	checkY:
		cmp dx, 30
			jb checkX2
		cmp dx,69
			jb game
		cmp cx, 171
			ja training_game
		jmp rules
		checkX2:
		cmp cx,260
			ja quitScreenF
		jmp playersSettings
	
jmp openningScreen

;------------------------------
;RULES SCREEN
;-----------------------------
rules:
	call openRulesScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	;boot mouse
	mov ax, 0h
	int 33h
rulesScreenLoop:
	; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h

	mov ah,1
	int 16h
	jz nokey4

	cmp al, 'q'
		je endGame

	nokey4:
	cmp bx, 01h
		je Clicked2
	jmp rulesScreenLoop
	Clicked2:
		mov ax,2
		int 33h
		;Checks colors
		mov bh, 0h
		shr cx,1
		
		mov ah, 0Dh ; get color of a single pixel.
		int 10h
		cmp al, 052H
			je checkY4
		cmp al, 0FFH
			je checkX6
		cmp al, 0A4H
			je checkX6
		jmp rulesScreenLoop
		checkY4:
		cmp dx, 40
			jb mainMenu
		checkX6:
		cmp cx, 78
			jb checkY4
		jmp rulesScreenLoop
			
jmp rulesScreenLoop


;-----------------------------
;SETTINGS SCREEN
;----------------------------

playersSettings:
	; call delay
	call OpenPHoverScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	call drawColorOptions1
	call drawColorOptions2

	mov [x_cordinate1], 130
	mov [y_cordinate1], 140

	mov [x_cordinate2], 255
	mov [y_cordinate2], 140

	call drawPlayer1
	call drawPlayer2

	;boot mouse
	mov ax, 0h
	int 33h
playersSettingsLoop:
	; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h

	mov ah,1
	int 16h
	jz nokey5
	
	cmp al, 'q'
		je endGame

	nokey5:
	cmp bx, 01h
		je Clicked5
	jmp playersSettingsLoop
	Clicked5:
		mov ax,2
		int 33h
		;Checks colors
		mov bh, 0h
		shr cx,1
		
		mov ah, 0Dh ; get color of a single pixel.
		int 10h

		cmp al, 00H
			je checkX
        cmp cx, 72
            jb sideMenu

		jmp playersSettingsLoop

        sideMenu:
			cmp dx, 118
				ja simulationOptionY1
			cmp dx, 72
				ja backGroundOptionY
            cmp dx, 50
                ja ballOptionY
            jmp playersSettingsLoop
        ballOptionY:
            cmp dx, 71
                jb ballSettings
		backGroundOptionY:
			cmp dx, 91
				jb backGroundSettings
		simulationOptionY1:
			cmp dx, 140
				jb simulationSettings
				; jb simulationGame
        jmp playersSettingsLoop
		
	
		checkX:
		cmp dx, 8 
			jb mainMenu
		cmp cx, 72
			jb sideMenu
		cmp dx, 81
			ja playersArrows
		jmp playersSettingsLoop

		playersArrows:
		cmp cx, 200
			ja player2Arrows
		jmp player1Arrows
		player2Arrows:
			cmp cx, 265
				ja rightArrow2
			leftArrow2:
				call changeColorLeft2
				call drawColorOptions2
				call drawPlayer2
				call delay2
				jmp playersSettingsLoop

			rightArrow2:
				call changeColorRight2
				call drawColorOptions2
				call drawPlayer2
				call delay2
				jmp playersSettingsLoop
		player1Arrows:
			cmp cx, 130
				ja rightArrow1
			leftArrow1:
				call changeColorLeft1
				call drawColorOptions1
				call drawPlayer1
				call delay2
				jmp playersSettingsLoop
			rightArrow1:
				call changeColorRight1
				call drawColorOptions1
				call drawPlayer1
				call delay2
				jmp playersSettingsLoop

jmp playersSettingsLoop



ballSettings:
	call drawBallExample

	mov [ballX], 185
	mov [ballY], 90
	call drawBall	
	

    mov ax, 0h
	int 33h
ballSettingsloop:
	; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h

	mov ah,1
	int 16h
    jz nokey6
    cmp al, 'q'
		je endGame

	nokey6:
	cmp bx, 01h
		je Clicked7
	jmp ballSettingsloop
	Clicked7:
		mov ax,2
		int 33h
		;Checks colors
		mov bh, 0h
		shr cx,1
		
		mov ah, 0Dh ; get color of a single pixel.
		int 10h

		cmp al, 00H
			je checkX4
        cmp cx, 72
            jb sideMenu2

		jmp ballSettingsloop


        sideMenu2:
		cmp dx, 118
			ja simulationOptionY2
		cmp dx, 72
			ja backGroundOptionY2
		cmp dx, 39
			ja playerOptionsY
		jmp ballSettingsloop
        playerOptionsY:
            cmp dx, 49
                jb playersSettings
		backGroundOptionY2:
			cmp dx, 91
				jb backGroundSettings
		simulationOptionY2:
			cmp dx, 140
				jb simulationSettings
        jmp ballSettingsloop

        checkX4:
		cmp dx, 8 
			jb mainMenu
		cmp cx, 72
			jb sideMenu2
        cmp cx, 74
            ja ballArrows
        jmp ballSettingsloop
		ballArrows:
			cmp cx, 185
				ja ballRightArrow
		ballLeftArrow:
			call changeBallColorLeft
			call drawBallExample
			call drawBall
			call delay2
			jmp ballSettingsloop
			; jmp endGame
		ballRightArrow:
			call changeBallColorRight
			call drawBallExample
			call drawBall
			call delay2
			jmp ballSettingsloop
	jmp ballSettingsloop


backGroundSettings:
	; call delay
	call OpenBOHoverScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

    call drawBackGroundRect
	call drawBackGroundExampleRect
    mov ax, 0h
	int 33h

backGroundSettingsLoop:
; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h


	mov ah,1
	int 16h
    jz nokey7
    cmp al, 'q'
		je endGame

	jmp backGroundSettingsLoop


	nokey7:
	cmp bx, 01h
		je Clicked8
	jmp backGroundSettingsLoop
	Clicked8:
		mov ax,2
		int 33h
		;Checks colors
		mov bh, 0h
		shr cx,1
		
		mov ah, 0Dh ; get color of a single pixel.
		int 10h

		cmp al, 00H
			je checkX5
		cmp cx, 72
			jb sideMenu3
	jmp backGroundSettingsLoop

	sideMenu3:
	cmp dx, 118
		ja simulationOptionY3
	cmp dx, 50
		ja ballOptionY2
	cmp dx, 39
		ja playersOption2
	jmp backGroundSettingsLoop
	ballOptionY2:
	cmp dx, 71
		jb ballSettings
	jmp backGroundSettingsLoop
	playersOption2:
		cmp dx, 49
			jb playersSettings
	simulationOptionY3:
		cmp dx, 140
			jb simulationSettings
	jmp backGroundSettingsLoop



		checkX5:
		cmp dx, 8 
			jb mainMenu
		cmp cx, 72
			jb sideMenu3
        cmp cx, 74
            ja BackGroundArrows
        jmp backGroundSettingsLoop
		BackGroundArrows:
			cmp cx, 185
				ja BackGroundRightArrow
		BackGroundLeftArrow:
			call changeBackGroundColorLeft
			call drawBackGroundRect
			call drawBackGroundExampleRect
			call delay2
			jmp backGroundSettingsLoop
			; jmp endGame
		BackGroundRightArrow:
			call changeBackGroundColorRight
			call drawBackGroundRect
			call drawBackGroundExampleRect
			call delay2
			jmp backGroundSettingsLoop
jmp backGroundSettingsLoop
	
simulationSettings:
	call OpenSHoverScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	mov [simulationTimeScore], 5
	mov [SimulationTimeScoreY], 11
	mov [SimulationTimeScoreX], 23

	mov ax, 0h
	int 33h
simulationSettingsLoop:
	call printSimulationTime
; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h

	mov ah,1
	int 16h
    jz nokey8
    cmp al, 'q'
		je endGame

	jmp simulationSettingsLoop


	nokey8:
	cmp bx, 01h
		je Clicked9
	jmp simulationSettingsLoop
	Clicked9:
		mov ax,2
		int 33h
		;Checks colors
		mov bh, 0h
		shr cx,1
		
		mov ah, 0Dh ; get color of a single pixel.
		int 10h

		cmp al, 00H
			je checkX7
		cmp cx, 72
			jb sideMenu4
		cmp al, 007H
			je simulationGame
		cmp al, 052H
			je simulationGame
	jmp simulationSettingsLoop

	sideMenu4:
	cmp dx, 72
		ja backGroundOptionY3
	cmp dx, 50
		ja ballOptionY3
	cmp dx, 39
		ja playersOption3
	jmp simulationSettingsLoop
	ballOptionY3:
	cmp dx, 71
		jb ballSettings
	jmp simulationSettingsLoop
	playersOption3:
		cmp dx, 49
			jb playersSettings
	backGroundOptionY3:
		cmp dx, 91
			jb backGroundSettings
	jmp simulationSettingsLoop



	checkX7:
		cmp dx, 8 
			jb mainMenu
		cmp cx, 72
			jb sideMenu4
        cmp cx, 74
            ja simulationArrows
        jmp simulationSettingsLoop
		simulationArrows:
			cmp cx, 185
				ja simulationRightArrow
		simulationLeftArrow:
			call changeSimulationTimeLeft
			call printSimulationTime
			call delay2
			jmp simulationSettingsLoop
		simulationRightArrow:
			call changeSimulationTimeRight
			call printSimulationTime
			call delay2
			jmp simulationSettingsLoop
jmp simulationSettingsLoop

simulationGame:
	; mov ax, 13h
	; int 10h

	call drawBackGround
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	mov [player1Score], 0
	mov [player2Score], 0
	mov al, [SimulationTimeScore]
	mov [timeCounter], al

	mov [player1ScoreX], 10
	mov [player1ScoreY], 3
	mov [player2ScoreY], 27
	mov [player2ScoreY], 3

	mov [x_cordinate1], 10
	mov [y_cordinate1], 90

	mov [x_cordinate2], 300
	mov [y_cordinate2], 90

	mov [ballLimitSpeed], 0
	; mov [ballSpeed], 03AFFH
	mov [ballSpeed], 013FFH

	mov [ballX], 150
	mov [ballY], 60

	
	call sound
	call calculateEndTime
simulation_mainloop:
	call printPlayer1Score
	call printPlayer2Score
	call printTimer
	call drawBall
    call drawPlayer1
	call checkendtime
	call training_mode
	call simulation_mode
 
	mov al,[timeCounter]
	mov [number],al 
	cmp [number], 0
		je simulation_resetTimer
	jmp simulation_non5
	simulation_resetTimer:
		call delay2
		jmp simulationSettings

	simulation_non5:
		mov ah,1
		int 16h
		jz simulation_nokey

	simulation_nokey:
		call getBallSideX
		call delay
		; mov [pic_off], offset  
		; call printBall
		call deleteBall
		; inc [ballY]
		mov al,0001b
		and al, [ballSideX]
		jz simulation_left
		
		simulation_right:
		add [ballX], 1
		jmp simulation_noKey2
		; jmp mainloop
		
		simulation_left:
		sub [ballX], 1
		jmp simulation_noKey2
		; jmp mainloop


	simulation_noKey2:
		call getBallSideY
		mov al,0001b
		and al, [ballSideY]
		jz simulation_down
		
		simulation_up:
		sub [ballY], 1
		jmp simulation_mainloop

		simulation_down:
		add [ballY], 1

	simulation_non3:
		jmp simulation_mainloop


loop simulation_mainloop






;------------------------------
;Multiplayer GAME LOOP
;-----------------------------
game:
	call drawBackGround
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile
	mov [player1Score], 0
	mov [player2Score], 0
	mov [timeCounter], 3

	mov [player1ScoreX], 10
	mov [player1ScoreY], 3
	mov [player2ScoreY], 27
	mov [player2ScoreY], 3

	mov [x_cordinate1], 10
	mov [y_cordinate1], 90

	mov [x_cordinate2], 300
	mov [y_cordinate2], 90

	mov [ballLimitSpeed], 0
	mov [ballSpeed], 013FFH

	mov [ballX], 150
	mov [ballY], 60
	
	call sound
	call calculateEndTime
mainLoop:
	call printPlayer1Score
	call printPlayer2Score
	call printTimer
	call drawBall
    call drawPlayer2
    call drawPlayer1
	call restartWhenScore
	call checkendtime

	cmp [ballLimitSpeed], 4
		je resetBallSpeed

	mov al,[timeCounter]
	mov [number],al 
	cmp [number], 0
		je resetTimer
	jmp non5
	resetTimer:
		sub [ballSpeed], 0600H
		mov [timeCounter], 3
		inc [ballLimitSpeed]
		jmp non5
	resetBallSpeed:
		mov [ballSpeed], 013FFH
		mov [ballLimitSpeed], 0
	non5:
		mov ah,1
		int 16h
		jz nokey

;Wait for input
	mov ah,0
	int 16h
	movement:
	cmp al,'s'
		je player1MoveDown
	cmp al,'w'
		je player1MoveUp
	cmp al,'q'
		je endGame
	cmp al, 'b'
		je mainMenu
	cmp al, 'p'
		je pauseLoop
	cmp al, 27
		je mainMenu
	cmp ah,048h
		je player2MoveUp
	cmp ah,050h
		je player2MoveDown
	jmp nokey

	pauseLoop:
		mov ah, 0
		int 16h
		jmp mainLoop



	outOfBounds:
		jmp mainLoop
	player1MoveDown:
		cmp [y_cordinate1], 165
			ja outOfBounds
		call removePlayer1
		add [y_cordinate1],10
		jmp mainloop
	player1MoveUp:
		cmp [y_cordinate1], 0
			je outOfBounds
		call removePlayer1
		sub [y_cordinate1],10
		jmp mainloop
	player2MoveDown:
		cmp [y_cordinate2], 165
			ja outOfBounds
		call removePlayer2
		add [y_cordinate2],10
		jmp mainloop
	player2MoveUp:
		cmp [y_cordinate2], 0
			je outOfBounds
		call removePlayer2
		sub [y_cordinate2],10
		jmp mainloop

	nokey:
		call getBallSideX
		call delay
		call deleteBall
		mov al,0001b
		and al, [ballSideX]
		jz left
		
		right:
		add [ballX], 1
		jmp noKey2
		
		left:
		sub [ballX], 1
		jmp noKey2

	noKey2:
		call getBallSideY
		mov al,0001b
		and al, [ballSideY]
		jz down
		
		up:
		sub [ballY], 1
		jmp mainloop

		down:
		add [ballY], 1

	non3:
		jmp mainloop
loop mainloop


;-------------------------------------------
;TRAINING GAME LOOP
;-------------------------------------------

training_game:
	; mov ax, 13h
	; int 10h
	
	; call OpenBackGround1
	call drawBackGround
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	mov [player1Score], 0
	mov [player2Score], 0
	mov [timeCounter], 3

	mov [player1ScoreX], 10
	mov [player1ScoreY], 3
	mov [player2ScoreX], 27
	mov [player2ScoreY], 3

	
	mov [x_cordinate1], 10
	mov [y_cordinate1], 90

	mov [x_cordinate2], 300
	mov [y_cordinate2], 90

	mov [ballLimitSpeed], 0
	mov [ballSpeed], 013FFH

	call sound
	call calculateEndTime
training_mainloop:
	; call printPlayer1Score
	; call printPlayer2Score
	call printTimer
	call drawBall
    ; call drawPlayer2
    call drawPlayer1
	call restartWhenScore
	call checkendtime
	; call isWin
	call training_mode
	
	cmp [ballLimitSpeed], 4
		je training_resetBallSpeed
 
	mov al,[timeCounter]
	mov [number],al 
	cmp [number], 0
		je training_resetTimer
	jmp training_non5
	training_resetTimer:
		sub [ballSpeed], 0600h
		mov [timeCounter], 3
		inc [ballLimitSpeed]
		jmp training_non5
	training_resetBallSpeed:
		; mov [ballSpeed], 03AFFH
		mov [ballSpeed], 013FFH
		mov [ballLimitSpeed], 0
	training_non5:
		mov ah,1
		int 16h
		jz training_nokey


;Wait for input
	mov ah,0
	int 16h
	training_checkBorder:
	cmp [y_cordinate1], 0
		je training_player1MoveDown
	cmp [y_cordinate1], 170
		je training_player1MoveUp
	cmp [y_cordinate2], 0
		je training_player2MoveDown
	cmp [y_cordinate2], 170
		je training_player2MoveUp
	training_movement:
	cmp al,'s'
		je training_player1MoveDown
	cmp al,'w'
		je training_player1MoveUp
	cmp al,'q'
		je mainMenu
	cmp al,'b'
		je mainMenu
	cmp al, 27
		je mainMenu
	; cmp ah,048h
	; je player2MoveUp
	; cmp ah,050h
	; je player2MoveDown
	jmp training_nokey
	training_player1MoveDown:
		call removePlayer1
		add [y_cordinate1],10
		jmp training_mainloop
	training_player1MoveUp:
		call removePlayer1
		sub [y_cordinate1],10
		jmp training_mainloop
	training_player2MoveDown:
		add [y_cordinate2],10
		jmp training_mainloop
	training_player2MoveUp:
		sub [y_cordinate2],10
		jmp training_mainloop


	training_nokey:
		call getBallSideX
		call delay
		; mov [pic_off], offset blackBall
		; call printBall
		call deleteBall
		; inc [ballY]
		mov al,0001b
		and al, [ballSideX]
		jz training_left
		
		training_right:
		add [ballX], 1
		jmp training_noKey2
		; jmp mainloop
		
		training_left:
		sub [ballX], 1
		jmp training_noKey2
		; jmp mainloop


	training_noKey2:
		call getBallSideY
		mov al,0001b
		and al, [ballSideY]
		jz training_down
		
		training_up:
		sub [ballY], 1
		jmp training_mainloop

		training_down:
		add [ballY], 1

	training_non3:
		jmp training_mainloop


loop training_mainloop


;------------------------------
;Player 1 Win Screen
;-----------------------------
end1:
	call openPlayer1WinScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile


	;boot mouse
	mov ax, 0h
	int 33h
player1Win:
	; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h
	cmp bx, 01h
		je Clicked3
	jmp player1Win
Clicked3:
	mov ax,2
	int 33h
	;Checks colors
	mov bh, 0h
	shr cx,1
	
	mov ah, 0Dh ; get color of a single pixel.
	int 10h

	cmp al, 007H
		je checkY5
	cmp al, 052H
		je checkY5
	; cmp dx, 137
	; 	ja mainMenuButton
	; cmp dx, 92
	; 	ja rematch
	jmp player1Win
	checkY5:
		cmp dx, 137
			ja mainMenu
		cmp dx, 92
			ja game

jmp player1Win

;------------------------------
;Player 2 Win Screen
;-----------------------------
end2:

	call openPlayer2WinScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile

	;boot mouse
	mov ax, 0h
	int 33h
player2Win:
	; The mouse is visible
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h
	cmp bx, 01h
		je Clicked4
	jmp player1Win
	Clicked4:
		mov ax,2
		int 33h
		;Checks colors
		mov bh, 0h
		shr cx,1
		
		mov ah, 0Dh ; get color of a single pixel.
		int 10h

	cmp al, 007H
		je checkY6
	cmp al, 052H
		je checkY6

	jmp player1Win
	checkY6:
		cmp dx, 137
			ja mainMenu
		cmp dx, 92
			ja game
jmp player2Win

quitScreenF:
	call OpenExitScreen
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile
	;boot mouse
	mov ax, 0h
	int 33h
	
quitScreenLoop:
	; The mouse is visible
	call delay
	mov ax,1
	int 33h 
	mov ax, 3h
	int 33h
	cmp bx, 01h
		je Clicked6
jmp quitScreenLoop
Clicked6:
	mov ax,2
	int 33h
    ;Checks colors
	mov bh, 0h
	shr cx,1

    mov ah, 0Dh ; get color of a single pixel.
    int 10h
	cmp al, 007H
		je checkY3
	cmp al, 00H
		je CheckY3
jmp quitScreenLoop

	checkY3:
	cmp dx, 100
		ja checkX3
	jmp quitScreenLoop
	checkX3:
		cmp cx, 200
			ja endGame
		jmp mainMenu



endGame:
	mov ax, 2h
	int 10h
exit:
	mov ax, 4c00h
	int 21h
	END start