import { fetchWithToken } from "../utils/fetch_with_token";

const answerCounter = () => {
  const btnNo = document.querySelectorAll(".btn-no");
  const btnYes = document.querySelectorAll(".btn-yes");

  let counter = 0;
  
  btnNo.forEach((btn) => {
    btn.addEventListener("click", event => {
      counter--; 
      postData();
      
    });
  })

  btnYes.forEach((btn) => {
    btn.addEventListener("click", event => {
      counter++;
      postData();
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
}

export { answerCounter }