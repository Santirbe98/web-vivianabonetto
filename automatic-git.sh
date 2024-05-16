#!/bin/bash

# Array con las opciones de tipo de commit y sus descripciones breves
declare -A commit_types=(
    ["build"]="Cambios relacionados con el sistema de construcción"
    ["chore"]="Otros cambios que no modifican el código fuente ni las pruebas"
    ["ci"]="Cambios relacionados con la configuración de CI"
    ["docs"]="Cambios en la documentación solamente"
    ["feat"]="Nuevas características o funcionalidades"
    ["fix"]="Corrección de errores"
    ["perf"]="Mejoras en el rendimiento"
    ["refactor"]="Reestructuración del código que no corrige un error ni añade una funcionalidad"
    ["revert"]="Reversión de un commit anterior"
    ["style"]="Cambios en el formato o estilo del código"
    ["test"]="Añadir o corregir pruebas"
)

# Muestra cada tipo de commit con su descripción
echo "Tipos de commit disponibles:"
for commit_type in "${!commit_types[@]}"; do
    echo "[$commit_type]: ${commit_types[$commit_type]}"
done
echo -e "\n"
# Se muestra al desarrollador que seleccione el tipo de commit
echo "Seleccione el tipo de commit:"
select commit_type in "${!commit_types[@]}"; do
    if [[ -n $commit_type ]]; then
        break
    else
        echo "Por favor, seleccione una opción válida."
    fi
done

# Muestra la descripción del tipo de commit seleccionado
echo "Descripción: ${commit_types[$commit_type]}"

# Se solicita al desarrollador que ingrese el mensaje del commit
read -p "Ingrese el mensaje del commit: " message

# Secuencia de GIT FLOW
git add .
git commit -m "$commit_type: $message"
git push