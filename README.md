[![Packages](https://repology.org/badge/tiny-repos/icevim.svg)](https://repology.org/metapackage/icevim)

# IceVim

IceVim is a Neovim-fork focused on stability. For more information, read
[MANIFESTO.md](MANIFESTO.md).

## Installing IceVim

See [BUILD.md](./BUILD.md) and [supported platforms](https://neovim.io/doc/user/support.html#supported-platforms) for details.

The build is CMake-based, but a Makefile is provided as a convenience.
After installing the dependencies, run the following command.

    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install

To install to a non-default location:

    make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=/full/path/
    make install

CMake hints for inspecting the build:

* `cmake --build build --target help` lists all build targets.
* `build/CMakeCache.txt` (or `cmake -LAH build/`) contains the resolved values of all CMake variables.
* `build/compile_commands.json` shows the full compiler invocations for each translation unit.

<!-- vim: set tw=80: -->
