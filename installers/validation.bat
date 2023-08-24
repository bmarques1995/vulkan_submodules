set CompileMode=%~1

cmake -S ./modules/robin_hood_hashing -B ./dependencies/robin_hood_hashing -DCMAKE_INSTALL_PREFIX="./install"
cmake --build ./dependencies/robin_hood_hashing --config %CompileMode% --target install
cmake -S ./modules/vulkan_validation -B ./dependencies/vulkan_validation -DCMAKE_INSTALL_PREFIX="./install" -DVVL_CODEGEN=ON -DUPDATE_DEPS=ON -DCMAKE_BUILD_TYPE=%CompileMode%
cmake --build ./dependencies/vulkan_validation --config %CompileMode% --target install