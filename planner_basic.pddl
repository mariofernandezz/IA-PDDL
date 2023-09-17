(define (domain planificador)
    (:requirements :adl :typing :fluents)
    
    (:types tarea - object
            programador - object)
    
    (:functions
        (dificultad ?t - tarea)             ;; Dificultad asociada a una tarea
        (tiempo ?t - tarea)                 ;; Tiempo estimado de realizacion de una tarea
        (habilidad ?p - programador)        ;; Habilidad asociada a un programador
        (calidad ?p - programador)          ;; Calidad del trabajo realizado por un programador
    )
    
    (:predicates
        (asignada ?t - tarea)              ;; Indica si una tarea ha sido asignada a un programador         
    )

    (:action asignar_tarea 
        :parameters (?t - tarea ?p - programador)
        :precondition (and  (not (asignada ?t)) 
                            (<= (dificultad ?t) (+ (habilidad ?p) 1)))
        :effect  (asignada ?t)
    )
)