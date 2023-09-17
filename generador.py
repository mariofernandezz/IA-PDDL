from random import randint


tab = "    "
Ntareas = 5
Nprogramadores = 6

with open('instance.pddl', 'w') as output:
    # Definicion dominio
    output.write('(define (problem problema_prueba)\n')
    output.write(f'{tab}(:domain planificador)\n')
    
    # Definicion objetos
    output.write(f'\n{tab}(:objects\n')
    output.write(tab*2)
    for i in range (1, Ntareas+1):
        output.write(f't{i} ')
    output.write('- tarea\n')
    output.write(tab*2)
    for i in range (1, Nprogramadores+1):
        output.write(f'p{i} ')
    output.write('- programador\n')

    output.write(f'{tab}) \n\n')

    # Definicion estado inicial
    output.write(f'{tab}(:init\n')
    for i in range (1, Ntareas+1):
        d = randint(1,3)
        output.write(f'{tab*2}(= (dificultad t{i}) {d}) \n\n')

    output.write('\n')
    for i in range (1, Nprogramadores+1):
        h = randint(1,3)
        c = randint(1,2)
        output.write(f'{tab*2}(= (habilidad p{i}) {h}) \n')
        output.write(f'{tab*2}(= (calidad p{i}) {c}) \n')
        output.write(f'{tab*2}(= (numTareas p{i}) 0) \n\n')

    output.write(f'{tab*2}(= (tiempoTotal) 0) \n')
    output.write(f'{tab*2}(= (numProgramadores) 0) \n')
    output.write(f'{tab}) \n\n')

    # Definicion objetivo
    output.write(f'{tab}(:goal (and (forall (?t - tarea) (revisada ?t))))\n\n')


    # Definicion optimizacion
    output.write(f'{tab}(:metric minimize (+ (* (tiempoTotal) 0.80) (* (numProgramadores) 0)))\n)')
