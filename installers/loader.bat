set CompileMode=%~1

cmake -S ./modules/vulkan_headers -B ./dependencies/vulkan_headers -DCMAKE_INSTALL_PREFIX="./install"
cmake --build ./dependencies/vulkan_headers --config %CompileMode% --target install
cmake -S ./modules/vulkan_loader -B ./dependencies/vulkan_loader -DCMAKE_INSTALL_PREFIX="./install" -DBUILD_SHARED_LIBS=OFF
cmake --build ./dependencies/vulkan_loader --config %CompileMode% --target install