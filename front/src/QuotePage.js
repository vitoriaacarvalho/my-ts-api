import './QuotePage.css';
import api from './api.js';

function QuotePage() {
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
     <h1>oi</h1>
  );
 
}

export default QuotePage;