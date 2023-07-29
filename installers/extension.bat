set CompileMode=%~1

cmake -S ./modules/vulkan_extensions -B ./dependencies/vulkan_extensions -DCMAKE_INSTALL_PREFIX="./install"
cmake --build ./dependencies/vulkan_extensions --config %CompileMode% --target install