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
    <>
      <main className="central-div">
              <h2>Taylor's Songs</h2>
              <div className="song-box">
                
              </div>
              <a href="/" className="again-a">
                <p className="again-p">TRY AGAIN</p>
              </a>
              <a href="/recommendations" className="recommendations-bttn">
                <p className="recommendation">RECOMMENDATIONS</p>
              </a>

      </main>
    </>
  );
 
}

export default Quotes;