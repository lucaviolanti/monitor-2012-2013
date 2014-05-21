(deffacts init (create)
	(maxduration 10000)
	(initial_agentstatus
		(pos-r 1) (pos-c 3)
		(direction north)
	)
) (deffacts initialmap(prior_cell (pos-r 1) (pos-c 1) (type border)) 
(prior_cell (pos-r 1) (pos-c 2) (type border)) 
(prior_cell (pos-r 1) (pos-c 3) (type gate)) 
(prior_cell (pos-r 1) (pos-c 4) (type border)) 
(prior_cell (pos-r 1) (pos-c 5) (type border)) 
(prior_cell (pos-r 1) (pos-c 6) (type border)) 
(prior_cell (pos-r 1) (pos-c 7) (type border)) 
(prior_cell (pos-r 1) (pos-c 8) (type border)) 
(prior_cell (pos-r 2) (pos-c 1) (type border)) 
(prior_cell (pos-r 2) (pos-c 2) (type rural)) 
(prior_cell (pos-r 2) (pos-c 3) (type rural)) 
(prior_cell (pos-r 2) (pos-c 4) (type lake)) 
(prior_cell (pos-r 2) (pos-c 5) (type lake)) 
(prior_cell (pos-r 2) (pos-c 6) (type rural)) 
(prior_cell (pos-r 2) (pos-c 7) (type rural)) 
(prior_cell (pos-r 2) (pos-c 8) (type border)) 
(prior_cell (pos-r 3) (pos-c 1) (type border)) 
(prior_cell (pos-r 3) (pos-c 2) (type hill)) 
(prior_cell (pos-r 3) (pos-c 3) (type urban)) 
(prior_cell (pos-r 3) (pos-c 4) (type hill)) 
(prior_cell (pos-r 3) (pos-c 5) (type rural)) 
(prior_cell (pos-r 3) (pos-c 6) (type rural)) 
(prior_cell (pos-r 3) (pos-c 7) (type lake)) 
(prior_cell (pos-r 3) (pos-c 8) (type border)) 
(prior_cell (pos-r 4) (pos-c 1) (type border)) 
(prior_cell (pos-r 4) (pos-c 2) (type hill)) 
(prior_cell (pos-r 4) (pos-c 3) (type urban)) 
(prior_cell (pos-r 4) (pos-c 4) (type hill)) 
(prior_cell (pos-r 4) (pos-c 5) (type urban)) 
(prior_cell (pos-r 4) (pos-c 6) (type lake)) 
(prior_cell (pos-r 4) (pos-c 7) (type rural)) 
(prior_cell (pos-r 4) (pos-c 8) (type border)) 
(prior_cell (pos-r 5) (pos-c 1) (type border)) 
(prior_cell (pos-r 5) (pos-c 2) (type lake)) 
(prior_cell (pos-r 5) (pos-c 3) (type hill)) 
(prior_cell (pos-r 5) (pos-c 4) (type urban)) 
(prior_cell (pos-r 5) (pos-c 5) (type rural)) 
(prior_cell (pos-r 5) (pos-c 6) (type lake)) 
(prior_cell (pos-r 5) (pos-c 7) (type rural)) 
(prior_cell (pos-r 5) (pos-c 8) (type gate)) 
(prior_cell (pos-r 6) (pos-c 1) (type border)) 
(prior_cell (pos-r 6) (pos-c 2) (type rural)) 
(prior_cell (pos-r 6) (pos-c 3) (type rural)) 
(prior_cell (pos-r 6) (pos-c 4) (type urban)) 
(prior_cell (pos-r 6) (pos-c 5) (type rural)) 
(prior_cell (pos-r 6) (pos-c 6) (type rural)) 
(prior_cell (pos-r 6) (pos-c 7) (type rural)) 
(prior_cell (pos-r 6) (pos-c 8) (type border)) 
(prior_cell (pos-r 7) (pos-c 1) (type gate)) 
(prior_cell (pos-r 7) (pos-c 2) (type hill)) 
(prior_cell (pos-r 7) (pos-c 3) (type urban)) 
(prior_cell (pos-r 7) (pos-c 4) (type lake)) 
(prior_cell (pos-r 7) (pos-c 5) (type rural)) 
(prior_cell (pos-r 7) (pos-c 6) (type rural)) 
(prior_cell (pos-r 7) (pos-c 7) (type urban)) 
(prior_cell (pos-r 7) (pos-c 8) (type border)) 
(prior_cell (pos-r 8) (pos-c 1) (type border)) 
(prior_cell (pos-r 8) (pos-c 2) (type border)) 
(prior_cell (pos-r 8) (pos-c 3) (type border)) 
(prior_cell (pos-r 8) (pos-c 4) (type border)) 
(prior_cell (pos-r 8) (pos-c 5) (type gate)) 
(prior_cell (pos-r 8) (pos-c 6) (type border)) 
(prior_cell (pos-r 8) (pos-c 7) (type border)) 
(prior_cell (pos-r 8) (pos-c 8) (type border)) 
)