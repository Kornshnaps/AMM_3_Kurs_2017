# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/hroniko/IDEA/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/hroniko/IDEA/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c__.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c__.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c__.dir/flags.make

CMakeFiles/c__.dir/main.cpp.o: CMakeFiles/c__.dir/flags.make
CMakeFiles/c__.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c__.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c__.dir/main.cpp.o -c /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/main.cpp

CMakeFiles/c__.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/main.cpp > CMakeFiles/c__.dir/main.cpp.i

CMakeFiles/c__.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/main.cpp -o CMakeFiles/c__.dir/main.cpp.s

CMakeFiles/c__.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/c__.dir/main.cpp.o.requires

CMakeFiles/c__.dir/main.cpp.o.provides: CMakeFiles/c__.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/c__.dir/build.make CMakeFiles/c__.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/c__.dir/main.cpp.o.provides

CMakeFiles/c__.dir/main.cpp.o.provides.build: CMakeFiles/c__.dir/main.cpp.o


CMakeFiles/c__.dir/Book.cpp.o: CMakeFiles/c__.dir/flags.make
CMakeFiles/c__.dir/Book.cpp.o: ../Book.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/c__.dir/Book.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c__.dir/Book.cpp.o -c /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/Book.cpp

CMakeFiles/c__.dir/Book.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__.dir/Book.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/Book.cpp > CMakeFiles/c__.dir/Book.cpp.i

CMakeFiles/c__.dir/Book.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__.dir/Book.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/Book.cpp -o CMakeFiles/c__.dir/Book.cpp.s

CMakeFiles/c__.dir/Book.cpp.o.requires:

.PHONY : CMakeFiles/c__.dir/Book.cpp.o.requires

CMakeFiles/c__.dir/Book.cpp.o.provides: CMakeFiles/c__.dir/Book.cpp.o.requires
	$(MAKE) -f CMakeFiles/c__.dir/build.make CMakeFiles/c__.dir/Book.cpp.o.provides.build
.PHONY : CMakeFiles/c__.dir/Book.cpp.o.provides

CMakeFiles/c__.dir/Book.cpp.o.provides.build: CMakeFiles/c__.dir/Book.cpp.o


# Object files for target c__
c___OBJECTS = \
"CMakeFiles/c__.dir/main.cpp.o" \
"CMakeFiles/c__.dir/Book.cpp.o"

# External object files for target c__
c___EXTERNAL_OBJECTS =

c__: CMakeFiles/c__.dir/main.cpp.o
c__: CMakeFiles/c__.dir/Book.cpp.o
c__: CMakeFiles/c__.dir/build.make
c__: CMakeFiles/c__.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable c__"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c__.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c__.dir/build: c__

.PHONY : CMakeFiles/c__.dir/build

CMakeFiles/c__.dir/requires: CMakeFiles/c__.dir/main.cpp.o.requires
CMakeFiles/c__.dir/requires: CMakeFiles/c__.dir/Book.cpp.o.requires

.PHONY : CMakeFiles/c__.dir/requires

CMakeFiles/c__.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c__.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c__.dir/clean

CMakeFiles/c__.dir/depend:
	cd /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++ /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++ /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug /media/hroniko/DATA/AMM_3_Kurs_2017/OOP/lab04z/c++/cmake-build-debug/CMakeFiles/c__.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c__.dir/depend

