/datum/weather/cold_wave
	name = "cold wave"
	desc = "Harsh cold wave will grip an entire area."
	probability = 7

	telegraph_message = "<span class='userdanger'><i>aA cold snap is coming to the area, freezing the air around those outside.</i></span>"
	telegraph_duration = 300
	telegraph_overlay = "snow_storm"
	telegraph_sound = 'sound/f13effects/sandstorm_warning.ogg'

	weather_message = "<span class='userdanger'>The air suddenly gets very cold...</span>"
	weather_overlay = "snow_storm"
	weather_duration_lower = 1200
	weather_duration_upper = 2400

	end_duration = 100
	end_message = "<span class='boldannounce'>The cold snap dies down, it should be safe to go outside again.</span>"

	areas_type = list(/area/f13/wasteland, /area/f13/desert, /area/f13/farm, /area/f13/forest, /area/f13/ruins)
	protected_areas = list(/area/shuttle)
	target_trait = ZTRAIT_STATION

	immunity_type = "snow"

	barometer_predictable = TRUE

	carbons_only = TRUE

/datum/weather/cold_wave/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(5, 15))
