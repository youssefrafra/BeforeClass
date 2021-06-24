const answerCounter = () => {
  const btnNo = document.querySelectorAll(".btn-no");
  const btnYes = document.querySelectorAll(".btn-yes");

  let counter = 0;
  
  btnNo.forEach((btn) => {
    btn.addEventListener("click", event => {
      counter--; 
    });
  })

  btnYes.forEach((btn) => {
    btn.addEventListener("click", event => {
      counter++;
    });
  })
}
export { answerCounter }