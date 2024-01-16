import React from "react";

class MovieListComponent extends React.Component {
    render () {
        return (
            <div class="container">
                <h2>Movie List</h2>
                <div class="flex-container">
                    <div class="card">
                        <img src="https://m.media-amazon.com/images/M/MV5BMTcxNDI2NDAzNl5BMl5BanBnXkFtZTgwODM3MTc2MjE@._V1_.jpg" alt=""/>
                        <li>The Hunger Games: Mockingjay</li>
                    </div>
                    <div class="card">
                        <img src="https://m.media-amazon.com/images/M/MV5BMzY2OTU0NTgtMGZiZC00M2Y5LThjZjQtOTcyNWNlZDdhMjZkXkEyXkFqcGdeQXVyMTE1MTYxNDAw._V1_.jpg" alt=""/>
                        <li>Forgotten</li>
                    </div>
                    <div class="card">
                        <img src="https://m.media-amazon.com/images/M/MV5BMjI1NDYzNzY2Ml5BMl5BanBnXkFtZTgwODQwODczNTM@._V1_.jpg" alt=""/>
                        <li>The Greatest Showman</li>
                    </div>
                </div>
            </div>
        );
    }
}

export default MovieListComponent;