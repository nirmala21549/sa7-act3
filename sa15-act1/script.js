document.addEventListener('DOMContentLoaded', function() {
    const recipes = [
      { name: 'Spaghetti Carbonara', ingredients: ['Spaghetti', 'Eggs', 'Bacon', 'Parmesan Cheese'] },
      { name: 'Chicken Curry', ingredients: ['Chicken', 'Curry Powder', 'Coconut Milk', 'Vegetables'] },
      { name: 'Chocolate Cake', ingredients: ['Flour', 'Sugar', 'Cocoa Powder', 'Eggs', 'Butter'] }
      // Add more recipes as needed
    ];
  
    const recipeList = document.getElementById('recipe-list');
    const ingredientList = document.getElementById('ingredient-list');
    const toggleBtn = document.getElementById('toggle-btn');
  
    // Function to populate recipes
    function populateRecipes() {
      recipes.forEach(recipe => {
        const li = document.createElement('li');
        li.textContent = recipe.name;
        recipeList.appendChild(li);
  
        // Add click event listener to each recipe item
        li.addEventListener('click', function() {
          showIngredients(recipe);
        });
      });
    }
  
    // Function to show ingredients for selected recipe
    function showIngredients(recipe) {
      ingredientList.innerHTML = ''; // Clear previous ingredients
  
      recipe.ingredients.forEach(ingredient => {
        const li = document.createElement('li');
        li.textContent = ingredient;
        ingredientList.appendChild(li);
      });
  
      // Toggle visibility of sections
      document.getElementById('recipes').style.display = 'none';
      document.getElementById('ingredients').style.display = 'block';
      toggleBtn.textContent = 'Back to Recipes';
    }
  
    // Function to toggle between recipes and ingredients
    function toggleContent() {
      const recipesSection = document.getElementById('recipes');
      const ingredientsSection = document.getElementById('ingredients');
  
      if (recipesSection.style.display === 'block') {
        recipesSection.style.display = 'none';
        ingredientsSection.style.display = 'block';
        toggleBtn.textContent = 'Back to Recipes';
      } else {
        recipesSection.style.display = 'block';
        ingredientsSection.style.display = 'none';
        toggleBtn.textContent = 'View Ingredients';
      }
    }
  
    // Populate recipes on page load
    populateRecipes();
  
    // Add click event listener to toggle button
    toggleBtn.addEventListener('click', toggleContent);
  });
  