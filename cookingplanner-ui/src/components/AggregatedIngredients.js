import React, { useState } from 'react';
import axios from 'axios';

export default function Recipe (props) {
    const { randomRecipes } = props;
    const [aggregatedIngredients, setAggregatedIngredients] = useState([]);
    
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
        <div>
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
    );
};
