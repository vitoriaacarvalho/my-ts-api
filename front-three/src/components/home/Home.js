import './Home.css';
import Quotes from '../quotes/Quotes.js'
import Recommend from '../recommend/Recommend.js'
import api from '../../Utils/Api';
function Home() {
  return (
     <div className="all-page">    
             <main className="central-div">
                <h2>Taylor's Songs</h2>
                
                <a href="/quotes" className="quote-bttn">
                  <p className="quote">FIND ME A QUOTE</p>
                </a>
                <a href="/recommendations" className="recommend-bttn">
                    <p className="recommend">RECOMMENDATION</p>
                </a>
                <a href="https://open.spotify.com/playlist/32uQNvrNEfmZZ85fpzNoVy?si=69af372ac57a4577&pt=7d73df0e715ba12bb9221eab23262d58" target="_blank" className="playlist-bttn">
                    <p className="playlist">GO TO PLAYLIST</p>
                </a>
             </main>
        </div>
  ); 
  
  
    
}
export default Home;