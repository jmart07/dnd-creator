import React, { Component } from 'react';

class Character extends Component {

  componentDidMount() {
    this.getData();
  }

  getData = () => {
    fetch('http://localhost:3000/characters/1')
      .then(response => response.json())
      .then(json => this.prepareData(json))
      .then(data => this.createCharacter(data));
  }

  prepareData = (data) => {
    const charData = {

    }

    return charData
  }

  createCharacter = (data) => {

  }

  render() {
    return(
      <>
        This is a test
      </>
    );
  }
}

export default Character;
