sed -i configure.in -e 's/^PKG_CHECK_MODULES(MONO_CAIRO\,\s*mono-cairo.*/enable_mono_cairo=yes \#\0/'
echo "::group::autoreconf"
autoreconf -i
echo "::endgroup::"
echo "::group::autoconf"
autoconf
echo "::endgroup::"
echo "::group::configure"
sh configure --prefix=/opt
echo "::endgroup::"
echo "::group::make"
make
echo "::endgroup::"
echo "::group::make install"
make install
echo "::endgroup::"
