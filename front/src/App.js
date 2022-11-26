import './App.css';
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import QuotePage from './/Components/QuotePage.js'
import RecommendationPage from './/Components/RecommendationPage.js'

function App() {

  return (
     <div className="all-page"> 
     <Router>
        <Routes>
            <Route path="/quotes" element={<QuotePage/>}/>
            <Route path="/recommendations" element={<RecommendationPage/>}/>
        </Routes>
      
    </Router>
      
      
        </div>
  );
  
    
}
export default App;
