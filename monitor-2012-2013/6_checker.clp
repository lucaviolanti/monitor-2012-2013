;//~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;//~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;//~ ;;;;;;;;;;;;;;;; 			   			MODULO CHECKER					   ;;;;;;;;;;;;;;;;;;;;;;
;//~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmodule CHECKER (import AGENT ?ALL) (export ?ALL))

(defrule continue-planning-1
	(declare (salience 9))
	(next_action (action ?) (safety NA))
	(goal (goal-id ?gid) (goal-status NA))
	?c <- (current_goal ?cg)
 =>
	(assert 
;//~ 		(current_goal (+ ?cg 1))
		(current_goal ?gid)
	)
	(retract ?c)
	(focus PLANNER)
)

(defrule next-action-safe-forward
	(declare (salience 9))
	(status (step ?i) (time ?t))
	(not (goal (goal-id ?) (goal-status NA)))
	?na <- (next_action (action go-forward) (safety NA))
	(reachable_goals ?rg)
	(test (> ?rg 0))
	(goal (goal-id ?gid) (goal-time ?gt) (goal-status found))
	(maxduration ?md)
	(test (> (- ?md ?t ?gt 10) 0))
 =>
	(modify ?na (safety safe))
)

(defrule next-action-safe-other
	(declare (salience 9))
	(status (step ?i) (time ?t))
	(not (goal (goal-id ?) (goal-status NA)))
	?na <- (next_action (action go-right|go-left) (safety NA))
	(reachable_goals ?rg)
	(test (> ?rg 0))
	(goal (goal-id ?gid) (goal-time ?gt) (goal-status found))
	(maxduration ?md)
	(test (> (- ?md ?t ?gt 15) 0))
 =>
	(modify ?na (safety safe))
)

(defrule next-action-unsafe-0rg
	(declare (salience 9))
	(status (step ?i) (time ?t))
	(not (goal (goal-id ?) (goal-status NA)))
	?na <- (next_action (action ?) (safety NA))
	(reachable_goals 0)
 =>
	(modify ?na (safety unsafe))
)

(defrule next-action-unsafe-forward
	(declare (salience 9))
	(status (step ?i) (time ?t))
	(not (goal (goal-id ?) (goal-status NA)))
	?na <- (next_action (action go-forward) (safety NA))
	(maxduration ?md)
	(not (goal (goal-id ?gid) (goal-time ?gt&:(> (- ?md ?t 10) ?gt)) (goal-status found)))	
 =>
	(modify ?na (safety unsafe))
)

(defrule next-action-unsafe-other
	(declare (salience 9))
	(status (step ?i) (time ?t))
	(not (goal (goal-id ?) (goal-status NA)))
	?na <- (next_action (action go-right|go-left) (safety NA))
	(maxduration ?md)
	(not (goal (goal-id ?gid) (goal-time ?gt&:(> (- ?md ?t 15) ?gt)) (goal-status found)))
 =>
	(modify ?na (safety unsafe))
)

(defrule global-goal-failure
	(declare (salience 9))
	(not (next_action (action ?) (safety safe|NA)))
	?g <- (goal (goal-id ?gid) (goal-status found|failed))
 =>	
	(modify ?g (goal-status NA))
)

;//~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;//~ ;;;;;;;;;;;;;;;;;;; MOVIMENTI 0.6 ;;;;;;;;;;;;;;;;;;;;;;;;;
;//~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;//~ ; faccio un movimento solo se la cella in cui voglio andare
;//~ ; non e' border, hill
;//~ 
;//~ ; mi muovo anche se non l'ho gia' visitata
;//~ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule check-forward
	(declare (salience 1))
	(status (step ?i) (time ?t))
	(kagent (direction ?dir))
	(local_perc (p 2) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-forward)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction ?dir))
		(next_action (action go-forward))
	)
	(focus PLANNER)
)

