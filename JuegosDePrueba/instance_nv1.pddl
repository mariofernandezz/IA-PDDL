(define (problem nivel_basico_1) 
  (:domain planificador)
  (:objects
    t1 t2 - tarea
    p1 p2 p3 - programador
  )

  (:init
    (= (dificultad t1) 3)
    (= (dificultad t2) 1)
    (= (habilidad p1) 1)
    (= (habilidad p2) 1)
    (= (habilidad p3) 3)
  ) 

  (:goal (and (forall (?t - tarea) (asignada ?t))))


)