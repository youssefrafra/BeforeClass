
const init_game = () =>{
    const game1 = document.getElementById("game-1-input");
    const game2 = document.getElementById("game-2-input");
    const game3 = document.getElementById("game-3-input");
    if (game1){
        const correctanswer1 = "Le Wagon brings tech skills to creative people!";
        const correctanswer2 = "learn to code at one of our campuses around the world.";
        const answer1 = document.getElementById("answer1");
        const answer2 = document.getElementById("answer2");
        const submit = document.getElementById("submit");
        submit.addEventListener('click', (e) =>{
            e.preventDefault();
            if(answer1.value == correctanswer1 && answer2.value == correctanswer2){
                alert("Correct");
            }else{
                alert("Incorrect");
            }
        });
    };
    if(game2){
        const correctanswer = "flex-end";
        const answer_game2 = document.getElementById("answer");
        answer_game2.addEventListener('change', () => {
            const pond = document.querySelector('.pond');
            pond.style.justifyContent = answer_game2.value;
        })
        submit.addEventListener('click', (e) =>{
            e.preventDefault();
            if(answer_game2.value == correctanswer){
                alert("Correct");
            }else{
                alert("Incorrect");
            }
        });
    };
    if(game3){
        const correctanswer1 = "row";
        const correctanswer2 = "flex-end";
        const answer1_game3 = document.getElementById("answer1");
        const answer2_game3 = document.getElementById("answer2");
        answer1_game3.addEventListener('change', () => {
            const ball_field = document.querySelector('.ball-field');
            ball_field.style.flexDirection = answer1_game3.value;
        })
        answer2_game3.addEventListener('change', () => {
            const ball_field = document.querySelector('.ball-field');
            ball_field.style.justifyContent = answer2_game3.value;
        })
        submit.addEventListener('click', (e) =>{
            e.preventDefault();
            if(answer1_game3.value == correctanswer1 && answer2_game3.value == correctanswer2){
                alert("Correct");
            }else{
                alert("Incorrect");
            }
        });
    };
}

export {init_game}
