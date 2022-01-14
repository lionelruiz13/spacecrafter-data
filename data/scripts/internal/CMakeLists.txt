add_subdirectory(asteroids)
add_subdirectory(deepsky_drawings)
add_subdirectory(milkyways)
add_subdirectory(panoramas)
add_subdirectory(planetex)

########### install files ###############

INSTALL(FILES initial.sts initial_night.sts initial_dawn.sts  personal.sts polaris.png equator_poles.sts deepsky_drawings.sts bodies-asteroids-501ex.sts proper_motion.sts proper_demotion.sts none.png clear_mess.sts chut.sts chut.png milkyway.sts mw-personal.png big_planets.sts orange_fog.sts orange_fog.png white_room.sts white_room.png zoom.sts trace.sts sky_culture1.sts sky_culture2.sts sky_culture3.sts sky_culture4.sts vertical_line.sts mire.sts mire.png comet.sts track_object.sts antipodes.sts reticle.png star_illuminate.png star16x16.png windrose.sts date_shift_minus.sts date_shift_plus.sts ecliptic_poles.sts greenwich_line.sts personal.txt planets_gotoex3mode.sts shift_clock.sts skypole.sts takeoff.sts   DESTINATION share/${PACKAGE}/data/scripts/internal)

