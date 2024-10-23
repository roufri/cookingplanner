import React, { useEffect, useState } from 'react';
import axios from 'axios';

const RecipeList = () => {
    const [recipes, setRecipes] = useState([]);

    useEffect(() => {
        const fetchRecipes = async () => {
            const response = await axios.get('http://localhost:8080/api/recipes');
            setRecipes(response.data);
        };
        fetchRecipes();
    }, []);

    return (
        <div>
            <h1>Recipes</h1>
            <ul>
                {recipes.map(recipe => (
                    <>
                    <li key={recipe.id}>{recipe.title}</li>
                    <ul><li>{recipe.ingredients}</li><li>{recipe.instructions}</li></ul>
                        
                        </>
                ))}
            </ul>
        </div>
    );
};

export default RecipeList;
