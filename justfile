default:
    just --list

check-links:
    -blc http://localhost:8000
    -blc http://localhost:8000/publications
    -blc http://localhost:8000/code
    -blc http://localhost:8000/cv