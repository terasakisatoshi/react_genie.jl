import axios from "axios";
import React from "react";

class Sample extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            frontend: "",
            backend: "",
        };
    }
    handleClick = () => {
        axios.get(
            "http://localhost:8000/"
        ).then(res => {
            this.setState({
                frontend: res.data.frontend,
                backend: res.data.backend,
            });
        }).catch(err => { console.log(err); });
    }
    render(){
        return (
            <div>
                <button onClick={this.handleClick}>
                    Press this button
                </button>
                <p> frontend  = {this.state.frontend}</p>
                <p> backend = {this.state.backend}</p>
            </div>
        );
    }
}

export default Sample;