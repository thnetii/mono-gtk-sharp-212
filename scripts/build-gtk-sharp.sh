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
