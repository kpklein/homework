var playAgain = true;
while(playAgain){
	//loop
	
	playgame();
	var userInput = prompt('would you like to play again? (y/n)');

	if (userInput !== 'y'){
		playAgain = false;
	}
}


playgame()

function playgame () {
	showMenu();


	var play1Choice = getUserInput('player1');
	var play2Choice = getUserInput('player2');

	var winner = getWinner(play1Choice, play2Choice);
	outputToScreen(winner);


}

function showMenu() {
	var outputText = 'Welcome to Rock Paper Scissors! \n';
	outputText += 'This is a two player game, both players must choose either rock, paper or Scissors \n';
	outputText += 'May the odds be ever in your favour!';

	alert(outputText);

}

function getUserInput (playerName){
	var input = prompt(playerName + '\n Please enter (r)rock (p)paper or (s)scissors');
	return input;
}

function getWinner (player1, player2) {
	if (player1 === player2){
		return 'Its a tie!';
	}

	if (player1 === 'r' && player2 === 's' ||
		player1 === 'p' && player2 === 'r' ||
		player1 === 's' && player2 === 'p'){

	return 'player1 Wins!';
	}else {

		return 'player2 Wins!'
	}	


}

function outputToScreen (text){
	alert(text);
}