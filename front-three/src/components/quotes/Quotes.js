import './Quotes.css';
import React from 'react';
import axios from 'axios';


function Quotes() {
  const[song,setSong]= React.useState([]);

  React.useEffect(()=>{
    axios.get("http://localhost:8080/songs").then((response)=>{
      setSong(response.data);
    });
  }, []);
  if (!song) return null;

  const songName= song.map((song, index) => {
    return(
      <>
      <div className='thebox'>
        <p className='quotes'>{song.quote}</p>
        <h3 className='h3'>{song.song}</h3>
        <h6 className='h6'>{song.whoWasItAbout}</h6>
      </div>
      </>
    )
  });

 function getRandomInt(max) {
      return Math.floor(Math.random() * max);
}

  return (
    <>
      <main className="central-div">
                <h2>Taylor's Songs</h2>
                <div className="quote-box">
                  <p className='quote-name'>{songName[getRandomInt(18)]}</p>
                </div>
                <a href="/" className="go-back-bttn">
                  <p className="go-back-p">GO BACK</p>
                </a>
                <a href="/quotes" className="recommendations-bttn">
                  <p className="recommendations">RECOMMENDATIONS</p>
                </a>
      </main>
    </> 
  );
}

export default Quotes;