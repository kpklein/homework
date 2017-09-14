$(document).ready(function(){

	var player = 1;

	$('.square').on('click', function(event){

		var squareSelected = $(this);

	if (squareSelected.hasClass('x') || squareSelected.hasClass('o')){

		alert('This square has already been selected! please choose another.');
	}else{

		if (player === 1) {
			squareSelected.addClass('x');
			if(checkIfPlayerWon('x')){
				alert('Conrgats! Player ' + player + 'has won!')
			}else{
				player = 2;
			}

			
		}else {
			squareSelected.addClass('o');
			if(checkIfPlayerWon('o')){
				alert('Conrgats! Player ' + player + 'has won!')
			}else{
				player = 1;
			}
		}
		
	}

	});

	function checkIfPlayerWon(symbol){
		// x
		// o

		if($('.sq1').hasClass(symbol) && $('.sq2').hasClass(symbol) && $('.sq3').hasClass(symbol)) {
			return true;
		} else if ($('.sq4').hasClass(symbol) && $('.sq5').hasClass(symbol) && $('.sq6').hasClass(symbol)){
			return true;
		} else if ($('.sq7').hasClass(symbol) && $('.sq8').hasClass(symbol) && $('.sq9').hasClass(symbol)){
			return true;
		}else if($('.sq1').hasClass(symbol) && $('.sq4').hasClass(symbol) && $('.sq7').hasClass(symbol)) {
			return true;
		} else if ($('.sq2').hasClass(symbol) && $('.sq5').hasClass(symbol) && $('.sq8').hasClass(symbol)){
			return true;
		} else if ($('.sq3').hasClass(symbol) && $('.sq6').hasClass(symbol) && $('.sq9').hasClass(symbol)){
			return true;
		} else if ($('.sq1').hasClass(symbol) && $('.sq5').hasClass(symbol) && $('.sq9').hasClass(symbol)){
			return true;
		} else if ($('.sq3').hasClass(symbol) && $('.sq5').hasClass(symbol) && $('.sq7').hasClass(symbol)){
			return true;
		} else {
			return false;
		}
	}

});






