import subprocess
import spacy

# Intentar cargar el modelo, si no está disponible, instalarlo
try:
    nlp = spacy.load('en_core_web_sm')
except OSError:
    # Si el modelo no está instalado, descargarlo
    subprocess.run(["python", "-m", "spacy", "download", "en_core_web_sm"])
    # Luego cargar el modelo después de instalarlo
    nlp = spacy.load('en_core_web_sm')

# Ahora ya puedes usar 'nlp' para procesar texto
