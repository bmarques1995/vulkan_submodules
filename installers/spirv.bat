set CompileMode=%~1

cmake -S ./modules/spirv_wrapper/modules/spirv_headers -B ./dependencies/spirv_headers -DCMAKE_INSTALL_PREFIX="./install"
cmake --build ./dependencies/spirv_headers --config %CompileMode% --target install
cmake -S ./modules/spirv_wrapper -B ./dependencies/spirv_tools -DCMAKE_INSTALL_PREFIX="./install" -DSPIRV_TOOLS_BUILD_STATIC=OFF
cmake --build ./dependencies/spirv_tools --config %CompileMode% --target install