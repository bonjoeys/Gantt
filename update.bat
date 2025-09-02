@echo off
REM Ce script automatise la mise a jour du depot Git

echo.
echo ===========================================
echo    Mise a jour du depot Git
echo ===========================================
echo.

REM Etape 1: Ajoute tous les fichiers modifies
echo --- Ajout de tous les fichiers...
git add .
echo Fichiers ajoutes avec succes.
echo.

REM Etape 2: Demande un message de commit a l'utilisateur
echo --- Veuillez entrer un message pour cette mise a jour (ex: "Correction du logo")
set /p commitMessage="Message: "

REM Verifie si un message a ete entre, sinon met un message par defaut
if not defined commitMessage (
    set commitMessage="Mise a jour automatique"
)

echo.
echo --- Enregistrement des modifications (commit)...
git commit -m "%commitMessage%"
echo.

REM Etape 3: Pousse les modifications vers la branche main sur GitHub
echo --- Envoi des modifications vers GitHub...
git push origin main
echo.

echo ===========================================
echo    Mise a jour terminee !
echo ===========================================
echo.

REM Met en pause pour que l'utilisateur puisse voir le resultat
pause
