import React from 'react';



class Coach extends React.Component {
  constructor(props){
    super(props)
  }

  render(){
    var name = this.props.data.map(el=>el.FirstName)
    var age = this.props.data.map(el =>el.Age)
    var position = this.props.data.map(el=>el.Position)
    return (
    <div>
      {console.log(this.props)}
    <div className="card">
      <div className="container">
           
        <h4><b>Name :{name[0]}</b></h4> 
        <p>Age: {age[0]} </p>
        <p>Position : {position[0]} </p> 
      </div>
    </div>
    <div className="card">
      <div className="container">
           
        <h4><b>Name :{name[1]}</b></h4> 
        <p>Age: {age[1]} </p>
        <p>Position : {position[1]} </p> 
      </div>
    </div>
    <div className="card">
      <div className="container">
           
        <h4><b>Name :{name[2]}</b></h4> 
        <p>Age: {age[2]} </p>
        <p>Position : {position[2]} </p> 
      </div>
    </div>
    <div className="card">
      <div className="container">
           
        <h4><b>Name :{name[3]}</b></h4> 
        <p>Age: {age[3]} </p>
        <p>Position : {position[3]} </p> 
      </div>
    </div>
    <div className="card">
      <div className="container">
           
        <h4><b>Name :{name[4]}</b></h4> 
        <p>Age: {age[4]} </p>
        <p>Position : {position[4]} </p> 
      </div>
    </div>
    
    </div>
    )
  }
}



export default Coach;