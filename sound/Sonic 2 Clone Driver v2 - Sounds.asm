; ---------------------------------------------------------------------------
; Sound effect pointers
; ---------------------------------------------------------------------------
SoundIndex:
ptr_sndA0:	dc.l SoundA0
ptr_sndA1:	dc.l SoundA1
ptr_sndA2:	dc.l SoundA2
ptr_sndA3:	dc.l SoundA3
ptr_sndA4:	dc.l SoundA4
ptr_sndA5:	dc.l SoundA5
ptr_sndA6:	dc.l SoundA6
ptr_sndA7:	dc.l SoundA7
ptr_sndA8:	dc.l SoundA8
ptr_sndA9:	dc.l SoundA9
ptr_sndAA:	dc.l SoundAA
ptr_sndAB:	dc.l SoundAB
ptr_sndAC:	dc.l SoundAC
ptr_sndAD:	dc.l SoundAD
ptr_sndAE:	dc.l SoundAE
ptr_sndAF:	dc.l SoundAF
ptr_sndB0:	dc.l SoundB0
ptr_sndB1:	dc.l SoundB1
ptr_sndB2:	dc.l SoundB2
ptr_sndB3:	dc.l SoundB3
ptr_sndB4:	dc.l SoundB4
ptr_sndB5:	dc.l SoundB5
ptr_sndB6:	dc.l SoundB6
ptr_sndB7:	dc.l SoundB7
ptr_sndB8:	dc.l SoundB8
ptr_sndB9:	dc.l SoundB9
ptr_sndBA:	dc.l SoundBA
ptr_sndBB:	dc.l SoundBB
ptr_sndBC:	dc.l SoundBC
ptr_sndBD:	dc.l SoundBD
ptr_sndBE:	dc.l SoundBE
ptr_sndBF:	dc.l SoundBF
ptr_sndC0:	dc.l SoundC0
ptr_sndC1:	dc.l SoundC1
ptr_sndC2:	dc.l SoundC2
ptr_sndC3:	dc.l SoundC3
ptr_sndC4:	dc.l SoundC4
ptr_sndC5:	dc.l SoundC5
ptr_sndC6:	dc.l SoundC6
ptr_sndC7:	dc.l SoundC7
ptr_sndC8:	dc.l SoundC8
ptr_sndC9:	dc.l SoundC9
ptr_sndCA:	dc.l SoundCA
ptr_sndCB:	dc.l SoundCB
ptr_sndCC:	dc.l SoundCC
ptr_sndCD:	dc.l SoundCD
ptr_sndCE:	dc.l SoundCE
ptr_sndCF:	dc.l SoundCF
ptr_sndD0:	dc.l SoundD0
ptr_sndD1:	dc.l SoundD1
ptr_sndD2:	dc.l SoundD2
ptr_sndD3:	dc.l SoundD3
ptr_sndD4:	dc.l SoundD4
ptr_sndD5:	dc.l SoundD5
ptr_sndD6:	dc.l SoundD6
ptr_sndD7:	dc.l SoundD7
ptr_sndD8:	dc.l SoundD8
ptr_sndD9:	dc.l SoundD9
ptr_sndDA:	dc.l SoundDA
ptr_sndDB:	dc.l SoundDB
ptr_sndDC:	dc.l SoundDC
ptr_sndDD:	dc.l SoundDD
ptr_sndDE:	dc.l SoundDE
ptr_sndDF:	dc.l SoundDF
ptr_sndE0:	dc.l SoundE0
ptr_sndE1:	dc.l SoundE1
ptr_sndE2:	dc.l SoundE2
ptr_sndE3:	dc.l SoundE3
ptr_sndE4:	dc.l SoundE4
ptr_sndE5:	dc.l SoundE5
ptr_sndE6:	dc.l SoundE6
ptr_sndE7:	dc.l SoundE7
ptr_sndE8:	dc.l SoundE8
ptr_sndE9:	dc.l SoundE9
ptr_sndEA:	dc.l SoundEA
ptr_sndEB:	dc.l SoundEB
ptr_sndEC:	dc.l SoundEC
ptr_sndED:	dc.l SoundED
ptr_sndEE:	dc.l SoundEE
ptr_sndEF:	dc.l SoundEF
ptr_sndF0:	dc.l SoundF0
ptr_sndend

; ---------------------------------------------------------------------------
; Sound effect 'include's
; ---------------------------------------------------------------------------
SoundA0:	include	"sound/SFX/A0 - Jump.asm"
		even
SoundA1:	include	"sound/SFX/A1 - Checkpoint.asm"
		even
SoundA2:	include	"sound/SFX/A2 - Spike Switch.asm"
		even
SoundA3:	include	"sound/SFX/A3 - Hurt.asm"
		even
SoundA4:	include	"sound/SFX/A4 - Skidding.asm"
		even
SoundA5:	include	"sound/SFX/A5 - Block Push.asm"
		even
SoundA6:	include	"sound/SFX/A6 - Hurt by Spikes.asm"
		even
SoundA7:	include	"sound/SFX/A7 - Sparkle.asm"
		even
SoundA8:	include	"sound/SFX/A8 - Beep.asm"
		even
SoundA9:	include	"sound/SFX/A9 - Special Stage Item (Unused).asm"
		even
SoundAA:	include	"sound/SFX/AA - Splash.asm"
		even
SoundAB:	include	"sound/SFX/AB - Swish.asm"
		even
SoundAC:	include	"sound/SFX/AC - Boss Hit.asm"
		even
SoundAD:	include	"sound/SFX/AD - Inhaling Bubble.asm"
		even
SoundAE:	include	"sound/SFX/AE - Lava Ball.asm"
		even
