# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/nikita/Android/Sdk/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /home/nikita/Android/Sdk/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64

# Include any dependencies generated for this target.
include programs/aes/CMakeFiles/crypt_and_hash.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include programs/aes/CMakeFiles/crypt_and_hash.dir/compiler_depend.make

# Include the progress variables for this target.
include programs/aes/CMakeFiles/crypt_and_hash.dir/progress.make

# Include the compile flags for this target's objects.
include programs/aes/CMakeFiles/crypt_and_hash.dir/flags.make

programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o: programs/aes/CMakeFiles/crypt_and_hash.dir/flags.make
programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o: /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls/programs/aes/crypt_and_hash.c
programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o: programs/aes/CMakeFiles/crypt_and_hash.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o"
	cd /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes && /home/nikita/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --sysroot=/home/nikita/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o -MF CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o.d -o CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o -c /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls/programs/aes/crypt_and_hash.c

programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.i"
	cd /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes && /home/nikita/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --sysroot=/home/nikita/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls/programs/aes/crypt_and_hash.c > CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.i

programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.s"
	cd /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes && /home/nikita/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --sysroot=/home/nikita/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls/programs/aes/crypt_and_hash.c -o CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.s

# Object files for target crypt_and_hash
crypt_and_hash_OBJECTS = \
"CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o"

# External object files for target crypt_and_hash
crypt_and_hash_EXTERNAL_OBJECTS = \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_stubs.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_memory_poisoning_wrappers.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_test_wrappers.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/test_memory.c.o" \
"/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/aes/crypt_and_hash: programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_stubs.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/psa_memory_poisoning_wrappers.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/psa_test_wrappers.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/test_memory.c.o
programs/aes/crypt_and_hash: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/aes/crypt_and_hash: programs/aes/CMakeFiles/crypt_and_hash.dir/build.make
programs/aes/crypt_and_hash: library/libmbedcrypto.so
programs/aes/crypt_and_hash: 3rdparty/everest/libeverest.a
programs/aes/crypt_and_hash: 3rdparty/p256-m/libp256m.a
programs/aes/crypt_and_hash: programs/aes/CMakeFiles/crypt_and_hash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable crypt_and_hash"
	cd /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crypt_and_hash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/aes/CMakeFiles/crypt_and_hash.dir/build: programs/aes/crypt_and_hash
.PHONY : programs/aes/CMakeFiles/crypt_and_hash.dir/build

programs/aes/CMakeFiles/crypt_and_hash.dir/clean:
	cd /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes && $(CMAKE_COMMAND) -P CMakeFiles/crypt_and_hash.dir/cmake_clean.cmake
.PHONY : programs/aes/CMakeFiles/crypt_and_hash.dir/clean

programs/aes/CMakeFiles/crypt_and_hash.dir/depend:
	cd /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/mbedtls/programs/aes /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64 /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes /home/nikita/AndroidStudioProjects/rpo/libs/mbedtls/build/x86_64/programs/aes/CMakeFiles/crypt_and_hash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/aes/CMakeFiles/crypt_and_hash.dir/depend

