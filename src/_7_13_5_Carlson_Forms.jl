#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.13.5 Carlson Forms #
########################
export gsl_sf_ellint_RC, gsl_sf_ellint_RC_e, gsl_sf_ellint_RD,
       gsl_sf_ellint_RD_e, gsl_sf_ellint_RF, gsl_sf_ellint_RF_e,
       gsl_sf_ellint_RJ, gsl_sf_ellint_RJ_e


# These routines compute the incomplete elliptic integral RC(x,y) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RC(x::Cdouble, y::Cdouble, mode::Void)
    ccall( (:gsl_sf_ellint_RC, :libgsl), Cdouble, (Cdouble, Cdouble, Void),
        x, y, mode )
end


# These routines compute the incomplete elliptic integral RC(x,y) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RC_e(x::Cdouble, y::Cdouble, mode::Void)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_RC_e, :libgsl), Cint, (Cdouble,
        Cdouble, Void, Ptr{gsl_sf_result}), x, y, mode, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the incomplete elliptic integral RD(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RD(x::Cdouble, y::Cdouble, z::Cdouble, mode::Void)
    ccall( (:gsl_sf_ellint_RD, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, Void), x, y, z, mode )
end


# These routines compute the incomplete elliptic integral RD(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RD_e(x::Cdouble, y::Cdouble, z::Cdouble, mode::Void)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_RD_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Void, Ptr{gsl_sf_result}), x, y, z, mode, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the incomplete elliptic integral RF(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RF(x::Cdouble, y::Cdouble, z::Cdouble, mode::Void)
    ccall( (:gsl_sf_ellint_RF, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, Void), x, y, z, mode )
end


# These routines compute the incomplete elliptic integral RF(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RF_e(x::Cdouble, y::Cdouble, z::Cdouble, mode::Void)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_RF_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Void, Ptr{gsl_sf_result}), x, y, z, mode, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the incomplete elliptic integral RJ(x,y,z,p) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RJ(x::Cdouble, y::Cdouble, z::Cdouble, p::Cdouble, mode::Void)
    ccall( (:gsl_sf_ellint_RJ, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, Cdouble, Void), x, y, z, p, mode )
end


# These routines compute the incomplete elliptic integral RJ(x,y,z,p) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_ellint_RJ_e(x::Cdouble, y::Cdouble, z::Cdouble, p::Cdouble, mode::Void)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_RJ_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Void, Ptr{gsl_sf_result}), x, y, z, p, mode,
        result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end