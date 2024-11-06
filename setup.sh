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

# Instalar spaCy
pip install spacy

# Descargar el modelo de spaCy
python -m spacy download en_core_web_sm

# Para que funcione en el entorno de Streamlit, debemos vincular el modelo descargado
python -c "import spacy; spacy.cli.link('en_core_web_sm', 'en', force=True)"
