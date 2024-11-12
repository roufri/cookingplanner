import React from 'react';

export default function Recipe (props) {
    const { recipe, rerollRecipe } = props;
    
    return (
        <div className="recipe-card">
            <div className="recipe-header">
                <h2 className="recipe-title">{recipe.name}</h2>
                {rerollRecipe && (
                    <button className="change-recipe-button" onClick={rerollRecipe}>🔄</button>
                )}
            </div>
            <h3>Ingredients</h3>
            <ul className="ingredients-list">
                {recipe.ingredients.map(ingredient => (
                    <li key={ingredient.id.ingredientId}>
                        {ingredient.quantity} {ingredient.unit} of {ingredient.ingredient.name}
                    </li>
                ))}
            </ul>
            <h3>Instructions</h3>
            <p className="instructions">{recipe.instructions}</p>
        </div>
    );
};

