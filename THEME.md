# Gabarit SwissAstro

- Dépôt : https://github.com/steveprudhomme/beamer-swiss-astro
- Version : 0.4.1 (11 septembre 2026)
- Révision copiée : `eec3db7fc6bf6d7097083e45cad0752e91a30323`
- Licence : GNU GPL v3 ou ultérieure, voir `LICENSE`.

Les six fichiers `.sty` sont copiés à l'identique. L'image `assets/demo-space.png` déjà présente est conservée. La présentation se compile sans accéder au dépôt du gabarit.

## Adaptations de la conférence

`presentation.tex` active la couverture `SwissAstroLongTitle`, l'exposant `SwissAstroOrdinal` et le composant `SwissAstroProcessFive`. L'ancienne option `noprogress`, qui contournait un défaut de la version 0.4.0, est retirée.

Deux adaptations locales corrigent la composition avec Beamer/TeX Live 2026 :

- `SwissAstroTextSetup` préserve le retrait gauche des boîtes Beamer lors de l'appel à `RaggedRight`;
- le titre de diapositive est composé dans une minipage mesurée, avec les polices, couleurs et filet du thème, pour garder le libellé de section dans la page et mesurer la hauteur réelle de l'en-tête.

Le paquet `anyfontsize` évite les substitutions de taille des symboles mathématiques et ordinaux. `MicroSource` commence un paragraphe séparé pour distinguer les références du texte.

Les titres les plus longs ont été raccourcis. Les quatre étapes de l'activité 3 sont disposées sur une rangée. La conclusion des cinq critères est séparée, portant le total à 47 diapositives. Les fichiers du thème restent inchangés pour faciliter les mises à jour futures.

## Mise à jour ultérieure

Copier les six fichiers `.sty` d'une version choisie du gabarit, mettre à jour la provenance ci-dessus et la version affichée, puis lancer `build.ps1`. Revoir visuellement toutes les diapositives, en particulier les titres, cartes, sources et pages de section. Réévaluer les deux adaptations locales si le thème corrige ces comportements en amont.
