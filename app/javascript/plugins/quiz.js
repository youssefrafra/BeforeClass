import { fetchWithToken } from "../utils/fetch_with_token";

const answerCounter = () => {
  const btnNo = document.querySelectorAll(".btn-no");
  const btnYes = document.querySelectorAll(".btn-yes");
  const progressBar = document.querySelector(".progress-bar")
  // const modal = document.getElementById("my-modal");
  
  


  let counter = 0;
  let count = 0;
  
  btnNo.forEach((btn) => {
    btn.addEventListener("click", event => {
      count ++;
      progress();
      counter--; 
      postData();
      if(count == 6) {
        $('#myModal').modal('show');
        // modal.style.display = "block";
      }   
    });
  })

  btnYes.forEach((btn) => {
    btn.addEventListener("click", event => {
      count ++;
      progress();
      counter++;
      postData();
      if(count == 6) {
        $('#myModal').modal('show');
        // modal.style.display = "block";
      }
    });
  })

  const postData = () => {
    const question_data = {counter: counter};
  
    fetchWithToken('/save_to_session', {
      method: "POST",
      // redirect: "follow",
      headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
      },
      body: JSON.stringify(question_data)
  })
      // .then(response => response.json())
      .then((data) => {
        // document.location.href = "/questions"
          // console.log(data)
      })
  };

 const progress = () => {
   let width = parseInt(progressBar.style.width, 10);
   width += 20;
   progressBar.style.width = `${width}%`
 };
}

export { answerCounter }