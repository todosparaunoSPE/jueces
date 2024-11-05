import spacy

try:
    spacy.load('en_core_web_sm')
except OSError:
    # Si el modelo no se encuentra, lo descargamos
    from spacy.cli import download
    download('en_core_web_sm')
