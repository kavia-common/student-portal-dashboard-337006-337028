#!/bin/bash
cd /home/kavia/workspace/code-generation/student-portal-dashboard-337006-337028/student_dashboard_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

