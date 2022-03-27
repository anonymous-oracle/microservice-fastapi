# run config for running the app
source .env
#pkill -9 -f uvicorn
lsof -i :8000 | tail -1 | awk '{print $2}' | while read p; do kill -9 ${p}; done
uvicorn app:app --reload