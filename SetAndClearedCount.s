	AREA	SetAndClearedCount, CODE, READONLY
	IMPORT	main
	EXPORT	start

start
	  	; r0 stores 9-bit number
		; r1 stores set bit count (ie 1s)
		; r2 stores cleared bit count (ie 0s)

		LDR r0, =2_001000111 ; set sample number for testing
		LDR r1, =0 ; start set bit count at 0
		LDR r2, =9 ; start set bit count at 9

		MOVS r0, r0, LSR #1 ; r0=r0>>1, first shift 
		ADC r1, r1, #0  ; r1=r1+ Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, second shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, third shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, fourth shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, fifth shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, sixth shift
	  	ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, seventh shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, eighth shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		MOVS r0, r0, LSR #1 ; r0=r0>>1, ninth shift
		ADC r1, r1, #0	; r1 = r1 + Carry-flag
		
		SUB r2, r2, r1  ; r2=r2-r1

stop	B	stop

	END	
