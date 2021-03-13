import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Objectif from './components/Objectif.jsx';
import Coach from './components/Coach.jsx'
import Join from './components/Join.jsx'

class App extends React.Component {
  constructor(props) {
    super(props);
   this.state={
     Coach:[],
     view:'feed'

   }
  }

  componentDidMount(){
    axios.get('/api/coach')
    .then(response=>{
      this.setState({
        Coach:response.data
      })
    })
  }
  changeView(option) {
    this.setState({
      view: option
    });
      
}
renderView() {
  const {view} = this.state;
   
  if (view === 'feed') {
    return <Objectif />
  } 
  if(view ==='admin'){
    return <Coach data={this.state.Coach} />
  } 
  if(view==='join'){
    return <Join/>
  }
}
 

  render () {
    return (
      <div>
      {console.log('app',this.state.view)}
      {/* {console.log(this.state.blogs)} */}
      <div className="nav">
        <span  className="logo"
            onClick={() => this.changeView('feed')}>
        SAAD CENTER OF FOOTBALL 
        </span>
        <span  className="feed"
            onClick={() => this.changeView('feed')} >
          Our Objectif
        </span>
        <span className='admin'
        onClick={()=> this.changeView('admin')}>
          Coach
        </span>
        <span className='join' 
        onClick={()=>this.changeView('join')}>
          Join Us
        </span>
       
      </div>
      <div className="main">
          {this.renderView()}
        </div>
    </div>
    )
  }
} 
  

ReactDOM.render(<App />, document.getElementById('app'));