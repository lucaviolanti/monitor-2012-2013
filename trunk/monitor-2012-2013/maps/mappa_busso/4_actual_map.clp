(defrule creation1

 (declare (salience 25))

 ?f1 <-   (create-actual-map)

 =>

     (assert (actual_cell (pos-r 1) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 2) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 3) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 4) (type gate) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 5) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 6) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 7) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 8) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 9) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 2) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 4) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 7) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 8) (type lake) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 9) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 4) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 6) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 7) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 8) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 9) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 7) (type rural) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 8) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 4) (pos-c 9) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 4) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 6) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 5) (pos-c 7) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 5) (pos-c 8) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 9) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 5) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 6) (type hill) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 7) (type hill) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 8) (type hill) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 9) (type lake) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 2) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 7) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 5) (type rural) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 7) (type lake) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 8) (type hill) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 10) (type gate) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 1) (type gate) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 6) (type hill) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 7) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 8) (type hill) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 9) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 6) (type hill) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 7) (type rural) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 8) (type hill) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 9) (type rural) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 6) (type rural) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 7) (type rural) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 8) (type hill) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 4) (type hill) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 5) (type hill) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 6) (type hill) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 7) (type hill) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 8) (type hill) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 4) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 12) (pos-c 5) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 12) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 7) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 12) (pos-c 8) (type lake) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 3) (type rural) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 5) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 13) (pos-c 6) (type hill) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 7) (type hill) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 8) (type rural) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 9) (type hill) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 2) (type hill) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 3) (type hill) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 5) (type rural) (actual severe-flood)) 
(actual_cell (pos-r 14) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 7) (type hill) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 9) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 14) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 2) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 3) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 4) (type gate) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 5) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 6) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 7) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 8) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 9) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 10) (type border) (actual ok)) 
             )

     (retract ?f1))