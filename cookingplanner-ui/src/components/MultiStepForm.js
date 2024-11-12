import React, { useState } from 'react';
import NumberOfRecipesSelector from './NumberOfRecipesSelector.js';
import RecipeList from './RecipeList.js';
import IngredientsGenerator from './IngredientsGenerator.js';


export default function MultiStepForm() {
    const [currentStep, setCurrentStep] = useState(1);
    const [numberOfRecipes, setNumberOfRecipes] = useState(1);
    const [selectedRecipes, setSelectedRecipes] = useState([]);
    const [ingredientList, setIngredientList] = useState([]);

    const nextStep = () => setCurrentStep((prev) => prev + 1);
    const prevStep = () => setCurrentStep((prev) => prev - 1);

    return (
        <div>
            {currentStep === 1 && <NumberOfRecipesSelector setNumberOfRecipes={setNumberOfRecipes} nextStep={nextStep} />}
            {currentStep === 2 && <RecipeList numberOfRecipes={numberOfRecipes} setSelectedRecipes={setSelectedRecipes} nextStep={nextStep} />}
            {currentStep === 3 && <IngredientsGenerator selectedRecipes={selectedRecipes} setIngredientList={setIngredientList} nextStep={nextStep} />}
            {currentStep > 1 && <button onClick={prevStep}>Back</button>}
            {currentStep < 4 && <button onClick={nextStep}>Next</button>}
        </div>
    );
}