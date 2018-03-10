SH2_PWMTable:
ptr_pwm01:	PWMSampleEntry	PWM_00, $00000000, $00000800
ptr_pwm02:	PWMSampleEntry	PWM_01, $00000000, $00000800
ptr_pwm03:	PWMSampleEntry	PWM_02, $00000000, $00000800
ptr_pwm04:	PWMSampleEntry	PWM_03, $00000000, $00000800
ptr_pwm05:	PWMSampleEntry	PWM_04, $00000000, $00000800
ptr_pwm06:	PWMSampleEntry	PWM_04, $00000000, $00000659
ptr_pwm07:	PWMSampleEntry	PWM_04, $00000000, $000004C2
ptr_pwm08:	PWMSampleEntry	PWM_07, $00000000, $00000800
ptr_pwm09:	PWMSampleEntry	PWM_08, $00000000, $00000800
ptr_pwm0A:	PWMSampleEntry	PWM_09, $00000000, $00000800
ptr_pwm0B:	PWMSampleEntry	PWM_0A, $00000000, $00000800
ptr_pwm0C:	PWMSampleEntry	PWM_0B, $00000000, $00000800
ptr_pwm0D:	PWMSampleEntry	PWM_0C, $00000000, $00000800
ptr_pwm0E:	PWMSampleEntry	PWM_0D, $00000000, $00000800
ptr_pwm0F:	PWMSampleEntry	PWM_0E, $00000000, $00000800
ptr_pwm10:	PWMSampleEntry	PWM_0F, $00000000, $00000800
ptr_pwm11:	PWMSampleEntry	PWM_0F, $00000000, $000005FE
ptr_pwm12:	PWMSampleEntry	PWM_11, $00000000, $00000800
ptr_pwm13:	PWMSampleEntry	PWM_11, $00000000, $000005FE
ptr_pwm14:	PWMSampleEntry	PWM_13, $00000000, $00000800
ptr_pwm15:	PWMSampleEntry	PWM_13, $00000000, $000005FE
ptr_pwm16:	PWMSampleEntry	PWM_15, $00000000, $00000800

PWM_00:		binclude	"Sonic-2-Clone-Driver-v2/PWM/ElectricKick.bin"
PWM_00_End

PWM_01:		binclude	"Sonic-2-Clone-Driver-v2/PWM/ElectricSnare.bin"
PWM_01_End

PWM_02:		binclude	"Sonic-2-Clone-Driver-v2/PWM/SplashCymbal.bin"
PWM_02_End

PWM_03:		binclude	"Sonic-2-Clone-Driver-v2/PWM/RideBell.bin"
PWM_03_End

PWM_04:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Tom.bin"
PWM_04_End

PWM_07:		binclude	"Sonic-2-Clone-Driver-v2/PWM/ElectricHiHat.bin"
PWM_07_End

PWM_08:		binclude	"Sonic-2-Clone-Driver-v2/PWM/CrashCymbal.bin"
PWM_08_End

PWM_09:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Clap.bin"
PWM_09_End

PWM_0A:		binclude	"Sonic-2-Clone-Driver-v2/PWM/AcousticKick.bin"
PWM_0A_End

PWM_0B:		binclude	"Sonic-2-Clone-Driver-v2/PWM/AcousticSnare.bin"
PWM_0B_End

PWM_0C:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Bell.bin"
PWM_0C_End

PWM_0D:		binclude	"Sonic-2-Clone-Driver-v2/PWM/FingersSnapping.bin"
PWM_0D_End

PWM_0E:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Cowbell.bin"
PWM_0E_End

PWM_0F:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Click.bin"
PWM_0F_End

PWM_11:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Bongo.bin"
PWM_11_End

PWM_13:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Timpani.bin"
PWM_13_End

PWM_15:		binclude	"Sonic-2-Clone-Driver-v2/PWM/Silence.bin"
PWM_15_End
		even
