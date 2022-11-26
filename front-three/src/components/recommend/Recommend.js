import './Recommend.css';
import api from '../../Utils/Api';

const  recommendations= async () => {
    try{
      const response = await api.get("/recommendations");
      console.log(response);
    }
    catch(err) {
      console.error(err);
    }
  };

function Recommend() {
  return (
    <>
      <main className="central-div">
                <h2>Taylor's Songs</h2>
                
                
      </main>
    
    
    </>

    
  );
}

export default Recommend;