import './Quotes.css';
import React from 'react';
import axios from 'axios';



function Quotes() {
  const[songs,setSong]= React.useState([]);

  React.useEffect(()=>{
    axios.get("http://localhost:8080/songs").then((response)=>{
     setSong(response.data);
    });
  }, []);
  if (!songs) return null;

  const songName= songs.map((song, index) => {
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
  };
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
                <a href="/recommendations" className="recommendations-bttn">
                  <p className="recommendations">RECOMMENDATIONS</p>
                </a>
                {songs.map((song,index) => {
                  return(
                    <>
                         <a className="link" href={song.songUrl[getRandomInt(18)]}>SEE ON SPOTIFY</a>
                    </>
                  )})}
                  
                
      </main>
    </> 
  );
}

export default Quotes;