;//~ attivare le move-... solo dopo aver terminato la fase di checking (da verificare questa affermazione)
(defrule move-forward
	(declare (salience 1))
	(status (step ?i))
	?p1 <- (local_perc (p 1))
	?p2 <- (local_perc (p 2))
	?p3 <- (local_perc (p 3))
	?p4 <- (local_perc (p 4))
	?p5 <- (local_perc (p 5))
	?p6 <- (local_perc (p 6))
	?p7 <- (local_perc (p 7))
	?p8 <- (local_perc (p 8))
	?p9 <- (local_perc (p 9))
	?na <- (next_action (action go-forward) (safety safe))
	(reachable_goals ?rg)
	(test (> ?rg 0))
 =>  
	(retract ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?na)
	(assert (exec (action go-forward) (step ?i)))
	(pop-focus)
)

(defrule check-right-north
	(status (step ?i) (time ?t))
	(kagent (direction north))
	(local_perc (p 6) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-right)))
=>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction east))
		(next_action (action go-right))
	)
	(focus PLANNER)
)

(defrule check-right-south
	(status (step ?i) (time ?t))
	(kagent (direction south))
	(local_perc (p 6) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-right)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction west))
		(next_action (action go-right))
	)
	(focus PLANNER)
)

(defrule check-right-east
	(status (step ?i) (time ?t))
	(kagent (direction east))
	(local_perc (p 6) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-right)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction south))
		(next_action (action go-right))
	)
	(focus PLANNER)
)

(defrule check-right-west
	(status (step ?i) (time ?t))
	(kagent (direction west))
	(local_perc (p 6) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-right)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction north))
		(next_action (action go-right))
	)
	(focus PLANNER)
)

(defrule move-right
	(declare (salience 1))
	(status (step ?i))
	?p1 <- (local_perc (p 1))
	?p2 <- (local_perc (p 2))
	?p3 <- (local_perc (p 3))
	?p4 <- (local_perc (p 4))
	?p5 <- (local_perc (p 5))
	?p6 <- (local_perc (p 6))
	?p7 <- (local_perc (p 7))
	?p8 <- (local_perc (p 8))
	?p9 <- (local_perc (p 9))	
	?na <- (next_action (action go-right) (safety safe))
	(reachable_goals ?rg)
	(test (> ?rg 0))
 =>  
	(retract ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?na)
	(assert (exec (action go-right) (step ?i)))
	(pop-focus)
)

(defrule check-left-north
	(status (step ?i) (time ?t))
	(kagent (direction north))
	(local_perc (p 4) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-left)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction west))
		(next_action (action go-left))
	)
	(focus PLANNER)
)

(defrule check-left-south
	(status (step ?i) (time ?t))
	(kagent (direction south))
	(local_perc (p 4) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-left)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction east))
		(next_action (action go-left))
	)
	(focus PLANNER)
)

(defrule check-left-east
	(status (step ?i) (time ?t))
	(kagent (direction east))
	(local_perc (p 4) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-left)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction north))
		(next_action (action go-left))
	)
	(focus PLANNER)
)

(defrule check-left-west
	(status (step ?i) (time ?t))
	(kagent (direction west))
	(local_perc (p 4) (r ?r) (c ?c))
	(not (kagent_cell (pos-r ?r) (pos-c ?c) (type hill|border)))
;//~ 	(not (kagent_cell (pos-r ?r) (pos-c ?c) (visited true)))
	(kagent_cell (pos-r ?r) (pos-c ?c) (utility ?u&:(> ?u 0)))
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
	(not (next_action (action ?) (safety safe)))
	(not (next_action (action go-left)))
 =>	
	(retract ?fc)
	(assert
		(future_cell (pos-r ?r) (pos-c ?c) (direction south))
		(next_action (action go-left))
	)
	(focus PLANNER)
)

(defrule move-left
	(declare (salience 1))
	(status (step ?i))
	?p1 <- (local_perc (p 1))
	?p2 <- (local_perc (p 2))
	?p3 <- (local_perc (p 3))
	?p4 <- (local_perc (p 4))
	?p5 <- (local_perc (p 5))
	?p6 <- (local_perc (p 6))
	?p7 <- (local_perc (p 7))
	?p8 <- (local_perc (p 8))
	?p9 <- (local_perc (p 9))	
	?na <- (next_action (action go-left) (safety safe))
	(reachable_goals ?rg)
	(test (> ?rg 0))
 => 
	(retract ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?na)
	(assert (exec (action go-left) (step ?i)))
	(pop-focus)
)

