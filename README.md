# Conférence — Programmes, défis et récompenses en astronomie amateur

Présentation Beamer autonome bâtie avec le thème **SwissAstro 0.4.0**.

## Fichiers principaux

- `presentation.tex` — présentation de ~2 h;
- `presentation.pdf` — PDF prêt à projeter;
- `fiche-participant.pdf` — fiche imprimable pour les activités;
- `GUIDE_ANIMATEUR.md` — déroulement, design pédagogique et corrigés;
- `SOURCES.md` — sources vérifiées au 10 septembre 2026;
- fichiers `*.sty` et `assets/` — copie locale du thème SwissAstro 0.4.0.

## Évolutions de cette version

La présentation a été migrée vers SwissAstro 0.4.0 et exploite davantage la grille de 12 colonnes, les compositions ouvertes (`SwissAstroOpenThree`, `SwissAstroOpenFour`) et le composant de processus (`SwissAstroProcessThree`). La police est laissée au thème afin d'utiliser correctement TeX Gyre Heros.

La barre de progression est désactivée au moyen de l'option officielle `noprogress`. Sur un diaporama long, la formule de progression de SwissAstro 0.4.0 provoque un dépassement de dimension TeX autour de la 35e diapositive. Le reste du thème 0.4.0 est utilisé sans modification.

## Ouvrir dans TeXstudio

1. Ouvrir `presentation.tex` dans TeXstudio.
2. Choisir **PdfLaTeX** comme compilateur.
3. Compiler deux fois.

Commande équivalente :

```bash
pdflatex presentation.tex
pdflatex presentation.tex
```

## Durée pédagogique

Le déroulement est calibré pour **environ 2 heures**, incluant une pause et trois activités pédagogiques. Les annexes ne font pas partie du temps principal.

## Mise à jour des faits

La présentation conserve les sources et vérifications de la version précédente. Les règles de programmes et dates de concours pouvant changer, consulter `SOURCES.md` avant une nouvelle prestation.
