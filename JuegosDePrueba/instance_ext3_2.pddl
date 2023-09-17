(define (problem extension3_2) 
  (:domain planificador)
  (:objects
    t1 t2 t3 t4 t5 - tarea
    p1 p2 p3 p4 p5 p6 - programador
  )

  (:init
    (= (dificultad t1) 3)
    (= (dificultad t2) 3)
    (= (dificultad t3) 3)
    (= (dificultad t4) 3)
    (= (dificultad t5) 3)

    (= (habilidad p1) 3)
    (= (habilidad p2) 3)
    (= (habilidad p3) 3)
    (= (habilidad p4) 3)
    (= (habilidad p5) 3)
    (= (habilidad p6) 3)
    (= (calidad p1) 2)
    (= (calidad p2) 2)
    (= (calidad p3) 2)
    (= (calidad p4) 2)
    (= (calidad p5) 1)
    (= (calidad p6) 1)
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