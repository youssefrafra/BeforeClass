const initDraggable = () => {
    // console.log("hello");
    const draggableItems = document.querySelectorAll('.draggable-item');
    const draggableZones = document.querySelectorAll('.draggable-zone');

    if(document.getElementById('game-4-input')){

        for(const item of draggableItems){
            item.addEventListener('dragstart',dragStart);
            item.addEventListener('dragend',dragEnd);
        }
        for(const zone of draggableZones){
            zone.addEventListener('dragover',dragOver);
            zone.addEventListener('dragenter',dragEnter);
            zone.addEventListener('dragleave',dragLeave);
            zone.addEventListener('drop',dragDrop);
        }
        function dragStart(e){
            this.className += ' grabbed';
            e.dataTransfer.setData("text/plain", this.id);
            // console.log(this.id)
            setTimeout(() => (this.className = 'invisible'), 0);   
        };
    
        function dragEnd(){
            this.className = 'draggable-item'
        };
    
        function dragOver(e){
            e.preventDefault();
        };
    
        function dragEnter(e){
            e.preventDefault();
            this.className += " hovered";
        };
        
        function dragLeave(){
            this.className = "draggable-zone"
        };
    
        function dragDrop(e){
            this.className = "draggable-zone"
            const elementId = e.dataTransfer.getData("text/plain");
            // console.log(this.hasChildNodes());
            const draggedElement = document.getElementById(elementId);
            if(this.hasChildNodes()){
                const answerZone = document.getElementById("answer-zone");
                answerZone.append(this.firstChild);
                // this.firstChild
            }
            this.append(draggedElement)
            // this.parentElement.firstElementChild.style.width = "fit-content"
            
            // console.log(this.firstElementChild.innerHTML)
            const answer = document.querySelector(".container.answer")
            setTimeout(() => (answer.innerHTML = getHtml()), 0); 
            
        };
        // const game = document.getElementById()
        function getHtml(){
            const codeLines = document.querySelectorAll('.line-answer')
            let html = '';
            for(let line of codeLines){
                // let test = [...line.getElementsByTagName('div')].filter(item => item.className != "draggable-zone").map(el => el.innerHTML)
                html += [...line.getElementsByTagName('div')].filter(item => item.className != "draggable-zone").map(el => el.innerText).join('');
                
                // .join(''));
            }
            return html
        }
        const submitButton = document.getElementById('submit');
        submitButton.addEventListener('click', (event) => {
            event.preventDefault();
            const inputZone= document.getElementById('game-4-input');
            const answersDivs = inputZone.querySelectorAll(".draggable-item");
            const ids = [...answersDivs].map( div => div.id)
            const answer = ["1","2","3","4","5"]
            if (JSON.stringify(ids) == JSON.stringify(answer)){
                const complete = document.getElementById("complete");
                const next = document.getElementById("next");
                const champion = document.getElementById("champion");
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'C\' est correct !',
                    showConfirmButton: false,
                    timer: 800
                  })
                champion.style.zIndex = 1000;
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
        })
    }
}


export {initDraggable}