#!/bin/bash

psql -U $POSTGRES_USER -d $POSTGRES_DB -f /sql_scripts/*.sql
