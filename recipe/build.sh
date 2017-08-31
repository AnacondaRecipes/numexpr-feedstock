if [ "$blas_impl" = "mkl" ]; then

cat > site.cfg <<EOF
[mkl]
library_dirs = $PREFIX/lib
include_dirs = $PREFIX/include
mkl_libs = mkl_rt
lapack_libs =

EOF

fi

python setup.py install --single-version-externally-managed --record=record.txt
