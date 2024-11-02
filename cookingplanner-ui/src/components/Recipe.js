import React, { useEffect, useState } from 'react';

export default function Recipe (props) {
    var recipe = props.recipe
    
    return (
        <>
        <li key={recipe.id}>{recipe.title}</li>
        <ul>
            <li>{recipe.ingredients}</li>
            <li>{recipe.instructions}</li>
            <button onClick={props.reroll}>🔄</button>
        </ul>
        </>
    );
};
