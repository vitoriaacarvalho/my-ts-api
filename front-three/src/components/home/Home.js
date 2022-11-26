import './Home.css';
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import Quotes from '../quotes/Quotes.js'
import Recommend from '../recommend/Recommend.js'

function Home() {

  return (
     <div className="all-page"> 
        <Router>
            <Routes>
              <Route path="/quotes" element={<Quotes/>}/>
              <Route path="/recommendations" element={<Recommend/>}/>
            </Routes>
        </Router>
    
             <main className="central-div">
                <h2>Taylor's Songs</h2>
                
                <a href="/quotes" className="quote-bttn">
                  <p className="quote">FIND ME A QUOTE</p>
                </a>
                <a href="/recommendations" className="recommend-bttn">
                    <p className="recommend">GET ME A RECOMMENDATION</p>
                </a>
             </main>
        </div>
  ); 
  
  
    
}
export default Home;