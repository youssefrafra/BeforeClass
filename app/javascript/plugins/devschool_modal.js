const devSchoolModal = () => {

const cardSchool = document.querySelectorAll('.card-school');
const modalSchool = document.getElementById('show-school');

const logo = modalSchool.querySelector(".school-logo")

const name = modalSchool.querySelector(".school-title");
const address = modalSchool.querySelector(".school-address");
const description = modalSchool.querySelector(".school-description");
const duration = modalSchool.querySelector(".school-duration");
const payment = modalSchool.querySelector(".school-payment");
const certifying = modalSchool.querySelector(".school-certifying");
const remote = modalSchool.querySelector(".school-remote");
const price = modalSchool.querySelector(".school-price");
const category = modalSchool.querySelector(".school-category");
const url = modalSchool.querySelector(".school-url");

    

    cardSchool.forEach((school) => {
    school.addEventListener("click", (event) => {
      name.innerText = `${event.currentTarget.dataset.name}`;
      address.innerText = `${event.currentTarget.dataset.address}`;
      description.innerText = `${event.currentTarget.dataset.description}`;
      duration.innerText = `${event.currentTarget.dataset.duration}`;
      payment.innerText = `${event.currentTarget.dataset.payment === "true" ? "Oui" : "Non"}`; 
      certifying.innerText = `${event.currentTarget.dataset.certifying === "true" ? "Oui" : "Non"}`;
      remote.innerText = `${event.currentTarget.dataset.remote === "true" ? "Oui" : "Non"}`;
      price.innerText = `${event.currentTarget.dataset.price}`;
      category.innerText = `${event.currentTarget.dataset.category}`;
      url.innerText = `${event.currentTarget.dataset.url}`;

      logo.src = `${event.currentTarget.dataset.logo}`;



      





      $('#show-school').modal('show');
    });
  })
 }

export { devSchoolModal }