; ---------------------------------------------------------------------------
; SFX metadata (pointers, priorities, flags)

; Priority of sound. New music or SFX must have a priority higher than or equal
; to what is stored in v_sndprio or it won't play. If bit 7 of new priority is
; set ($80 and up), the new music or SFX will not set its priority -- meaning
; any music or SFX can override it (as long as it can override whatever was
; playing before). Usually, SFX will only override SFX, special SFX ($D0-$DF)
; will only override special SFX and music will only override music.
; Of course, this isn't the case anymore, as priorities no longer apply to
; special SFX or music.
; ---------------------------------------------------------------------------
; SoundTypes: SoundPriorities:
SoundIndex:
ptr_sndA0:	SMPS_SFX_METADATA	SoundA0, $80, 0
ptr_sndA1:	SMPS_SFX_METADATA	SoundA1, $70, 0
ptr_sndA2:	SMPS_SFX_METADATA	SoundA2, $70, 0
ptr_sndA3:	SMPS_SFX_METADATA	SoundA3, $70, 0
ptr_sndA4:	SMPS_SFX_METADATA	SoundA4, $70, 0
ptr_sndA5:	SMPS_SFX_METADATA	SoundA5, $70, 0
ptr_sndA6:	SMPS_SFX_METADATA	SoundA6, $70, 0
ptr_sndA7:	SMPS_SFX_METADATA	SoundA7, $70, 0
ptr_sndA8:	SMPS_SFX_METADATA	SoundA8, $70, 0
ptr_sndA9:	SMPS_SFX_METADATA	SoundA9, $70, 0
ptr_sndAA:	SMPS_SFX_METADATA	SoundAA, $68, 0
ptr_sndAB:	SMPS_SFX_METADATA	SoundAB, $70, 0
ptr_sndAC:	SMPS_SFX_METADATA	SoundAC, $70, 0
ptr_sndAD:	SMPS_SFX_METADATA	SoundAD, $70, 0
ptr_sndAE:	SMPS_SFX_METADATA	SoundAE, $60, 0
ptr_sndAF:	SMPS_SFX_METADATA	SoundAF, $70, 0
ptr_sndB0:	SMPS_SFX_METADATA	SoundB0, $70, 0
ptr_sndB1:	SMPS_SFX_METADATA	SoundB1, $60, 0
ptr_sndB2:	SMPS_SFX_METADATA	SoundB2, $70, 0
ptr_sndB3:	SMPS_SFX_METADATA	SoundB3, $60, 0
ptr_sndB4:	SMPS_SFX_METADATA	SoundB4, $70, 0
ptr_sndB5:	SMPS_SFX_METADATA	SoundB5, $70, 0
ptr_sndB6:	SMPS_SFX_METADATA	SoundB6, $70, 0
ptr_sndB7:	SMPS_SFX_METADATA	SoundB7, $70, 0
ptr_sndB8:	SMPS_SFX_METADATA	SoundB8, $70, 0
ptr_sndB9:	SMPS_SFX_METADATA	SoundB9, $70, 0
ptr_sndBA:	SMPS_SFX_METADATA	SoundBA, $70, 0
ptr_sndBB:	SMPS_SFX_METADATA	SoundBB, $70, 0
ptr_sndBC:	SMPS_SFX_METADATA	SoundBC, $70, 0
ptr_sndBD:	SMPS_SFX_METADATA	SoundBD, $70, 0
ptr_sndBE:	SMPS_SFX_METADATA	SoundBE, $70, 0
ptr_sndBF:	SMPS_SFX_METADATA	SoundBF, $7F, 0
ptr_sndC0:	SMPS_SFX_METADATA	SoundC0, $6F, 0
ptr_sndC1:	SMPS_SFX_METADATA	SoundC1, $70, 0
ptr_sndC2:	SMPS_SFX_METADATA	SoundC2, $70, 0
ptr_sndC3:	SMPS_SFX_METADATA	SoundC3, $70, 0
ptr_sndC4:	SMPS_SFX_METADATA	SoundC4, $70, 0
ptr_sndC5:	SMPS_SFX_METADATA	SoundC5, $70, 0
ptr_sndC6:	SMPS_SFX_METADATA	SoundC6, $70, 0
ptr_sndC7:	SMPS_SFX_METADATA	SoundC7, $70, 0
ptr_sndC8:	SMPS_SFX_METADATA	SoundC8, $70, 0
ptr_sndC9:	SMPS_SFX_METADATA	SoundC9, $70, 0
ptr_sndCA:	SMPS_SFX_METADATA	SoundCA, $70, 0
ptr_sndCB:	SMPS_SFX_METADATA	SoundCB, $70, 0
ptr_sndCC:	SMPS_SFX_METADATA	SoundCC, $70, 0
ptr_sndCD:	SMPS_SFX_METADATA	SoundCD, $6F, 0
ptr_sndCE:	SMPS_SFX_METADATA	SoundCE, $70, 0
ptr_sndCF:	SMPS_SFX_METADATA	SoundCF, $70, 0
ptr_sndD0:	SMPS_SFX_METADATA	SoundD0, $70, 0
ptr_sndD1:	SMPS_SFX_METADATA	SoundD1, $60, 0
ptr_sndD2:	SMPS_SFX_METADATA	SoundD2, $60, 0
ptr_sndD3:	SMPS_SFX_METADATA	SoundD3, $70, 0
ptr_sndD4:	SMPS_SFX_METADATA	SoundD4, $70, 0
ptr_sndD5:	SMPS_SFX_METADATA	SoundD5, $70, 0
ptr_sndD6:	SMPS_SFX_METADATA	SoundD6, $70, 0
ptr_sndD7:	SMPS_SFX_METADATA	SoundD7, $70, 0
ptr_sndD8:	SMPS_SFX_METADATA	SoundD8, $70, 0
ptr_sndD9:	SMPS_SFX_METADATA	SoundD9, $70, 0
ptr_sndDA:	SMPS_SFX_METADATA	SoundDA, $60, SMPS_SFX_METADATA_GLOOP
ptr_sndDB:	SMPS_SFX_METADATA	SoundDB, $62, 0
ptr_sndDC:	SMPS_SFX_METADATA	SoundDC, $60, 0
ptr_sndDD:	SMPS_SFX_METADATA	SoundDD, $60, 0
ptr_sndDE:	SMPS_SFX_METADATA	SoundDE, $60, 0
ptr_sndDF:	SMPS_SFX_METADATA	SoundDF, $70, 0
ptr_sndE0:	SMPS_SFX_METADATA	SoundE0, $70, SMPS_SFX_METADATA_SPIN_DASH_REV
ptr_sndE1:	SMPS_SFX_METADATA	SoundE1, $70, 0
ptr_sndE2:	SMPS_SFX_METADATA	SoundE2, $70, 0
ptr_sndE3:	SMPS_SFX_METADATA	SoundE3, $70, 0
ptr_sndE4:	SMPS_SFX_METADATA	SoundE4, $60, 0
ptr_sndE5:	SMPS_SFX_METADATA	SoundE5, $60, 0
ptr_sndE6:	SMPS_SFX_METADATA	SoundE6, $60, 0
ptr_sndE7:	SMPS_SFX_METADATA	SoundE7, $6F, 0
ptr_sndE8:	SMPS_SFX_METADATA	SoundE8, $70, 0
ptr_sndE9:	SMPS_SFX_METADATA	SoundE9, $70, 0
ptr_sndEA:	SMPS_SFX_METADATA	SoundEA, $6F, 0
ptr_sndEB:	SMPS_SFX_METADATA	SoundEB, $6F, 0
ptr_sndEC:	SMPS_SFX_METADATA	SoundEC, $70, 0
ptr_sndED:	SMPS_SFX_METADATA	SoundED, $71, 0
ptr_sndEE:	SMPS_SFX_METADATA	SoundEE, $70, 0
ptr_sndEF:	SMPS_SFX_METADATA	SoundEF, $70, 0
ptr_sndF0:	SMPS_SFX_METADATA	SoundF0, $6F, 0
ptr_sndend

