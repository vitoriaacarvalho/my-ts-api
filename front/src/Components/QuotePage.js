import './QuotePage.css';
import api from './/api.js';

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
  return (
     <h1>testing</h1>
  );
 
}

export default QuotePage;