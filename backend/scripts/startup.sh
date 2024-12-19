#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT juan_tst_1912_qa_hub_1355.wsgi:application
