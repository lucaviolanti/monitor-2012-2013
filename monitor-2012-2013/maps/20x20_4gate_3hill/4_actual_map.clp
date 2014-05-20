(defrule creation1

 (declare (salience 25))

 ?f1 <-   (create-actual-map)

 =>

     (assert (actual_cell (pos-r 1) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 2) (type gate) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 3) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 4) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 5) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 6) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 7) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 8) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 9) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 11) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 12) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 13) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 14) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 15) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 16) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 17) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 18) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 19) (type border) (actual ok)) 
(actual_cell (pos-r 1) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 3) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 4) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 5) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 7) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 8) (type rural) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 9) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 10) (type lake) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 12) (type rural) (actual severe-flood)) 
(actual_cell (pos-r 2) (pos-c 13) (type rural) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 14) (type rural) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 16) (type lake) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 17) (type rural) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 2) (pos-c 19) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 2) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 2) (type rural) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 3) (type rural) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 5) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 7) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 9) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 10) (type urban) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 11) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 13) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 15) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 16) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 3) (pos-c 17) (type urban) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 18) (type lake) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 19) (type hill) (actual ok)) 
(actual_cell (pos-r 3) (pos-c 20) (type gate) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 5) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 4) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 7) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 8) (type rural) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 10) (type lake) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 12) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 4) (pos-c 13) (type rural) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 15) (type rural) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 16) (type lake) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 17) (type urban) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 18) (type lake) (actual ok)) 
(actual_cell (pos-r 4) (pos-c 19) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 4) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 3) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 5) (type rural) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 7) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 5) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 9) (type rural) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 10) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 12) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 13) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 5) (pos-c 14) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 15) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 17) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 5) (pos-c 18) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 19) (type lake) (actual ok)) 
(actual_cell (pos-r 5) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 6) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 6) (pos-c 7) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 6) (pos-c 8) (type rural) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 10) (type rural) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 11) (type lake) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 13) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 15) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 6) (pos-c 16) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 6) (pos-c 17) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 6) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 6) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 5) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 7) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 7) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 8) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 7) (pos-c 9) (type lake) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 10) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 7) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 13) (type rural) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 14) (type rural) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 15) (type rural) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 17) (type rural) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 7) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 3) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 8) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 5) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 7) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 8) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 9) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 8) (pos-c 10) (type urban) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 11) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 8) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 13) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 8) (pos-c 14) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 17) (type rural) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 18) (type lake) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 8) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 3) (type lake) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 4) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 9) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 7) (type rural) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 9) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 9) (pos-c 10) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 9) (pos-c 11) (type lake) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 12) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 9) (pos-c 13) (type rural) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 14) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 9) (pos-c 15) (type lake) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 16) (type lake) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 17) (type urban) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 9) (pos-c 19) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 9) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 3) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 10) (pos-c 4) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 10) (pos-c 5) (type rural) (actual severe-flood)) 
(actual_cell (pos-r 10) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 7) (type lake) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 8) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 10) (pos-c 9) (type rural) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 10) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 10) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 12) (type rural) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 13) (type lake) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 14) (type lake) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 17) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 10) (pos-c 18) (type lake) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 10) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 3) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 11) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 7) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 10) (type rural) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 11) (type rural) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 12) (type rural) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 13) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 11) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 16) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 11) (pos-c 17) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 11) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 11) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 2) (type lake) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 5) (type rural) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 7) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 9) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 12) (pos-c 10) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 11) (type lake) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 12) (type rural) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 13) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 12) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 16) (type rural) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 17) (type lake) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 18) (type lake) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 12) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 2) (type rural) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 3) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 5) (type rural) (actual severe-flood)) 
(actual_cell (pos-r 13) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 7) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 8) (type rural) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 9) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 10) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 13) (pos-c 11) (type rural) (actual severe-flood)) 
(actual_cell (pos-r 13) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 13) (type urban) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 17) (type lake) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 13) (pos-c 19) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 13) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 2) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 14) (pos-c 3) (type lake) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 7) (type lake) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 8) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 14) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 10) (type rural) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 11) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 14) (pos-c 12) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 13) (type lake) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 15) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 14) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 17) (type urban) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 18) (type rural) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 19) (type rural) (actual ok)) 
(actual_cell (pos-r 14) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 2) (type rural) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 3) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 4) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 5) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 15) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 7) (type urban) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 8) (type urban) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 9) (type rural) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 10) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 11) (type rural) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 13) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 14) (type rural) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 15) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 16) (type urban) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 17) (type lake) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 18) (type rural) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 15) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 2) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 3) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 16) (pos-c 4) (type rural) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 7) (type rural) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 8) (type rural) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 10) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 16) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 13) (type rural) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 15) (type lake) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 16) (type lake) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 17) (type rural) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 18) (type rural) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 19) (type urban) (actual ok)) 
(actual_cell (pos-r 16) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 2) (type rural) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 6) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 7) (type rural) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 8) (type urban) (actual severe-flood)) 
(actual_cell (pos-r 17) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 10) (type lake) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 12) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 17) (pos-c 13) (type lake) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 14) (type rural) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 15) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 16) (type lake) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 17) (type rural) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 19) (type lake) (actual ok)) 
(actual_cell (pos-r 17) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 1) (type gate) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 2) (type hill) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 4) (type urban) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 5) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 7) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 18) (pos-c 8) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 9) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 18) (pos-c 10) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 11) (type urban) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 12) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 13) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 14) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 15) (type lake) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 16) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 18) (pos-c 17) (type rural) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 18) (type urban) (actual ok)) 
(actual_cell (pos-r 18) (pos-c 19) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 18) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 2) (type rural) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 3) (type urban) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 4) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 19) (pos-c 5) (type urban) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 6) (type lake) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 7) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 19) (pos-c 8) (type rural) (actual initial-flood)) 
(actual_cell (pos-r 19) (pos-c 9) (type urban) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 10) (type urban) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 11) (type lake) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 12) (type urban) (actual initial-flood)) 
(actual_cell (pos-r 19) (pos-c 13) (type lake) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 14) (type urban) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 15) (type rural) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 16) (type rural) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 17) (type lake) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 18) (type hill) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 19) (type lake) (actual ok)) 
(actual_cell (pos-r 19) (pos-c 20) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 1) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 2) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 3) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 4) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 5) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 6) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 7) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 8) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 9) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 10) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 11) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 12) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 13) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 14) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 15) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 16) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 17) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 18) (type gate) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 19) (type border) (actual ok)) 
(actual_cell (pos-r 20) (pos-c 20) (type border) (actual ok)) 
             )

     (retract ?f1))
