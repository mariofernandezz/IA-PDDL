(define (problem problema_prueba) 
  (:domain planificador)
  (:objects
    t1 t2 - tarea
    p1 p2 p3 p4 p5 p6 p7 p8 p9 - programador
  )

  (:init
    (= (dificultad t1) 3)
    (= (dificultad t2) 2)

    (= (habilidad p1) 1)
    (= (habilidad p2) 1)
    (= (habilidad p3) 2)
    (= (habilidad p4) 1)
    (= (habilidad p5) 1)
    (= (habilidad p6) 1)
    (= (habilidad p7) 1)
    (= (habilidad p8) 2)
    (= (habilidad p9) 1)
    (= (calidad p1) 1)
    (= (calidad p2) 1)
    (= (calidad p3) 2)
    (= (calidad p4) 1)
    (= (calidad p5) 2)
    (= (calidad p6) 1)
    (= (calidad p7) 1)
    (= (calidad p8) 1)
    (= (calidad p9) 1)
    (= (numTareas p1) 0)
    (= (numTareas p2) 0)
    (= (numTareas p3) 0)
    (= (numTareas p4) 0)
    (= (numTareas p5) 0)
    (= (numTareas p6) 0)
    (= (numTareas p7) 0)
    (= (numTareas p8) 0)
    (= (numTareas p9) 0)

    (= (tiempoTotal) 0)
    (= (numProgramadores) 0)
  )

  (:goal (and (forall (?t - tarea) (revisada ?t))))
  
  (:metric minimize (+ (* (tiempoTotal) 0.80) (* (numProgramadores) 0.2)))


)