; ---------------------------------------------------------------------------
; SFX data
; ---------------------------------------------------------------------------
SoundA0:	include	"sound/sfx/A0 - Jump.asm"
		even
SoundA1:	include	"sound/sfx/A1 - Checkpoint.asm"
		even
SoundA2:	include	"sound/sfx/A2 - Spike Switch.asm"
		even
SoundA3:	include	"sound/sfx/A3 - Hurt.asm"
		even
SoundA4:	include	"sound/sfx/A4 - Skidding.asm"
		even
SoundA5:	include	"sound/sfx/A5 - Block Push.asm"
		even
SoundA6:	include	"sound/sfx/A6 - Hurt by Spikes.asm"
		even
SoundA7:	include	"sound/sfx/A7 - Sparkle.asm"
		even
SoundA8:	include	"sound/sfx/A8 - Beep.asm"
		even
SoundA9:	include	"sound/sfx/A9 - Special Stage Item (Unused).asm"
		even
SoundAA:	include	"sound/sfx/AA - Splash.asm"
		even
SoundAB:	include	"sound/sfx/AB - Swish.asm"
		even
SoundAC:	include	"sound/sfx/AC - Boss Hit.asm"
		even
SoundAD:	include	"sound/sfx/AD - Inhaling Bubble.asm"
		even
SoundAE:	include	"sound/sfx/AE - Lava Ball.asm"
		even
SoundAF:	include	"sound/sfx/AF - Shield.asm"
		even
SoundB0:	include	"sound/sfx/B0 - Laser Beam.asm"
		even
SoundB1:	include	"sound/sfx/B1 - Electricity (Unused).asm"
		even
SoundB2:	include	"sound/sfx/B2 - Drown.asm"
		even
SoundB3:	include	"sound/sfx/B3 - Fire Burn.asm"
		even
SoundB4:	include	"sound/sfx/B4 - Bumper.asm"
		even
SoundB5:	include	"sound/sfx/B5 - Ring.asm"
		even
SoundB6:	include	"sound/sfx/B6 - Spikes Move.asm"
		even
