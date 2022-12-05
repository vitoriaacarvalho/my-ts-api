# my-ts-api
![taylor-and-me (2)](https://user-images.githubusercontent.com/101741597/205757147-d5611fc7-e0fe-4aa5-bb4c-ac7c6c57590e.jpg)


<h1>Backend: </h1>
<h4>Build in Spring</h4>


I have two simple models, they are not connected by any kind of database relationship because I didn't find the need to have them related for THIS specific project.

This is the TaylorsSongs model:
```
@Entity
public class TaylorsSongs implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Column(name="song")
	private String song;
	@Column(name="quote")
	private String quote;
	@Column(name="inspired_by_which_lover", nullable=true)
	private String whoWasItAbout;
	
	@Column(name="taylors_album")
	private TaylorsAlbums album;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="songs_id")
	private Integer songsId;
  
  (I'm not gonna add all the getters and setters but they exist :D)
  
  This is the TaylorsAlbums model:
  @Entity
  public class TaylorsAlbums implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name = "album")
	private String album;

	@Column(name = "song_recommendation")
	private String songRecommendation;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "albums_id")
	private Integer albumsId;
  ```

They are both really simple and only have things I need.


<hr>

<h3> Now let's take a look at my Crud and other methods logic! </h3>
I like to work using two layers for my methods: repository and controller. (there are developers who prefer to use three)
The repositories for this project are very simple so I will not put them in here, they're just two very basic interfaces that extends JpaRepository

So let's go straight to the second layer ---> Controller
This is my SongsController:

```
package com.vitoria.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vitoria.models.TaylorsSongs;
import com.vitoria.repositories.SongsRepository;
import com.vitoria.utils.ShuffleNumbers;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping(value="/songs")
@CrossOrigin(origins = "*")
@Log4j2
public class SongsController {

	@Autowired
	private SongsRepository repo;
	@Autowired
	private ShuffleNumbers shuffle;
	
	@GetMapping
	public List<TaylorsSongs> findAll(){
		return repo.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Optional<TaylorsSongs>> findById(@PathVariable Integer id){
		Optional<TaylorsSongs> song=repo.findById(id);
		return ResponseEntity.ok().body(song);
	}
	
	@PostMapping
	public TaylorsSongs insert(@RequestBody TaylorsSongs song){
		return repo.save(song);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TaylorsSongs> update(@PathVariable Integer id, @RequestBody TaylorsSongs song){
		TaylorsSongs updatedSong=song;
		updatedSong.setSong(song.getSong());
		updatedSong.setQuote(song.getQuote());
		updatedSong.setWhoWasItAbout(song.getWhoWasItAbout());
		updatedSong.setAlbum(song.getAlbum());
		updatedSong=repo.save(updatedSong);
		return ResponseEntity.ok().body(updatedSong);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		repo.deleteById(id);
		return ResponseEntity.noContent().build();
	}
	
	public String getMeAQuote() {
		TaylorsSongs song=repo.findById(shuffle.shuffle()).get();
		return song.getQuote();
	}
	
	@GetMapping(value="/quotes/{id}")
	public ResponseEntity<String> getQuotes() {
		TaylorsSongs song=repo.findById(shuffle.shuffle()).get();
		String quote=song.getQuote();
		return ResponseEntity.ok().body(quote);
	}
}
```
the only thing here that really differs from a simple CRUD method is my method getQuotes()! This is the one i chose to use for my shuffle logic!
But before I can explain it, I have to talk about my ShuffleNumbers class:

```
@Service
@Component
public class ShuffleNumbers {
	
	public Integer shuffle() {
		Integer[] intNumbers= {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17};
		List<Integer> intList=Arrays.asList(intNumbers);
		Collections.shuffle(intList);
		intList.toArray(intNumbers);
		return intNumbers[7];
	}
	
}
```
This class has a method that contains an array of numbers with 18 indexes, the amount of data that I previously added to the database (I chose to use a small 
amount of data for this one)!. I call the method Colletions.shuffle(intList); so that my indexes get different values whenever this line is read by the compiler. 
After that, I return the index [7], it could honestly be any number, but I chose 7 and, whenever my api gets a request the value of the 7th index is gonna be different!
So this creates a shuffle that returns me a different value everytime I refresh it.



Now, let's go back to the <strong>SongsController</strong>:
this method: 
@GetMapping(value="/quotes/{id}")
	public ResponseEntity<String> getQuotes() {
		TaylorsSongs song=repo.findById(shuffle.shuffle()).get();
		String quote=song.getQuote();
		return ResponseEntity.ok().body(quote);
} 

Calls my shuffle method inside the findById, which means, my id is actually gonna be one shuffled number, so the song object that is being created here is aleatory.
String quote receives a quote from the song I created and my request response is gonna be the quote!


<hr>

This is my AlbumsController: 

```
@RestController
@RequestMapping(value="/albums")
@Log4j2
@CrossOrigin(origins = "*")
public class AlbumsController {
	
	@Autowired
	private AlbumsRepository repo;
	@Autowired
	private ShuffleNumbers shuffle;
	
	@GetMapping
	public List<TaylorsAlbums> findAll(){
		return repo.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Optional<TaylorsAlbums>> findById(@PathVariable Integer id){
		Optional<TaylorsAlbums> album=repo.findById(id);
		return ResponseEntity.ok().body(album);
	}
	
	@PostMapping
	public TaylorsAlbums insert(@RequestBody TaylorsAlbums album){
		return repo.save(album);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TaylorsAlbums> update(@PathVariable Integer id, @RequestBody TaylorsAlbums album){
		TaylorsAlbums updatedAlbum=album;
		updatedAlbum.setAlbum(album.getAlbum());
		updatedAlbum.setSongRecommendation(album.getSongRecommendation());
		updatedAlbum=repo.save(updatedAlbum);
		return ResponseEntity.ok().body(updatedAlbum);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		repo.deleteById(id);
		return ResponseEntity.noContent().build();
	}
	
	@GetMapping(value="/recommendations")
	public ResponseEntity<String> getMeARecommendation() {
		TaylorsAlbums album=repo.findById(shuffle.shuffle()).get();
		String song=album.getSongRecommendation();
		return ResponseEntity.ok().body(song);
	}
  ```
  
  it has the exact same logic.
  
  <h4> HOW DID I CONNECT THIS TO THE FRONTEND?</h4>
  using these annotations:
```
@Log4j2
@CrossOrigin(origins = "*")
```

PLUS 
this class: 
```
package com.vitoria.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer{
	@Override
	  public void addCorsMappings(CorsRegistry registry) {
	    registry.addMapping("/**")
	        .allowedMethods("*")
	        .allowedOrigins("*")
	        .allowedHeaders("*")
	        .allowCredentials(false)
	        .maxAge(86400);
	  }
}
```

I really believe these are the most important things about my backend application and the ones that deserve the most some kind of explanation! 


<h1>Frontend</h1>
<h4>Build in React</h4>
Here I'm gonna show the logic behind getting information from the backend!
I used it in two components ---> Quotes.js and Recommend.js

Recommend.js looks like this: 

```
import './Recommend.css';
import React from 'react';
import axios from 'axios';


function Recommend() {
 
  const[song,setSong]= React.useState([]);

  React.useEffect(()=>{
    axios.get("http://localhost:8080/songs").then((response)=>{
      setSong(response.data);
    });
  }, []);
  if (!song) return null;

  const songName= song.map((song, index) => {
    return(
      <>
      <div className="box">
        <a href={song.songUrl} target="_blank" className="spotify-link"><h1 className='h1'>{song.song}</h1></a>
        <h3 className='h3'>{song.album}</h3>
      </div>
      </>
    )
  });

 function getRandomInt(max) {
      return Math.floor(Math.random() * max);
 }

  return (
    <>
      <main className="central-div">
                <h2>Taylor's Songs</h2>
                <div className="song-box">
                  <p className='song-name'>{songName[getRandomInt(18)]}</p>
                </div>
                <a href="/" className="again-a">
                  <p className="again-p">GO BACK</p>
                </a>
                <a href="/quotes" className="quotes-bttn">
                  <p className="quotes">QUOTES</p>
                </a>
                <a href="/recommendations" className="refresh-bttn">
                  <img src="Refresh_icon.png" className="refresh"/>
                </a>
                
      </main>
    </> 
  );
}

export default Recommend;
```
First I created a block-scoped constant that receives an useState.
then I created a method that gets the data from AXIOS using my localhost URL and responds setting the song 
const to the data present inside it.
So our song is set!


After this, I have my const Song name, that maps the song const and returns me each attribute of the choosen object
(all inside some kind of tag that I found applicable for each case).

For my Shuffle logic here I chose to create a getRandomInt() and return a random integer with a very very simple method.


so, now all I have to do is return the object!


inside the return ( 

)
I use this way of thinking ------> get me a Song (that is called songName here) with this index [RANDOM INDEX GENERATED 
BY MY getRandomInt] 
and then I get all of the attributes that come inside this const :D 




Quotes.js looks like this:

```
import './Quotes.css';
import React from 'react';
import axios from 'axios';



function Quotes() {
  const[songs,setSong]= React.useState([]);

  React.useEffect(()=>{
    axios.get("http://localhost:8080/songs").then((response)=>{
     setSong(response.data);
    });
  }, []);
  if (!songs) return null;

  const songName= songs.map((song, index) => {
    return(
      <>
      <div className='thebox'>
        <p className='quotes'>{song.quote}</p>
        <a href={song.songUrl} target="_blank" className="spotifyUrl"><h3 className='h3'>{song.song}</h3></a> 
        <h6 className='h6'>{song.whoWasItAbout}</h6>
      </div>
      </>
    )
  });

  function getRandomInt(max) {
      return Math.floor(Math.random() * max);
  };
  return (
    <>
      <main className="central-div">
                <h2>Taylor's Songs</h2>
                <div className="quote-box">
                  <p className='quote-name'>{songName[getRandomInt(18)]}</p>
                </div>
                <a href="/" className="go-back-bttn">
                  <p className="go-back-p">GO BACK</p>
                </a>
                <a href="/recommendations" className="recommendations-bttn">
                  <p className="recommendations">RECOMMENDATIONS</p>
                </a>
                <a href="/quotes" className="refresh-bttn">
                  <img src="Refresh_icon.png" className="refresh"/>
                </a>
                  
                
      </main>
    </> 
  );
}

export default Quotes;
```
and it has the EXACT same logic!!!!!


This is my explanation of this code! I highlighted only the thing I find truly important for this project and I hope 
it showed all the things it really needed to show! Thank you for being interested in this project <3








