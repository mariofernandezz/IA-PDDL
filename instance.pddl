(define (problem problema_prueba)
    (:domain planificador)

    (:objects
        t1 t2 t3 t4 t5 - tarea
        p1 p2 p3 p4 p5 p6 - programador
    ) 

    (:init
        (= (dificultad t1) 2) 
        (= (tiempo t1) 2) 

        (= (dificultad t2) 1) 
        (= (tiempo t2) 2) 

        (= (dificultad t3) 2) 
        (= (tiempo t3) 6) 

        (= (dificultad t4) 3) 
        (= (tiempo t4) 7) 

        (= (dificultad t5) 2) 
        (= (tiempo t5) 1) 


        (= (habilidad p1) 3) 
        (= (calidad p1) 2) 
        (= (numTareas p1) 0) 

        (= (habilidad p2) 2) 
        (= (calidad p2) 2) 
        (= (numTareas p2) 0) 

        (= (habilidad p3) 2) 
        (= (calidad p3) 1) 
        (= (numTareas p3) 0) 

        (= (habilidad p4) 1) 
        (= (calidad p4) 1) 
        (= (numTareas p4) 0) 

        (= (habilidad p5) 2) 
        (= (calidad p5) 1) 
        (= (numTareas p5) 0) 

        (= (habilidad p6) 2) 
        (= (calidad p6) 1) 
        (= (numTareas p6) 0) 

        (= (tiempoTotal) 0) 
        (= (numProgramadores) 0) 
    ) 

    (:goal (and (forall (?t - tarea) (revisada ?t))))

    (:metric minimize (+ (* (tiempoTotal) 0.80) (* (numProgramadores) 0)))
)