SoundB7:	include	"sound/sfx/B7 - Rumbling.asm"
		even
SoundB8:	include	"sound/sfx/B8 - Unknown (Unused).asm"
		even
SoundB9:	include	"sound/sfx/B9 - Smash.asm"
		even
SoundBA:	include	"sound/sfx/BA - Special Stage Glass (Unused).asm"
		even
SoundBB:	include	"sound/sfx/BB - Door Slam.asm"
		even
SoundBC:	include	"sound/sfx/BC - Spin Dash Release.asm"
		even
SoundBD:	include	"sound/sfx/BD - Hammer.asm"
		even
SoundBE:	include	"sound/sfx/BE - Roll.asm"
		even
SoundBF:	include	"sound/sfx/BF - Continue Jingle.asm"
		even
SoundC0:	include	"sound/sfx/C0 - Casino Bonus.asm"
		even
SoundC1:	include	"sound/sfx/C1 - Explosion.asm"
		even
SoundC2:	include	"sound/sfx/C2 - Water Warning.asm"
		even
SoundC3:	include	"sound/sfx/C3 - Enter Giant Ring (Unused).asm"
		even
SoundC4:	include	"sound/sfx/C4 - Boss Explosion.asm"
		even
SoundC5:	include	"sound/sfx/C5 - Tally End.asm"
		even
SoundC6:	include	"sound/sfx/C6 - Ring Spill.asm"
		even
SoundC7:	include	"sound/sfx/C7 - Chain Rise (Unused).asm"
		even
SoundC8:	include	"sound/sfx/C8 - Flamethrower.asm"
		even
SoundC9:	include	"sound/sfx/C9 - Hidden Bonus (Unused).asm"
		even
SoundCA:	include	"sound/sfx/CA - Special Stage Entry.asm"
		even
SoundCB:	include	"sound/sfx/CB - Slow Smash.asm"
		even
SoundCC:	include	"sound/sfx/CC - Spring.asm"
		even
SoundCD:	include	"sound/sfx/CD - Switch.asm"
		even
SoundCE:	include	"sound/sfx/CE - Ring Left Speaker.asm"
		even
SoundCF:	include	"sound/sfx/CF - Signpost.asm"
		even
SoundD0:	include	"sound/sfx/D0 - CNZ Boss Zap.asm"
		even
SoundD1:	include	"sound/sfx/D1 - Unknown (Unused).asm"
		even
SoundD2:	include	"sound/sfx/D2 - Unknown (Unused).asm"
		even
SoundD3:	include	"sound/sfx/D3 - Signpost 2P.asm"
		even
SoundD4:	include	"sound/sfx/D4 - OOZ Lid Pop.asm"
		even
SoundD5:	include	"sound/sfx/D5 - Sliding Spike.asm"
		even
SoundD6:	include	"sound/sfx/D6 - CNZ Elevator.asm"
		even
SoundD7:	include	"sound/sfx/D7 - Platform Knock.asm"
		even
SoundD8:	include	"sound/sfx/D8 - Bonus Bumper.asm"
		even
SoundD9:	include	"sound/sfx/D9 - Large Bumper.asm"
		even
SoundDA:	include	"sound/sfx/DA - Gloop.asm"
		even
SoundDB:	include	"sound/sfx/DB - Pre-Arrow Firing.asm"
		even
SoundDC:	include	"sound/sfx/DC - Fire.asm"
		even
SoundDD:	include	"sound/sfx/DD - Arrow Stick.asm"
		even
SoundDE:	include	"sound/sfx/DE - Helicopter.asm"
		even
SoundDF:	include	"sound/sfx/DF - Super Transform.asm"
		even
SoundE0:	include	"sound/sfx/E0 - Spin Dash Rev.asm"
		even
SoundE1:	include	"sound/sfx/E1 - Rumbling 2.asm"
		even
SoundE2:	include	"sound/sfx/E2 - CNZ Launch.asm"
		even
SoundE3:	include	"sound/sfx/E3 - Flipper.asm"
		even
SoundE4:	include	"sound/sfx/E4 - HTZ Lift Click.asm"
		even
SoundE5:	include	"sound/sfx/E5 - Leaves.asm"
		even
SoundE6:	include	"sound/sfx/E6 - Mega Mack Drop.asm"
		even
SoundE7:	include	"sound/sfx/E7 - Drawbridge Move.asm"
		even
SoundE8:	include	"sound/sfx/E8 - Quick Door Slam.asm"
		even
SoundE9:	include	"sound/sfx/E9 - Drawbridge Down.asm"
		even
SoundEA:	include	"sound/sfx/EA - Laser Burst.asm"
		even
SoundEB:	include	"sound/sfx/EB - Scatter.asm"
		even
SoundEC:	include	"sound/sfx/EC - Teleport.asm"
		even
SoundED:	include	"sound/sfx/ED - Error.asm"
		even
SoundEE:	include	"sound/sfx/EE - Mecha Sonic Buzz.asm"
		even
SoundEF:	include	"sound/sfx/EF - Large Laser.asm"
		even
SoundF0:	include	"sound/sfx/F0 - Oil Slide.asm"
		even
