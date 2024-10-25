import React, { useEffect, useState } from 'react';
import axios from 'axios';

const RandomRecipe = () => {
    const [randomRecipes, setRecipe] = useState([]);

    const fetchRandomRecipe = async () => {
        const randomRecipes = await axios.get('http://localhost:8080/api/recipes/random', {
            params: {
                count: 7,
            },
        });
        setRecipe(randomRecipes.data);
    };

    useEffect(() => {
        fetchRandomRecipe();
    }, []);

    return (
        <div>
            <h1>Random Recipes:</h1>
            <ul>
                {randomRecipes.map(randomRecipe => (
                    <>
                    <li key={randomRecipe.id}>{randomRecipe.title}</li>
                    <ul><li>{randomRecipe.ingredients}</li><li>{randomRecipe.instructions}</li></ul>
                    </>
                ))}
            </ul>
            <button onClick={fetchRandomRecipe}>New Recipes</button>
        </div>
    );
};

export default RandomRecipe;