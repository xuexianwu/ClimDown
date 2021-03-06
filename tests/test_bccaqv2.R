## Not a very sufficient test, but it at least checks that the
## entire integrated pipeline runs end-to-end
test.bccaqv2 <- function() {
    out.nc <- tempfile(fileext='.nc')
    options(
        calibration.end=as.POSIXct('1972-12-31', tz='GMT'),
        cend=as.POSIXct('1972-12-31', tz='GMT')
    )
    ClimDown::bccaqv2.netcdf.wrapper('./tiny_gcm.nc', './tiny_obs.nc', out.nc, 'tasmax')
    unlink(out.nc)
    checkTrue(TRUE)
}
