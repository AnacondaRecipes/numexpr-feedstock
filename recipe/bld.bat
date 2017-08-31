if "%blas_impl%" == "mkl" (

(
echo [mkl]
echo library_dirs = %LIBRARY_LIB%
echo include_dirs = %LIBRARY_INC%
echo mkl_libs = mkl_core_dll, mkl_intel_lp64_dll, mkl_intel_thread_dll
echo lapack_libs = mkl_lapack95_lp64
) > site.cfg

)

python setup.py install --single-version-externally-managed --record=record.txt