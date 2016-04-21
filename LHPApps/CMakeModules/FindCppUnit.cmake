# =========================================================================
#   Program:   lhpBuilder
#   Module:    $RCSfile: FindCppUnit.cmake,v $
#   Language:  CMake
#   Date:      $Date: 2009-05-19 14:29:52 $
#   Version:   $Revision: 1.1 $
#   Authors:   Stefano Perticoni
# ==========================================================================

# Find the CppUnit includes and library
#
# This module defines
# CPPUNIT_INCLUDE_DIR, where to find cppunit include files, etc.
# CPPUNIT_LIBRARIES, the libraries to link against to use CppUnit.
# CPPUNIT_FOUND, If false, do not try to use CppUnit.

# also defined, but not for general use are
# CPPUNIT_LIBRARY, where to find the CppUnit library.

#MESSAGE("Searching for cppunit library ")

FIND_PATH(CPPUNIT_INCLUDE_DIR cppunit/TestCase.h
  /home/erc/include
  /usr/local/include
  /usr/include
  ${LHP_SOURCE_DIR}/../cppunit-1.12.0/include
  ${LHP_SOURCE_DIR}/../../cppunit-1.12.0/include
)

FIND_LIBRARY(CPPUNIT_LIBRARY cppunitd
  /home/erc/lib
  /usr/local/lib
  /usr/lib
  ${LHP_SOURCE_DIR}/../cppunit-1.12.0/lib
  ${LHP_SOURCE_DIR}/../../cppunit-1.12.0/lib
)

IF(CPPUNIT_INCLUDE_DIR)
  IF(CPPUNIT_LIBRARY)
    SET(CPPUNIT_FOUND "YES")
    SET(CPPUNIT_LIBRARIES ${CPPUNIT_LIBRARY} ${CMAKE_DL_LIBS})
  ENDIF(CPPUNIT_LIBRARY)
ENDIF(CPPUNIT_INCLUDE_DIR)
