//seating chart declarartion


const container = document.querySelector('.containercinema');
const seats = document.querySelectorAll('.row .seat:not(.occupied');
const count = document.getElementById('count');
const total = document.getElementById('total');
const movieSelect = document.getElementById('movie');


//search & description 
let movieNameRef = document.getElementById("movie-name");
let searchBtn = document.getElementById("search-btn");
let result = document.getElementById("result");


//search & description functions
//Function to fetch data from API
let getMovie = () => {
    let movieName = movieNameRef.value;
    let url = `http://www.omdbapi.com/?t=${movieName}&apikey=${key}`;
    //If input field is empty
    if (movieName.length <= 0) {
      result.innerHTML = `<h3 class="msg">movie not found</h3>`;
    }
    //If input field is NOT empty
    else {
      fetch(url)
        .then((resp) => resp.json())
        .then((data) => {
          //If movie exists in database
          if (data.Response == "True") {
            result.innerHTML = `
              <div class="info">
                  <img src=${data.Poster} class="poster">
                  <div>
                      <h2>${data.Title}</h2>
                      <div class="rating">
                          <img src="img/star-icon.svg">
                          <h4>${data.imdbRating}</h4>
                      </div>
                      <div class="details">
                          <span>${data.Rated}</span>
                          <span>${data.Year}</span>
                          <span>${data.Runtime}</span>
                      </div>
                      <div class="genre">
                          <div>${data.Genre.split(",").join("</div><div>")}</div>
                      </div>
                  </div>
              </div>
              <h3>Plot:</h3>
              <p>${data.Plot}</p>
              <h3>Cast:</h3>
              <p>${data.Actors}</p>
              
          `;
          }
          //If movie does NOT exists in database
          else {
            result.innerHTML = `<h3 class='msg'>${data.Error}</h3>`;
          }
        })
        //If error occurs
        .catch(() => {
          result.innerHTML = `<h3 class="msg">Error </h3>`;
        });
    }
  };
  searchBtn.addEventListener("click", getMovie);
  window.addEventListener("load", getMovie);




//seating chart
populateUI();


let ticketPrice= +movieSelect.value;

function setMovieData(movieIndex,moviePrice){
    localStorage.setItem('selectedMovieIndex',movieIndex);
    localStorage.setItem('selectedMoviePrice',moviePrice);

}

function updateSelectedCount(){
    const selectedSeats = document.querySelectorAll('.row .seat.selected');

    const seatsIndex=[...selectedSeats].map(seat=>[...seats].indexOf(seat));

    localStorage.setItem('selectedSeats',JSON.stringify(seatsIndex));

    const selectedSeatscount = selectedSeats.length;

    count.innerText = selectedSeatscount;
    total.innerText = selectedSeatscount * ticketPrice;

    setMovieData(movieSelect.selectedIndex,movieSelect.value);


}

function populateUI(){
    const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));

    if (selectedSeats !== null && selectedSeats.length>-1){
        seats. forEach((seat,index)=> {
            if (selectedSeats.indexOf(index)>-1){
                seat.classList.add("selected");
            } 
        });
    }
    const selectedMovieIndex = localStorage.getItem('selectedMovieIndex')

    if(selectedMovieIndex !== null){
        movieSelect.selectedIndex = selectedMovieIndex;
    }
}

movieSelect.addEventListener('change',e=>{
    ticketPrice=+e.target.value;
    setMovieData(e.target.selectedIndex,e.target.value);
    updateSelectedCount();
})

container.addEventListener('click',e=>{
    if(
        e.target.classList.contains('seat') && 
        !e.target.classList.contains('occupied')
    ){
        e.target.classList.toggle('selected');

        updateSelectedCount();

    }
});


