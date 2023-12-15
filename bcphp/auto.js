document.addEventListener("DOMContentLoaded", function() {
    const busStopInput = document.getElementById("busStop");
    const suggestionsContainer = document.getElementById("busStopSuggestions");

    busStopInput.addEventListener("input", function() {
        const userInput = busStopInput.value.trim();

        if (userInput !== "") {
            // Fetch suggestions from the server
            fetch(`get_bus_stops.php?query=${userInput}`)
                .then(response => response.json())
                .then(data => {
                    suggestionsContainer.innerHTML = "";

                    // Display suggestions
                    data.forEach(stop => {
                        const suggestion = document.createElement("div");
                        suggestion.textContent = stop.StopName;
                        suggestion.addEventListener("click", function() {
                            busStopInput.value = stop.StopName;
                            suggestionsContainer.innerHTML = "";
                        });
                        suggestionsContainer.appendChild(suggestion);
                    });
                })
                .catch(error => console.error("Error fetching suggestions:", error));
        } else {
            suggestionsContainer.innerHTML = "";
        }
    });

    // Close suggestions on document click
    document.addEventListener("click", function(event) {
        if (!event.target.matches("#busStopSuggestions div")) {
            suggestionsContainer.innerHTML = "";
        }
    });
});
