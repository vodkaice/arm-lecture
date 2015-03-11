	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	push {r3,r4,r5,r6,lr}
	mov r3,#-1	@r3=previous
	mov r4,#1	@r4=result
	mov r5,#0	@r5=i
	mov r6,#0	@r6=sum
loop:
	add r6,r3,r4	@sum = result + previous
	mov r3,r4	@previous = result
	mov r4,r6	@result = sum	
	add r5,#1	@i++
	cmp r0,r5	@r0-r5 (x-i)
	bge loop	@if x>=i jump to loop

	mov r0,r6	@return result
	pop {r3,r4,r5,r6,pc}
	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
