.align 2
.thumb

SHOWCOINS:
push {lr}
push {r0-r7}
ldr r5, SCRIPT_VAR_8000
ldrh r5, [r5]
ldr r4, SCRIPT_VAR_8001
ldrh r4, [r4]
ldr r0, UNKNOWN_DATA_0
ldr r1, SHOWCOINS_UNK_1
bl CALL_R1
lsl r0, r0, #0x10
lsr r0, r0, #0x10
cmp r0, #0x1
beq SHOWCOINS_RETURN
mov r1, r5
mov r2, r4
bl SECONDARY
b SHOWCOINS_RETURN

SHOWCOINS_RETURN:
pop {r0-r7}
pop {pc}



SECONDARY:
push {lr}
push {r0-r7}
add sp, #-0x20
mov r6, r0
mov r4, r1
mov r3, r2
lsl r4, r4, #0x18
lsl r3, r3, #0x18
mov r0, #0x80
lsl r0, r0, #0x11
add r4, r4, r0
lsr r4, r4, #0x18
add r3, r3, r0
lsr r3, r3, #0x18
ldr r0, SCRIPT_VAR_8002
ldrh r0, [r0]
str r0, [sp]
ldr r0, SCRIPT_VAR_8003
ldrh r0, [r0]
str r0, [sp, #0x4]
mov r0, #0xF
str r0, [sp, #0x8]
mov r0, #0x20
str r0, [sp, #0xC]
add r0, sp, #0x10
mov r1, #0x0
mov r2, r4
ldr r4, UNKNOWN_FUNCTION_0
bl CALL_R4
ldr r0, [sp, #0x10]
ldr r1, [sp, #0x14]
str r0, [sp, #0x18]
str r1, [sp, #0x1C]
ldr r4, UNKNOWN_DATA_1
add r0, sp, #0x18
ldr r5, UNKNOWN_FUNCTION_1
bl CALL_R5
strb r0, [r4]
ldrb r0, [r4]
mov r1, #0x0
ldr r2, UNKNOWN_FUNCTION_2
bl CALL_R2
ldrb r0, [r4]
ldr r5, UNKNOWN_FUNCTION_3
bl CALL_R5
ldrb r0, [r4]
ldr r5, UNKNOWN_DATA_2
mov r1, r5
mov r2, #0xD0
ldr r3, UNKNOWN_FUNCTION_4
bl CALL_R3
ldrb r0, [r4]
mov r1, #0x0
mov r2, r5
mov r3, #0xD
ldr r6, UNKNOWN_FUNCTION_5
bl CALL_R6
ldrb r0, [r4]
ldr r2, SCRIPT_BANK_0
ldr r2, [r2]
mov r3, #0x0
str r3, [sp]
mov r1, #0xFF
str r1, [sp, #0x4]
str r3, [sp, #0x8]
mov r1, #0x2
ldr r7, UNKNOWN_FUNCTION_6
bl CALL_R7
mov r0, r6
bl SECONDARY_LOAD_BODY
add sp, #0x20
pop {r0-r7}
pop {pc}



SECONDARY_LOAD_BODY:
push {lr}
push {r0-r7}
add sp, #-0xC
mov r1, r0
ldr r0, BUFFER_RAM_OFFSET
mov r2, #0x1
mov r3, #0x4
ldr r6, int_to_str
bl CALL_R6
ldr r4, STRING_RAM_OFFSET
ldr r1, SCRIPT_BANK_1
ldr r1, [r1]
mov r0, r4
ldr r6, BODY_STRING_LOADER
bl CALL_R6
mov r0, #0x0
mov r1, r4
mov r2, #0x0
ldr r6, UNKNOWN_FUNCTION_8
bl CALL_R6
ldr r1, UNKNOWN_DATA_1
ldrb r1, [r1]
mov r3, #0x40
sub r3, r3, r0
lsl r3, r3, #0x18
lsr r3, r3, #0x18
mov r0, #0xC
str r0, [sp]
mov r0, #0x0
str r0, [sp, #0x4]
str r0, [sp, #0x8]
mov r0, r1
mov r1, #0x0
mov r2, r4
ldr r6, UNKNOWN_FUNCTION_6
bl CALL_R6
add sp, #0xC
pop {r0-r7}
pop {pc}

CALL_R1:
bx r1
bx lr

CALL_R2:
bx r2
bx lr

CALL_R3:
bx r3
bx lr

CALL_R4:
bx r4
bx lr

CALL_R5:
bx r5
bx lr

CALL_R6:
bx r6
bx lr

CALL_R7:
bx r7
bx lr

.align 2
SCRIPT_BANK_0:
.word 0x03000E40 @

SCRIPT_BANK_1:
.word 0x03000E44 @

SCRIPT_VAR_8000:
.word 0x020370B8

SCRIPT_VAR_8001:
.word 0x020370BA

SCRIPT_VAR_8002:
.word 0x020370BC

SCRIPT_VAR_8003:
.word 0x020370BE

UNKNOWN_DATA_0:
.word 0x080E29C4+1 @?

UNKNOWN_DATA_1:
.word 0x02022FEC @

UNKNOWN_DATA_2:
.word 0x0000021D @?

SHOWCOINS_UNK_1:
.word 0x0813C264+1 @

UNKNOWN_FUNCTION_0:
.word 0x08198A50+1 @Perhaps or 0801FF18 or 0815E34C or 0802DA9C

UNKNOWN_FUNCTION_1:
.word 0x08003380+1 @

UNKNOWN_FUNCTION_2:
.word 0x08003C48+1 @

UNKNOWN_FUNCTION_3:
.word 0x0800378C+1 @

UNKNOWN_FUNCTION_4:
.word 0x0809877C+1 @

UNKNOWN_FUNCTION_5:
.word 0x08197E80+1 @

UNKNOWN_FUNCTION_6:
.word 0x080045D0+1 @

int_to_str:
.word 0x08008CC0+1 @

UNKNOWN_FUNCTION_8:
.word 0x08018798+1 @Perhaps

BUFFER_RAM_OFFSET:
.word 0x02021CC4 @

STRING_RAM_OFFSET:
.word 0x02021D18 @

BODY_STRING_LOADER:
.word 0x08008EE0+1 @
