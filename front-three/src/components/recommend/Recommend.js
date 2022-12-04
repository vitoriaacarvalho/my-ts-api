import './Recommend.css';
import React from 'react';
import axios from 'axios';


function Recommend() {
 
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
      <div className="box">
        <a href={song.songUrl} target="_blank" className="spotify-link"><h1 className='h1'>{song.song}</h1></a>
        <h3 className='h3'>{song.album}</h3>
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
                <div className="song-box">
                  <p className='song-name'>{songName[getRandomInt(18)]}</p>
                </div>
                <a href="/" className="again-a">
                  <p className="again-p">GO BACK</p>
                </a>
                <a href="/quotes" className="quotes-bttn">
                  <p className="quotes">QUOTES</p>
                </a>
                <a href="/recommendations" className="refresh-bttn">
                  <img src="Refresh_icon.png" className="refresh"/>
                </a>
                
      </main>
    </> 
  );
}

export default Recommend;