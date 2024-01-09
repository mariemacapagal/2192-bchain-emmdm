// Name: Ed Marie May Macapagal

import React from 'react'
import './App.css'
import ParentComponent from './components/ParentComponent'
import Hello from './components/hello'
import Welcome from './components/Welcome'

function App() {
  return (
    <div>
      <Hello/>
      <Welcome/>
      <h1>React Props Example</h1>
      <ParentComponent/>
    </div>
  )
}

export default App
