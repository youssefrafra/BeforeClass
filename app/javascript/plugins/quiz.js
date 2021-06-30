import { fetchWithToken } from "../utils/fetch_with_token";


  const answerCounter = () => {
  const btnNo = document.querySelectorAll(".btn-no");
  const btnYes = document.querySelectorAll(".btn-yes");
  const progressBar = document.querySelector(".progress-bar")
  const cookiesNo = document.querySelector(".no");
  const cookiesYep = document.querySelector(".yep");
  
  
  
  
  
  if(cookiesNo) {
    cookiesNo.addEventListener("click",(event) => {
      postData("/");
    });
  } 
 
  if(cookiesYep) {
    cookiesYep.addEventListener("click",(event) => {
    postData("users/sign_in");
  });
}
  
  


  let counter = 0;
  let questionCount = 0;
  
  
  
  btnNo.forEach((btn) => {
    btn.addEventListener("click", event => {
      questionCount ++;
      progress();
      // counter--; 
      if(questionCount == 6) {
        // $('#myModal').modal('show');
        postData("/users/sign_up");
      }   
    });
  })

  btnYes.forEach((btn) => {
    btn.addEventListener("click", event => {
      questionCount ++;
      progress();
      counter++;
      if(questionCount == 6) {
        // $('#myModal').modal('show');
        postData("/users/sign_up");
      }
    });
  })

  
  
  const postData = (url) => {
    const question_data = {counter: counter};
    fetchWithToken('/save', {
      method: "POST",
      headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
      },
      body: JSON.stringify(question_data)
  })
      .then((data) => {
        document.location.href = url
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