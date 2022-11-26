import './Quotes.css';
import api from '../../Utils/Api';

function Quotes() {
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
    <div className="socorro">
       <h1>testing</h1>
    </div>
    
  );
 
}

export default Quotes;