import React, { useEffect, useState } from 'react';
import axios from 'axios';
import Recipe from "./Recipe";

export default function RecipeList(props) {
    
    const [recipes, setRecipes] = useState([]);
    const [randomRecipes, setRandomRecipes] = useState([]);

    useEffect(() => {
        const fetchAllRecipes = async () => {
            const response = await axios.get('http://localhost:8080/api/recipes');
            setRecipes(response.data);
            setRandomRecipes(response.data.slice(0, props.numberOfRecipes));
        };
        fetchAllRecipes();
    }, []);

    const rerollRecipe = (id) => {
        const currentRecipeIndex = randomRecipes.findIndex(recipe => recipe.id === id);
        const remainingRecipes = recipes.filter(recipe => 
            recipe.id !== id && !randomRecipes.some(r => r.id === recipe.id) // Exclude current and already displayed recipes
        );
    
        if (remainingRecipes.length > 0) {
            const randomRecipe = remainingRecipes[Math.floor(Math.random() * remainingRecipes.length)];
            setRandomRecipes(prev => {
                const updatedRecipes = [...prev];
                updatedRecipes[currentRecipeIndex] = randomRecipe;
                return updatedRecipes;
            });
        }
    };

    const confirmRecipes = ()  => {
        props.setSelectedRecipes(randomRecipes);
        props.nextStep();
    }

    return (
        <>
            <div>
                <h1>Random Recipes</h1>
                
                <ul>
                    {randomRecipes.map(recipe => (
                        <Recipe 
                            key={recipe.id} 
                            recipe={recipe}
                            rerollRecipe={() => rerollRecipe(recipe.id)}
                        />
                    ))}
                </ul>
                <button onClick={confirmRecipes}>Confirm Recipe Selection</button>
            </div>
        </>
    );
};
