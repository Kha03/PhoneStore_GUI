document.querySelectorAll(".addToCartForm").forEach(form => {
    form.addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent the default form submission

        const toastLiveExample = document.getElementById('liveToast');
        const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample);

        const formData = new FormData(this);

        fetch(`${contextPath}/products/addToCart`, {
            method: 'POST',
            body: formData
        })
            .then(response => {
                if (response.ok) {
                    toastBootstrap.show(); // Show the toast notification
                } else {
                    throw new Error('Error adding to cart');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
    });
});