(defrule loiter-monitoring
	(declare (salience 5))
	(status (step ?i) (time ?t))
	(local_perc (p 5) (r ?r) (c ?c))
	(kagent_cell (pos-r ?r) (pos-c ?c) (type urban|rural) (percepted water) (monitored no) (informed flood|no))
	(maxduration ?md)
	(reachable_goal (reachable-goal-time ?rgt))
	(test (> (- ?md ?t ?rgt 50) 0))
 =>
	(assert (exec (action loiter-monitoring) (step ?i)))
	(pop-focus)
)

(defrule inform-severe-flood
	(declare (salience 4))
	(status (step ?i) (time ?t))
	(local_perc (r ?r) (c ?c))
	?ka <- (kagent_cell (pos-r ?r) (pos-c ?c) (type urban|rural) (percepted water) (monitored deep-water) (informed flood|no))
	(maxduration ?md)
	(reachable_goal (reachable-goal-time ?rgt))
	(test (> (- ?md ?t ?rgt 1) 0))
 =>
	(assert (exec (action inform) (param1 ?r) (param2 ?c) (param3 severe-flood) (step ?i)))
	(modify ?ka (informed severe-flood))
	(pop-focus)
)

(defrule inform-initial-flood
	(declare (salience 4))
	(status (step ?i) (time ?t))
	(local_perc (r ?r) (c ?c))
	?ka <- (kagent_cell (pos-r ?r) (pos-c ?c) (type urban|rural) (percepted water) (monitored low-water) (informed flood|no))
	(maxduration ?md)
	(reachable_goal (reachable-goal-time ?rgt))
	(test (> (- ?md ?t ?rgt 1) 0))
 =>
	(assert (exec (action inform) (param1 ?r) (param2 ?c) (param3 initial-flood) (step ?i)))
	(modify ?ka (informed initial-flood))
	(pop-focus)
)

(defrule inform-water
	(declare (salience 3))
	(status (step ?i) (time ?t))
	(local_perc (r ?r) (c ?c))
	?ka <- (kagent_cell (pos-r ?r) (pos-c ?c) (type urban|rural) (percepted water) (monitored no) (informed no))
	(maxduration ?md)
	(reachable_goal (reachable-goal-time ?rgt))
	(test (> (- ?md ?t ?rgt 1) 0))
 =>
	(assert (exec (action inform) (param1 ?r) (param2 ?c) (param3 flood) (step ?i)))
	(modify ?ka (informed flood))
	(pop-focus)
)

(defrule inform-ok
	(declare (salience 2))
	(status (step ?i) (time ?t))
	(local_perc (r ?r) (c ?c))
	?ka <- (kagent_cell (pos-r ?r) (pos-c ?c) (type urban|rural) (percepted urban|rural) (monitored no) (informed no))
	(maxduration ?md)
	(reachable_goal (reachable-goal-time ?rgt))
	(test (> (- ?md ?t ?rgt 1) 0))
 =>
	(assert (exec (action inform) (param1 ?r) (param2 ?c) (param3 ok) (step ?i)))
	(modify ?ka (informed ok))
	(pop-focus)
)

(defrule in-gate-done-1
	(declare (salience -99))
	(status (step ?i))
 =>
	(assert (exec (action done) (step ?i)))
)

;//~ (defrule update-kagent-after-done
;//~ 	(declare (salience -100))
;//~ 	(status (step ?i) (time ?t))
;//~ 	?ka <- (kagent (step =(- ?i 1)))
;//~ 	(goal)
;//~  =>	
;//~ 	(modify ?ka (time ?t) (step ?i) (pos-r ?r) (pos-c ?c) (direction west))
;//~ )

(defrule clean-after-done
	(declare (salience -100))
	(exec (action done))
	?gc <- (gate_counter ?)
	?cg <- (current_goal ?)
	?rg <- (reachable_goals ?)
	?fc <- (future_cell (pos-r ?) (pos-c ?) (direction ?))
 =>
	(retract ?gc ?cg ?rg ?fc)
)

(defrule clean-after-done-rg
	(declare (salience -100))
	(exec (action done))
	?rg <- (reachable_goal (reachable-goal-id ?))
 =>
	(retract ?rg)
)

(defrule clean-after-done-g
	(declare (salience -100))
	(exec (action done))
	?g <- (goal (goal-id ?))
 =>
	(retract ?g)
)
