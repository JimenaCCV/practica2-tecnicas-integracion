#!/bin/bash
set -e
mkdir -p salida
{
  echo "Reporte generado por Jenkins"
  echo "Fecha: $(date)"
  echo "Host: $(hostname)"
  echo "Archivos del repositorio:"
  ls -1
} > salida/reporte.txt
cat salida/reporte.txt
