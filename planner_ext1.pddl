(define (domain planificador)
    (:requirements :adl :typing :fluents)
    
    (:types tarea - object
            programador - object    )
    
    (:functions
        (dificultad ?t - tarea)                             ;; Dificultad asociada a una tarea
        (tiempo ?t - tarea)                                 ;; Tiempo estimado de realizacion de una tarea
        (habilidad ?p - programador)                        ;; Habilidad asociada a un programador
        (calidad ?p - programador)                          ;; Calidad del trabajo realizado por un programador
    )
    
    (:predicates
        (elaborada ?t - tarea)                              ;; Indica si una tarea ha sido elaborada
        (revisada ?t - tarea)                               ;; Indica si una tarea ha sido revisada 
        (asignacion ?t - tarea ?p - programador)            ;; Indica que la tarea t la ha elaborado el programador p (p no puede revisar t)
    )

    (:action elaborar_tarea 
        :parameters (?t - tarea ?p - programador)
        :precondition (and  (not (elaborada ?t)) 
                            (<= (dificultad ?t) (+ (habilidad ?p) 1)))
        :effect  (and   (elaborada ?t)
                        (asignacion ?t ?p))                  
    )

    (:action revisar_tarea 
        :parameters (?t - tarea ?p - programador)
        :precondition (and  (elaborada ?t)
                            (not (revisada ?t)) 
                            (not (asignacion ?t ?p))
                            (<= (dificultad ?t) (+ (habilidad ?p) 1)))
        :effect  (revisada ?t)                 
    )
)