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
                <div className="song-box">
                  
                </div>
                <a href="/" className="again-a">
                  <p className="again-p">TRY AGAIN</p>
                </a>
                <a href="/quotes" className="quotes-bttn">
                  <p className="quotes">QUOTES</p>
                </a>

      </main>
    </>

    
  );
}

export default Recommend;