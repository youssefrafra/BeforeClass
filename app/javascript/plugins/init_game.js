// import Swal from 'sweetalert2';
const Swal = require('sweetalert2');

const init_game = () =>{
    const game1 = document.getElementById("game-1-input");
    const game2 = document.getElementById("game-2-input");
    const game3 = document.getElementById("game-3-input");
    function reload(){
        let score = document.getElementById("reload");
        $('#reload').load(document.URL +  ' #reload');	
        // console.log("Refreshed"); 
    }
    if (game1){
        const correctanswer1 = "Le Wagon brings tech skills to creative people!";
        const correctanswer2 = "learn to code at one of our campuses around the world.";
        const answer1 = document.getElementById("answer1");
        const answer2 = document.getElementById("answer2");
        const view1 = document.getElementById("view1");
        const view2 = document.getElementById("view2");
        const submit = document.getElementById("submit");
        answer1.addEventListener('change', (e) => {
            view1.innerText = e.currentTarget.value
        })
        answer2.addEventListener('change', (e) => {
            view2.innerText = e.currentTarget.value
        })
        submit.addEventListener('click', (e) =>{
            e.preventDefault();
            if(answer1.value == correctanswer1 && answer2.value == correctanswer2){
                const complete = document.getElementById("complete");
                const next = document.getElementById("next");
                const champion = document.getElementById("champion");
                setTimeout(() => (reload()),1000) 
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'C\' est correct !',
                    showConfirmButton: false,
                    timer: 800
                  })
                champion.style.visibility = "visible";
                complete.click();
                next.hidden = false;
            }else{
                Swal.fire({
                    title: 'Wrong!',
                    text: 'Oops! Mauvaise réponse!',
                    icon: 'error',
                    confirmButtonText: 'Try again'
                  })
            }
        });
    };
    if(game2){
        const correctanswer = "flex-end";
        const answer_game2 = document.getElementById("answer");
        const frog = document.getElementById('frog');
        answer_game2.addEventListener('change', () => {
            const pond = document.querySelector('.pond');
            pond.style.justifyContent = answer_game2.value;
        })
        submit.addEventListener('click', (e) =>{
            e.preventDefault();
            if(answer_game2.value == correctanswer){
                const complete = document.getElementById("complete");
                const next = document.getElementById("next");
                const champion = document.getElementById("champion");
                setTimeout(() => (reload()),1000) 
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'C\' est correct !',
                    showConfirmButton: false,
                    timer: 800
                  })
                frog.style.animation = "none";
                champion.style.visibility = "visible";
                complete.click();
                next.hidden = false;
            }else{
                Swal.fire({
                    title: 'Wrong!',
                    text: 'Oops! Mauvaise réponse!',
                    icon: 'error',
                    confirmButtonText: 'Try again'
                  })
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
                const complete = document.getElementById("complete");
                const next = document.getElementById("next");
                const champion = document.getElementById("champion");
                const ball = document.getElementById("ball");
                setTimeout(() => (reload()),1000) 
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'C\' est correct !',
                    showConfirmButton: false,
                    timer: 800
                  })
                ball.style.animation = "none";
                champion.style.visibility = "visible";
                complete.click();
                next.hidden = false;
            }else{
                Swal.fire({
                    title: 'Wrong!',
                    text: 'Oops! Mauvaise réponse!',
                    icon: 'error',
                    confirmButtonText: 'Try again'
                  })
            }
        });
    };
}

export {init_game}
