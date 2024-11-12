import React from 'react';
import Recipe from './Recipe';

export default function Summary(props) {

    return(
        <div>
            <h1>Selected Recipes</h1>
            <ul>
                {props.selectedRecipes.map(recipe => (
                    <Recipe 
                        key={recipe.id} 
                        recipe={recipe}
                    />
                ))}
            </ul>

            <h3>Ingredients to buy</h3>
            <ul className="agg-ingredient-list">
                {props.ingredientList.map((ingredient, index) => (
                    <li key={index}>
                        {ingredient.ingredient}: {ingredient.quantity} {ingredient.unit}
                    </li>
                ))}
            </ul>
        </div>
        
    );

}