// Ed Marie May Macapagal

import TodoListComponent from './components/TodoList'
import MovieListComponent from './components/MovieList'
import BookListComponent from './components/BookList'
import './App.css'

function App() {

  return (
    <>
      <div>
        <TodoListComponent/>
        <MovieListComponent/>

        <div className="container">
          <h2>Book List</h2>
          <div className="flex-container">
            <div className="card">
              <img src="https://m.media-amazon.com/images/I/71WSzS6zvCL._AC_UF1000,1000_QL80_.jpg" alt=""/>
              <BookListComponent faveBook = "The Hunger Games"/>
            </div>
            <div className="card">
              <img src="https://upload.wikimedia.org/wikipedia/en/f/f4/Divergent_%28book%29_by_Veronica_Roth_US_Hardcover_2011.jpg" alt=""/>
              <BookListComponent faveBook = "Divergent"/>
            </div>
            <div className="card">
              <img src="https://cdn.kobo.com/book-images/904099bb-7feb-423b-a281-3309d1fafe19/1200/1200/False/everything-everything-1.jpg" alt="" />
              <BookListComponent faveBook = "Everything, Everything"/>
            </div>
          </div>
        </div>

        <p className="name">Ed Marie May Macapagal - WD-401</p>
      </div>
    </>
  )
}

export default App
