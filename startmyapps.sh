nohup python FlaskPgSharedDB.py > flaskapp.log &

nohup python manage.py runserver 0.0.0.0:8000 > djangoapp.log &

tail -f flaskapp.log -f djangoapp.log
