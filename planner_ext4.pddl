(define (domain planificador)
    (:requirements :adl :typing :fluents)
    
    (:types tarea - object
            programador - object    )
    
    (:functions
        (dificultad ?t - tarea)                             ;; Dificultad asociada a una tarea
        (habilidad ?p - programador)                        ;; Habilidad asociada a un programador
        (numTareas ?p - programador)                        ;; Numero de tareas asignadas a un programador  
        (calidad ?p - programador)                          ;; Calidad del trabajo realizado por un programador
        (tiempoTotal)                                       ;; Indica el tiempo de trabajo total en horas
        (numProgramadores)                                  ;; Indica el numero de programadores que estan trabajando
    )
    
    (:predicates
        (elaborada ?t - tarea)                              ;; Indica si una tarea ha sido elaborada
        (revisada ?t - tarea)                               ;; Indica si una tarea ha sido revisada 
        (asignacion ?t - tarea ?p - programador)            ;; Indica que la tarea t la ha elaborado el programador p (p no puede revisar t)
    )

    (:action elaborar_tarea 
        :parameters (?t - tarea ?p - programador)
        :precondition (and  (not (elaborada ?t))
                            (< (numTareas ?p) 2) 
                            (<= (dificultad ?t) (+ (habilidad ?p) 1)))
        :effect  (and   (elaborada ?t)
                        (asignacion ?t ?p)
                        (increase (tiempoTotal) (calidad ?p))                                   ;; Se suma el tiempo para hacer la revision de la tarea, en funcion de la calidad del programador
                        (when (> (dificultad ?t) (habilidad ?p)) (increase (tiempoTotal) 2))    ;; Se suman 2 horas si la tarea es de dificultad mayor a la habilidad del programador
                        (when (= (numTareas ?p) 0) (increase (numProgramadores) 1))             ;; Nuevo programador que trabaja
                        (increase (numTareas ?p) 1))
    )

    (:action revisar_tarea 
        :parameters (?t - tarea ?p - programador)
        :precondition (and  (elaborada ?t)
                            (not (revisada ?t))
                            (< (numTareas ?p) 2)  
                            (not (asignacion ?t ?p))
                            (<= (dificultad ?t) (+ (habilidad ?p) 1)))
        :effect  (and   (revisada ?t)
                        (when (= (numTareas ?p) 0) (increase (numProgramadores) 1)) ;; Nuevo programador que trabaja
                        (increase (numTareas ?p) 1))
    )
)