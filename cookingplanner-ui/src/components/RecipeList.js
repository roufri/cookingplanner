import React, { useEffect, useState } from 'react';
import axios from 'axios';
import Recipe from "./Recipe";
import AggregatedIngredients from "./AggregatedIngredients";

export default function RecipeList() {
    const [recipes, setRecipes] = useState([]);
    const [randomRecipes, setRandomRecipes] = useState([]);
    const [selectedRecipeCount, setSelectedRecipeCount] = useState(0);

    useEffect(() => {
        const fetchAllRecipes = async () => {
            const response = await axios.get('http://localhost:8080/api/recipes');
            setRecipes(response.data);
            setRandomRecipes(response.data.slice(0, selectedRecipeCount));
        };
        fetchAllRecipes();
    }, [selectedRecipeCount]); // Re-run effect when selectedRecipeCount changes

    const reroll = (id) => {
        const currentRecipeIndex = randomRecipes.findIndex(recipe => recipe.id === id);
        const remainingRecipes = recipes.filter(recipe => 
            recipe.id !== id && !randomRecipes.some(r => r.id === recipe.id) // Exclude current and already displayed recipes
        );
    
        if (remainingRecipes.length > 0) {
            const randomRecipe = remainingRecipes[Math.floor(Math.random() * remainingRecipes.length)];
            setRandomRecipes(prev => {
                const updatedRecipes = [...prev];
                updatedRecipes[currentRecipeIndex] = randomRecipe; // Replace the current recipe
                return updatedRecipes;
            });
        }
    };

    const handleRecipeCountChange = (count) => {
        setSelectedRecipeCount(count);
        setRandomRecipes(recipes.slice(0, count)); // Update displayed recipes to match new count
    };

    return (
        <>
            <div>
                <h1>Random Recipes</h1>
                <div className="recipe-count-buttons">
                    {[1, 2, 3, 4, 5, 6, 7].map(count => (
                        <button 
                            key={count} 
                            onClick={() => handleRecipeCountChange(count)}
                            className={count === selectedRecipeCount ? "active" : ""}
                        >
                            {count}
                        </button>
                    ))}
                </div>
                <ul>
                    {randomRecipes.map(recipe => (
                        <Recipe 
                            key={recipe.id} 
                            recipe={recipe}
                            reroll={() => reroll(recipe.id)}
                        />
                    ))}
                </ul>
            </div>
            {randomRecipes.length > 0 && (
                <div className="aggregated-ingredients">
                    <AggregatedIngredients randomRecipes={randomRecipes} />
                </div>
            )}
        </>
    );
};
