ECHO OFF
IF NOT EXIST _site GOTO :REMOVESASSCACHE
rmdir _site /s /q

:REMOVESASSCACHE
IF NOT EXIST .sass-cache GOTO :BUILD
rmdir .sass-cache /s /q

:BUILD
ECHO ON
bundle exec jekyll serve --incremental --open-url --trace --force_polling --future 