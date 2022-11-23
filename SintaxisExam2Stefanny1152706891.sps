* Encoding: UTF-8.
*Importar la base de datos

PRESERVE.
 SET DECIMAL COMMA.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\StefannyAC\Documents\Datos\Parcial2\inicio1.dat"
  /FIXCASE=1
  /ARRANGEMENT=FIXED
  /FIRSTCASE=1
  /VARIABLES=
  /1 NUMSUJ 0-2 AUTO
  SEX 3-3 AUTO
  CENTRO 4-4 AUTO
  ESTUDIOS 5-5 AUTO
  HABITAT 6-6 AUTO
  ESTUPADR 7-7 AUTO
  NIVSOC 8-8 AUTO
  PAGA 9-10 AUTO
  NUMHER 11-11 AUTO
  EDAD 12-13 AUTO
  RENDESCO 14-14 AUTO
  VERBAL 15-16 AUTO
  LIBRO 17-18 AUTO
  CINE 19-20 AUTO
  TEATRO 21-21 AUTO
  CONCIERT 22-23 AUTO
  TV 24-25 AUTO
  CIUDAD 26-26 AUTO.
RESTORE.

CACHE.
EXECUTE.
DATASET NAME ConjuntoDatos1 WINDOW=FRONT.

*Renombrar la variable V6

VARIABLE LABELS NUMSUJ 'Identificador'.
VARIABLE LABELS SEX 'Sexo'.
VARIABLE LABELS CENTRO 'Centro de estudios del alumno (público o privado)'.
VARIABLE LABELS ESTUDIOS 'Estudios del alumno'.
VARIABLE LABELS HABITAT 'Habitat rural o urbano'.
VARIABLE LABELS ESTUPADR 'Nivel de estudio de los padres'.
VARIABLE LABELS NIVSOC 'Nivel socioeconómico'.
VARIABLE LABELS PAGA 'Paga semanal'.
VARIABLE LABELS NUMHER 'Número de hermanos incluido el sujeto'.
VARIABLE LABELS EDAD 'Edad del alumno'.
VARIABLE LABELS RENDESCO 'Rendimiento escolar'.
VARIABLE LABELS VERBAL 'Riqueza verbal'.
VARIABLE LABELS LIBRO 'Libros leídos anual'.
VARIABLE LABELS CINE 'Asistencia anual al cine'.
VARIABLE LABELS TEATRO 'Asistencia anual teatro'.
VARIABLE LABELS CONCIERT 'Asistencia anual conciertos'.
VARIABLE LABELS TV 'Horas semanales TV'.
VARIABLE LABELS CIUDAD 'Ciudad de residencia'.

VALUE LABELS SEX
1 "H"
2 "M"
EXECUTE.
VALUE LABELS CENTRO
1 "Público"
2 "Privado"
EXECUTE.
VALUE LABELS ESTUDIOS
1 "EGB"
2 "BUP"
3 "FP"
EXECUTE.
VALUE LABELS HABITAT
1 "R"
2 "U"
EXECUTE.
VALUE LABELS ESTUPADR
1 "Sin estudios"
2 "Primarios"
3 "Secundarios"
4 "Superiores"
EXECUTE.
VALUE LABELS NIVSOC
1 "Muy bajo"
2 "Bajo"
3 "Medio"
4 "Alto"
5 "Muy alto"
EXECUTE.
VALUE LABELS CIUDAD
1 "Bogotá"
2 "Cali"
3 "Medellín"
4 "Barranquilla"
EXECUTE.
