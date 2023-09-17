(define (problem extension3_1) 
  (:domain planificador)
  (:objects
    t1 t2 t3 t4 t5 - tarea
    p1 p2 p3 p4 p5 p6 - programador
  )

  (:init
    (= (dificultad t1) 3)
    (= (dificultad t2) 3)
    (= (dificultad t3) 2)
    (= (dificultad t4) 2)
    (= (dificultad t5) 2)

    (= (habilidad p1) 3)
    (= (habilidad p2) 2)
    (= (habilidad p3) 2)
    (= (habilidad p4) 1)
    (= (habilidad p5) 1)
    (= (habilidad p6) 1)
    (= (calidad p1) 2)
    (= (calidad p2) 2)
    (= (calidad p3) 2)
    (= (calidad p4) 2)
    (= (calidad p5) 2)
    (= (calidad p6) 2)
    (= (numTareas p1) 0)
    (= (numTareas p2) 0)
    (= (numTareas p3) 0)
    (= (numTareas p4) 0)
    (= (numTareas p5) 0)
    (= (numTareas p6) 0)

    (= (tiempoTotal) 0)
  ) 
  (:goal (and (forall (?t - tarea) (revisada ?t))))
  
  (:metric minimize (tiempoTotal))


)