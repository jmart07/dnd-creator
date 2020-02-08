import React, { Component } from 'react';

class CharacterList extends Component {

  componentDidMount() {
    this.getCharacters();
  }

  getCharacters = () => {
    fetch('http://localhost:3000/characters')
      .then(response => response.json())
      .then(json => this.prepareData(json));
  }

  prepareData = (data) => {
    console.log(data)

    const charData = [];
    data.forEach((character) => {
      charData.push(`<h2>${character.name}</h2>`)
    });

    return charData
  }

  render() {
    return(
      <>
        <h1>Characters</h1>

      </>
    );
  }
}

export default CharacterList;