SoundAF:	include	"sound/SFX/AF - Shield.asm"
		even
SoundB0:	include	"sound/SFX/B0 - Laser Beam.asm"
		even
SoundB1:	include	"sound/SFX/B1 - Electricity (Unused).asm"
		even
SoundB2:	include	"sound/SFX/B2 - Drown.asm"
		even
SoundB3:	include	"sound/SFX/B3 - Fire Burn.asm"
		even
SoundB4:	include	"sound/SFX/B4 - Bumper.asm"
		even
SoundB5:	include	"sound/SFX/B5 - Ring.asm"
		even
SoundB6:	include	"sound/SFX/B6 - Spikes Move.asm"
		even
SoundB7:	include	"sound/SFX/B7 - Rumbling.asm"
		even
SoundB8:	include	"sound/SFX/B8.asm"
		even
SoundB9:	include	"sound/SFX/B9 - Smash.asm"
		even
SoundBA:	include	"sound/SFX/BA - Special Stage Glass (Unused).asm"
		even
SoundBB:	include	"sound/SFX/BB - Door Slam.asm"
		even
SoundBC:	include	"sound/SFX/BC - Spin Dash Release.asm"
		even
SoundBD:	include	"sound/SFX/BD - Hammer.asm"
		even
SoundBE:	include	"sound/SFX/BE - Roll.asm"
		even
SoundBF:	include	"sound/SFX/BF - Continue Jingle.asm"
		even
SoundC0:	include	"sound/SFX/C0 - Casino Bonus.asm"
		even
SoundC1:	include	"sound/SFX/C1 - Explosion.asm"
		even
SoundC2:	include	"sound/SFX/C2 - Water Warning.asm"
		even
SoundC3:	include	"sound/SFX/C3 - Enter Giant Ring (Unused).asm"
		even
SoundC4:	include	"sound/SFX/C4 - Boss Explosion.asm"
		even
SoundC5:	include	"sound/SFX/C5 - Tally End.asm"
		even
SoundC6:	include	"sound/SFX/C6 - Ring Spill.asm"
		even
SoundC7:	include	"sound/SFX/C7 - Chain Rise (Unused).asm"
		even
SoundC8:	include	"sound/SFX/C8 - Flamethrower.asm"
		even
SoundC9:	include	"sound/SFX/C9 - Hidden Bonus (Unused).asm"
		even
SoundCA:	include	"sound/SFX/CA - Special Stage Entry.asm"
		even
SoundCB:	include	"sound/SFX/CB - Slow Smash.asm"
		even
SoundCC:	include	"sound/SFX/CC - Spring.asm"
		even
SoundCD:	include	"sound/SFX/CD - Switch.asm"
		even
SoundCE:	include	"sound/SFX/CE - Ring Left Speaker.asm"
		even
SoundCF:	include	"sound/SFX/CF - Signpost.asm"
		even
SoundD0:	include	"sound/SFX/D0 - CNZ Boss Zap.asm"
		even
SoundD1:	include	"sound/SFX/D1.asm"
		even
SoundD2:	include	"sound/SFX/D2.asm"
		even
SoundD3:	include	"sound/SFX/D3 - Signpost 2P.asm"
		even
SoundD4:	include	"sound/SFX/D4 - OOZ Lid Pop.asm"
		even
SoundD5:	include	"sound/SFX/D5 - Sliding Spike.asm"
		even
SoundD6:	include	"sound/SFX/D6 - CNZ Elevator.asm"
		even
SoundD7:	include	"sound/SFX/D7 - Platform Knock.asm"
		even
SoundD8:	include	"sound/SFX/D8 - Bonus Bumper.asm"
		even
SoundD9:	include	"sound/SFX/D9 - Large Bumper.asm"
		even
SoundDA:	include	"sound/SFX/DA - Gloop.asm"
		even
SoundDB:	include	"sound/SFX/DB - Pre-Arrow Firing.asm"
		even
SoundDC:	include	"sound/SFX/DC - Fire.asm"
		even
SoundDD:	include	"sound/SFX/DD - Arrow Stick.asm"
		even
SoundDE:	include	"sound/SFX/DE - Helicopter.asm"
		even
SoundDF:	include	"sound/SFX/DF - Super Transform.asm"
		even
SoundE0:	include	"sound/SFX/E0 - Spin Dash Rev.asm"
		even
SoundE1:	include	"sound/SFX/E1 - Rumbling 2.asm"
		even
SoundE2:	include	"sound/SFX/E2 - CNZ Launch.asm"
		even
SoundE3:	include	"sound/SFX/E3 - Flipper.asm"
		even
SoundE4:	include	"sound/SFX/E4 - HTZ Lift Click.asm"
		even
SoundE5:	include	"sound/SFX/E5 - Leaves.asm"
		even
SoundE6:	include	"sound/SFX/E6 - Mega Mack Drop.asm"
		even
SoundE7:	include	"sound/SFX/E7 - Drawbridge Move.asm"
		even
SoundE8:	include	"sound/SFX/E8 - Quick Door Slam.asm"
		even
SoundE9:	include	"sound/SFX/E9 - Drawbridge Down.asm"
		even
SoundEA:	include	"sound/SFX/EA - Laser Burst.asm"
		even
SoundEB:	include	"sound/SFX/EB - Scatter.asm"
		even
SoundEC:	include	"sound/SFX/EC - Teleport.asm"
		even
SoundED:	include	"sound/SFX/ED - Error.asm"
		even
SoundEE:	include	"sound/SFX/EE - Mecha Sonic Buzz.asm"
		even
SoundEF:	include	"sound/SFX/EF - Large Laser.asm"
		even
SoundF0:	include	"sound/SFX/F0 - Oil Slide.asm"
		even
