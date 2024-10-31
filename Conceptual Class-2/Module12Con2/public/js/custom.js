// document
//     .getElementById("featuredImage")
//     .addEventListener("change", function () {
//         const reader = new FileReader();
//         reader.addEventListener("load", () => {
//             document.querySelector("#featuredImageDisplay").src = reader.result;
//             featuredImageDisplay.classList.remove("hidden");
//         });
//         reader.readAsDataURL(this.files[0]);
//     });



    // document
    // .querySelector(".confirm-delete")
    
    // .addEventListener("click", function (event) {
    //    alert("Are you sure?");
    // });






    // document
    // .querySelector(".confirm-delete")
    // .addEventListener("click", function (e) {
    //     e.preventDefault();
    //     Swal.fire({
    //         title: "Are you sure?",
    //         text: "You won't be able to revert this!",
    //         icon: "warning",
    //         showCancelButton: true,
    //         confirmButtonColor: "#3085d6",
    //         cancelButtonColor: "#d33",
    //         confirmButtonText: "Yes, delete it!",
    //     }).then((result) => {
    //         if (result.isConfirmed) {
    //             document.getElementById("deletePost").submit();
    //             Swal.fire({
    //                 title: "Deleted!",
    //                 text: "Your Post has been deleted.",
    //                 icon: "success",
    //             });
    //         }
    //     });
    // });


    document.querySelectorAll(".confirm-delete").forEach(button => {
        button.addEventListener("click", function (e) {
            e.preventDefault(); // Prevent the button's default behavior
    
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, delete it!",
            }).then((result) => {
                if (result.isConfirmed) {

                    document.getElementById("deletePost").submit();
                    // Show success message
                    Swal.fire({
                        title: "Deleted!",
                        text: "Your post has been deleted.",
                        icon: "success",
                    }).then(() => {
                        // After the success alert, submit the form
                        button.closest('form').submit();
                    });
                }
            });
        });
    });



    
