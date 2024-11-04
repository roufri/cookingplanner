import React from 'react';

export default function Recipe (props) {
    var recipe = props.recipe
    
    return (
        <div class="recipe-card">
            <div class="recipe-header">
                <h2 class="recipe-title">{recipe.title}</h2>
                <button class="change-recipe-button" onClick={props.reroll}>🔄</button>
            </div>
            <h3>Ingredients</h3>
            <ul class="ingredients-list">
                <li>{recipe.ingredients}</li>
            </ul>
            <h3>Instructions</h3>
            <p class="instructions">{recipe.instructions}</p>
        </div>

    );
};
