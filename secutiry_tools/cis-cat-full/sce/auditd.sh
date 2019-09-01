#!/usr/bin/env sh

#
# CIS-CAT Script Check Engine
# 
# Name       Date       Description
# -------------------------------------------------------------------
# B. Munyan  11/21/17   Ensure there is a config in auditd matching the regex
# 

output=$(
auditctl -l | egrep "$XCCDF_VALUE_REGEX"
)

# If the regex matched, output would be generated.  If so, we pass
if [ "$output" != "" ] ; then
    exit "${XCCDF_RESULT_PASS:-101}"
else
    # print the reason why we are failing
    echo "No auditd rules were found matching the regular expression $XCCDF_VALUE_REGEX"
    exit "${XCCDF_RESULT_FAIL:-102}"
fi
