#!/usr/bin/env sh

#
# CIS-CAT Script Check Engine
#
# Name         Date       Description
# -------------------------------------------------------------------
# R. DARUSZKA  12/21/17   Ensure there are no security updates available
#


if yum check-update --security ; then
    exit "${XCCDF_RESULT_PASS:-101}"
else
    # print the reason why we are failing
    echo "Security updates are avilable."
    exit "${XCCDF_RESULT_FAIL:-102}"
fi
