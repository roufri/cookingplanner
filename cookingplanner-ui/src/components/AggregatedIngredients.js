import React, { useState } from 'react';
import axios from 'axios';

export default function AggregatedIngredients(props) {
    const { randomRecipes } = props;
    const [aggregatedIngredients, setAggregatedIngredients] = useState([]);
    const [checkedIngredients, setCheckedIngredients] = useState({});

    const generateIngredientList = async () => {
        const recipeIds = randomRecipes.map(recipe => recipe.id);
        try {
            const response = await axios.get(`http://localhost:8080/api/recipes/ingredients?recipeIds=${recipeIds}`);
            setAggregatedIngredients(response.data);
        } catch (error) {
            console.error("Error fetching aggregated ingredients:", error);
        }
    };

    const toggleCheck = (index) => {
        setCheckedIngredients(prev => ({
            ...prev,
            [index]: !prev[index]
        }));
    };

    return (
        <div>
            <button onClick={generateIngredientList}>Generate Ingredient List</button>
            <h3>Sum of Ingredients</h3>
            <ul className="agg-ingredient-list">
                {aggregatedIngredients.map((ingredient, index) => (
                    <li key={index} className={checkedIngredients[index] ? "checked" : ""}>
                        <label>
                            <input
                                type="checkbox"
                                checked={checkedIngredients[index] || false}
                                onChange={() => toggleCheck(index)}
                            />
                            {ingredient.ingredient}: {ingredient.quantity} {ingredient.unit}
                        </label>
                    </li>
                ))}
            </ul>
        </div>
    );
}
