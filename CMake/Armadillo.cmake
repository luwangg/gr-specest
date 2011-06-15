IF (ARMADILLO_FOUND)
	SET(HAVE_ARMADILLO 1)
	SET(armadillo_optional_headers "#include \"specest_music.h\" \n#include \"specest_music_vcf.h\" \n#include \"specest_music_spectrum_vcf.h\"")
	SET(armadillo_optional_dot_i "%include \"specest_music.i\" \n%include \"specest_music_vcf.i\" \n%include \"specest_music_spectrum_vcf.i\"")
ELSE(ARMADILLO_FOUND)
	SET(armadillo_optional_headers "")
	SET(armadillo_optional_dot_i "")
	MESSAGE("-- As armadillo wasn't found, the MUSIC algorithm will not be built")
ENDIF(ARMADILLO_FOUND)