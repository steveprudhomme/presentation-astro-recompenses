# Conférence — Programmes, défis et récompenses en astronomie amateur

Présentation Beamer autonome utilisant **SwissAstro 0.4.1** : 47 diapositives, activités et annexes incluses.

## Fichiers principaux

- `presentation.tex` — source modifiable de la conférence;
- `presentation.pdf` — PDF prêt à projeter;
- `build.ps1` — compilation locale depuis PowerShell;
- `fiche-participant.pdf` — fiche imprimable pour les activités;
- `GUIDE_ANIMATEUR.md` — déroulement et corrigés;
- `SOURCES.md` — sources vérifiées au 10 septembre 2026;
- six fichiers `*.sty` — copie autonome du gabarit;
- `THEME.md` — version, provenance et adaptations de mise en page.
- `assets/photos/` — dix photographies Creative Commons ou du domaine public;
- `IMAGES.md` — crédits, sources, licences et conditions de réutilisation;
- `credits-images.tex` — crédits cliquables affichés près des photographies.

## Version illustrée 1.3

Dix photographies réelles illustrent la couverture, l'observation en groupe, la Lune, le Seestar, la fabrication d'un Dobson, les objets du ciel profond, les étoiles variables et les paysages nocturnes. Le panorama de la Voie lactée sert de fond à la pause. Le total reste de 47 diapositives.

Les crédits complets et les licences sont visibles et cliquables dans le PDF. Les fichiers sont inclus localement : aucune connexion n'est nécessaire pour compiler. Les images conservent leur licence propre, détaillée dans `IMAGES.md`. Aucune image générée par IA n'est utilisée.

## Migration vers SwissAstro 0.4.1

La couverture utilise la variante pour titre long et la barre de progression est réactivée grâce au correctif officiel. Les cinq critères utilisent `SwissAstroProcessFive`; leur conclusion occupe une diapositive distincte. Les titres et les dispositions denses ont été adaptés pour préserver la zone du pied de page. La présentation passe de 46 à 47 diapositives, sans nouvelle activité.

Les six fichiers du gabarit sont identiques à ceux du dépôt amont. Les adaptations propres à la conférence sont regroupées dans `presentation.tex` et décrites dans `THEME.md`.

## Compiler dans PowerShell

Prérequis : TeX Live ou MiKTeX avec Beamer, les paquets du thème, `babel-french`, `booktabs`, `tabularx` et `anyfontsize`. Le dossier des exécutables TeX doit être dans le `PATH`.

Depuis ce dossier :

```powershell
.\build.ps1
```

Si la politique PowerShell bloque uniquement l'exécution du script téléchargé :

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\build.ps1
```

Cette option ne modifie pas la politique permanente de PowerShell. Les fichiers intermédiaires restent dans `build/`, ignoré par Git. Le PDF à la racine est remplacé seulement après une compilation réussie sans débordement ni caractère manquant. Le script effectue trois passes pour stabiliser les positions et renvois.

Dans TeXstudio, ouvrir `presentation.tex`, choisir **PdfLaTeX**, puis compiler trois fois après un nettoyage des fichiers auxiliaires.

## Reprendre le travail Git

La migration est préparée dans la branche `codex/swissastro-0.4.1` d'un clone local ordinaire. Aucun sous-module ni espace de travail temporaire Git n'est nécessaire.

```powershell
git status
git diff
# Après de nouvelles modifications :
git add presentation.tex presentation.pdf README.md THEME.md IMAGES.md credits-images.tex assets/photos build.ps1 .gitignore *.sty
git commit -m "Adapter la presentation au gabarit SwissAstro 0.4.1"
# Pour envoyer la branche sur GitHub :
git push -u origin codex/swissastro-0.4.1
```

Si le commit est déjà présent et que le dossier est propre, seule la commande `git push` est nécessaire pour publier la branche.

## Durée et contenu

Le déroulement pédagogique, la fiche participant et les sources existantes sont conservés. Consulter le guide pour le minutage détaillé et `SOURCES.md` avant une nouvelle prestation : la migration du gabarit ne constitue pas une nouvelle vérification des règles et dates des programmes.
