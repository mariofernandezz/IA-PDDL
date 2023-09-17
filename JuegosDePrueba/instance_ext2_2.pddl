(define (problem extension2_2) 
  (:domain planificador)
  (:objects
    t1 - tarea
    p1 p2 - programador
  )

  (:init
    (= (dificultad t1) 3)

    (= (habilidad p1) 3)
    (= (habilidad p2) 3)
    (= (calidad p1) 1)
    (= (calidad p2) 2)

    (= (tiempoTotal) 0)
  ) 
  (:goal (and (forall (?t - tarea) (revisada ?t))))
  
  (:metric minimize (tiempoTotal))


)