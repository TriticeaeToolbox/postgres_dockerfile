#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
    CREATE DATABASE cxgn_triticum WITH TEMPLATE breedbase;
    CREATE DATABASE cxgn_avena WITH TEMPLATE breedbase;
    CREATE DATABASE cxgn_hordeum WITH TEMPLATE breedbase;
EOSQL