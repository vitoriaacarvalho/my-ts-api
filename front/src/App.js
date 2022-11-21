import './App.css';
import axios from "axios";
import {useEffect, useState} from 'react'
import api from './api.js';

function App() {
  const songs = async () => {
    try{
      const response = await api.get("/songs");
      console.log(response);
    }
    catch(err) {
      console.error(err);
    }
  };
  const  recommendations= async () => {
    try{
      const response = await api.get("/albums");
      console.log(response);
    }
    catch(err) {
      console.error(err);
    }
  };
  return (
     <div className="all-page">
             <main className="central-div">
                <h2>Taylor's Songs</h2>
                <button type="submit" className="quote-bttn" onClick={songs}>
                    FIND ME A QUOTE
                </button>
                <button type="submit" className="recommend-bttn" onClick={recommendations}>
                    GET ME A RECOMMENDATION
                </button>
             </main>
        </div>
  );
 
}

export default App;
