import React, { useEffect, useState } from 'react';
import axios from 'axios';
import Recipe from "./Recipe";

export default function RecipeList() {
    const [recipes, setRecipes] = useState([]);
    const [randomRecipes, setRandomRecipes] = useState([]);
    const [aggregatedIngredients, setAggregatedIngredients] = useState([]);

    useEffect(() => {
        const fetchAllRecipes = async () => {
            const response = await axios.get('http://localhost:8080/api/recipes');
            setRecipes(response.data);
            setRandomRecipes(response.data.slice(0, 5)); // 5 random recipes
        };
        fetchAllRecipes();
    }, []);
    
    const reroll = (id) => {
        const currentRecipeIndex = randomRecipes.findIndex(recipe => recipe.id === id);
        const remainingRecipes = recipes.filter(recipe => 
            recipe.id !== id && !randomRecipes.some(r => r.id === recipe.id) // Exclude current and already displayed recipes
        );
    
        // Get a random recipe from the remaining recipes
        if (remainingRecipes.length > 0) {
            const randomRecipe = remainingRecipes[Math.floor(Math.random() * remainingRecipes.length)];
            setRandomRecipes(prev => {
                const updatedRecipes = [...prev];
                updatedRecipes[currentRecipeIndex] = randomRecipe; // Replace the current recipe
                return updatedRecipes;
            });
        }
    };

    const generateIngredientList = async () => {
        // Extracting the IDs of selected recipes
        const recipeIds = randomRecipes.map(recipe => recipe.id);
        try {
            const response = await axios.get(`http://localhost:8080/api/recipes/ingredients?recipeIds=${recipeIds}`);
            setAggregatedIngredients(response.data);
            console.log(aggregatedIngredients);
        } catch (error) {
            console.error("Error fetching aggregated ingredients:", error);
        }
    };

    return (
        <>
            <div>
                <h1>Random Recipes</h1>
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
            <div class="aggregated-ingredients">
                <button onClick={generateIngredientList}>Generate Ingredient List</button>
                <h3>Sum of Ingredients</h3>
                <ul>
                    {aggregatedIngredients.map((ingredient, index) => (
                        <li key={index}>
                            {ingredient.ingredient}: {ingredient.quantity} {ingredient.unit}
                        </li>
                    ))}
                </ul>
            </div>
        </>
    );
};
