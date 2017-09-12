// var scissor ='Scissor';
// var paper ='paper';
// var rock = 'rock';
// var rps = prompt ('Welcome to rock, paper, scissor game') + 'scissor, paper, rock';
// var player1 = prompt ('Player 1 choose either rock, paper or scissor');
// var player2 = prompt ('Player 2 choose either rock, paper or scissor');





var user1 = prompt("Player 1, Choose either rock, paper or scissors");
var user2 = prompt("Player 2, Choose either rock, paper or scissors");


function compare(choice1, choice2){

if(choice1 === choice2){
    alert ("The result is a tie!");
   
}
    if((user1!="rock")&&(user1!="paper")&&(user1!="scissors")){

    user1 = confirm("Player 1: You wrote '"+user1+"', This is not a valid entry!");
    user1 = prompt("Player 1,  Invalid Please enter either: rock, paper or scissors");

    alert (compare(user1, user2));
    
    }

    if((user2!="rock")&&(user2!="paper")&&(user2!="scissors")){

         user2 = confirm("Player 2: You wrote '"+user2+"', This is not a valid entry!");
         user2 = prompt("Player 2, Invalid Please enter either: rock, paper or scissors");

         alert (compare(user1, user2));
         
    }

    else{
         if(choice1==="rock"){
             if(choice2==="scissors"){
                 alert ("Player 1 wins with: Rock.");
             }
             else(choice2==="paper"){
                 alert ("Player 2 wins with: Paper.");
             }
         }
         if(choice1==="paper"){
             if(choice2==="rock"){
                 alert ("Player 1 wins with: Paper.");
             }
             else(choice2==="scissors"){
                 alert ("Player 2 wins with: Scissors.");
             }
         }
         if(choice1==="scissors"){
             if(choice2==="paper"){
                 alert ("Player 1 wins with: Scissors.");
             }
             else(choice2==="rock"){
                 alert ("Player 2 wins with: Rock.");
             }
         }
      }
 }
 alert (compare(user1, user2));