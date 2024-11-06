#!/bin/bash

# Configurar Streamlit
mkdir -p ~/.streamlit/

echo "\
[server]\n\
headless = true\n\
port = $PORT\n\
enableCORS=false\n\
\n\
" > ~/.streamlit/config.toml

# Instalar el modelo en_core_web_sm de spaCy
pip install spacy
python -m spacy download en_core_web_sm
