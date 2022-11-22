import './App.css';
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import QuotePage from './QuotePage.js'
import RecommendationPage from './RecommendationPage.js'

function App() {

  return (
     <div className="all-page"> 
     <Router>
        <Routes>
            <Route path="/quotes" element={<QuotePage/>}/>
            <Route path="/recommendations" element={<RecommendationPage/>}/>
        </Routes>
      
    </Router>
             <main className="central-div">
                <h2>Taylor's Songs</h2>
                
                <a href="/quotes" className="quote-bttn">
                  FIND ME A QUOTE
                </a>
                <a href="/recommendations" className="recommend-bttn">
                    GET ME A RECOMMENDATION
                </a>
             </main>
        </div>
  );
  
    
}
export default App;
