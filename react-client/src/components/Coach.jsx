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
      
    <div className="card">
   {this.props.data.map(el=><div className="container">  
         
        <h4><b>Name :{el.FirstName}</b></h4> 
        <p>Age:{el.Age} </p>
        <p>Position :{el.Position} </p> 
      </div>)}
    </div>
    
    </div>
    )
  }
}



export default Coach;