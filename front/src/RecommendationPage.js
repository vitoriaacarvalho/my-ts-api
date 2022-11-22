import './RecommendationPage.css';
import api from './api.js';

const  recommendations= async () => {
    try{
      const response = await api.get("/recommendations");
      console.log(response);
    }
    catch(err) {
      console.error(err);
    }
  };
  
function RecommendationPage() {
  return (
    <div className="test">
         <h1>oi</h1>
    </div>
    
  );
  
 
}

export default RecommendationPage;