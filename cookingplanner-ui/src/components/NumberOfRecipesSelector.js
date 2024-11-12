import React from 'react';

export default function NumberOfRecipesSelector(props) {

    return(
        <div className="recipe-count-buttons">
            {[1, 2, 3, 4, 5, 6, 7].map(count => (
                <button 
                    key={count} 
                    onClick={() => props.setNumberOfRecipes(count)}
                >
                    {count}
                </button>
            ))}
        </div>
    );

}