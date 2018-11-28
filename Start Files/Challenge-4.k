/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/


import "turns";


/* MAIN FUNCTION */
function GetToOtherSide() {
	getToMtn();
	climbSteps();
	decendSteps();
	climbSteps();
	decendSteps();
}


/* ****** SUB-FUNCTIONS ****** */

/* Get to the Mountain */
function getToMtn() {
	while(frontIsClear()) {
		move();
	}
}


/* Climb Steps */
function climbSteps(){
	while(frontIsBlocked()) {
		turnLeft();
		move();
		turnRight();
		move();
	}
	putBeeper();
}


/* Decend Steps */
function decendSteps() {
	move();
		while(rightIsClear()) {
			turnRight();
			move();
			turnLeft();
				if(frontIsBlocked()) {
					climbSteps();
				}
			move();
		}
}



