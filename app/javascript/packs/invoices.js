document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll(".budget_select").forEach((select) => {
      select.addEventListener("change", (event) => {
        const selectedBudgetId = event.target.value;
        const categorySelect = event.target.closest("li").querySelector(".category_select");
        const subcategorySelect = event.target.closest("li").querySelector(".subcategory_select");
  
        Array.from(categorySelect.options).forEach((option) => {
          if (
            selectedBudgetId === "" ||
            option.dataset.budgetId === undefined ||
            parseInt(option.dataset.budgetId) === parseInt(selectedBudgetId)
          ) {
            option.style.display = "";
          } else {
            option.style.display = "none";
          }
        });
  
        // Reset category and subcategory selections
        categorySelect.value = "";
        subcategorySelect.value = "";
      });
    });
  
    document.querySelectorAll(".category_select").forEach((select) => {
      select.addEventListener("change", (event) => {
        const selectedCategoryId = event.target.value;
        const subcategorySelect = event.target.closest("li").querySelector(".subcategory_select");
  
        Array.from(subcategorySelect.options).forEach((option) => {
          if (
            selectedCategoryId === "" ||
            option.dataset.categoryId === undefined ||
            parseInt(option.dataset.categoryId) === parseInt(selectedCategoryId)
          ) {
            option.style.display = "";
          } else {
            option.style.display = "none";
          }
        });
  
        // Reset subcategory selection
        subcategorySelect.value = "";
      });
    });
  });
  