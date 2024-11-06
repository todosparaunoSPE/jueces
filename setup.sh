mkdir -p ~/.streamlit/

echo "\
[server]\n\
headless = true\n\
port = $PORT\n\
enableCORS=false\n\
\n\
" > ~/.streamlit/config.toml

pip install en_core_web_sm
python -m spacy download en_core_web_sm

