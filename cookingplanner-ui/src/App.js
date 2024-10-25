import React from 'react';
import RecipeList from './components/RecipeList';
import RandomRecipe from './components/RandomRecipe';

function App() {
    return (
        <div className="App">
            <RecipeList />
            <RandomRecipe />
        </div>
    );
}

export default App;
