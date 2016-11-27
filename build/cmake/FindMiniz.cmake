# - Find miniz zip library
#
#  MINIZ_FOUND              - have cpp-netlib been found
#  MINIZ_INCLUDE_DIR        - path to where miniz is found
FIND_PATH(MINIZ_INCLUDE_DIR
	NAMES miniz.c
	PATHS
		${CMAKE_SOURCE_DIR}/ext/miniz
		${MINIZ_INCLUDE_DIR}
		${NSCP_INCLUDEDIR}
)
IF(MINIZ_INCLUDE_DIR)
	SET(MINIZ_FOUND TRUE)
ELSE(MINIZ_INCLUDE_DIR)
	SET(MINIZ_FOUND FALSE)
ENDIF(MINIZ_INCLUDE_DIR)
MARK_AS_ADVANCED(
  MINIZ_INCLUDE_DIR
)
