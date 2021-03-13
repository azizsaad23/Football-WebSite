import React from 'react';
import axios from 'axios';

class Join extends React.Component {
    constructor(props){
        super(props)
        this.state ={

        }
        this.onInputchange=this.onInputchange.bind(this);
        this.onSubmitForm=this.onSubmitForm.bind(this)
    }
    onInputchange(event) {
        this.setState({
          [event.target.name]: event.target.value
          
        });
      
      }
    onSubmitForm(event) {   
      axios.post('/api/player', this.state)
      .then(function (response){
        console.log(response)
      })
      event.preventDefault()
      }
    render(){
        return (
            <form>

            <div>
                      <label>
                         Name :
                        <input
                          name="Name"
                          type="text"
                          value={this.state.Name}
                          onChange={this.onInputchange}
                        />
                      </label>
                    </div>
                    <div>
                        <label>
                            Age : 
                            <input 
                            name="age"
                            type = "number"
                            value={this.state.age}
                            onChange={this.onInputchange} 
                            />
                        </label>
                    </div>
                    <div>
                      <label>
                        Categorie-id :
                        <input
                          name="categorie_id"
                          type= 'number'
                          value={this.state.categorie_id}
                          onChange={this.onInputchange}
                        />
                      </label>
                    </div>
             <div>
             <button onClick={this.onSubmitForm}>Register</button>
             </div>
            
            </form>
        )
    }
}

export default Join