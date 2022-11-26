import './App.css';
import Quotes from './components/quotes/Quotes';
import Recommend from './components/recommend/Recommend';
import Home from './components/home/Home';
import { BrowserRouter as Router, Routes, Route} from 'react-router-dom';
function App() {
  return (
   
    <> 
        <Router>
            <Routes>
            <Route path="/" element={<Home/>}/>
              <Route path="/quotes" element={<Quotes/>}/>
              <Route path="/recommendations" element={<Recommend/>}/>
            </Routes>
        </Router>
    </>
  );
}

export default App;
