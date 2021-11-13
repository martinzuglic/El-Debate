$(function () {
    $("form[name='unos']").validate({
        rules: {
            naslov: {
                required: true,
                minlength: 5,
                maxlength: 30,

            },
            autor: {
                required: true,
                minlength: 3,
                maxlength: 30,

            },
            datum: {
                required: true,
            },
            slika: {
                required: true,
                extension: "png|jpeg|jpg",
            },
            opis: {
                required: true,
            },
            ime: {
                required: true,
                minlength: 5,
                maxlength: 20,
            },
            lozinka: {
                required: true,
            }
        },
        messages: {
            naslov: {
                required: "Naslov nesmije biti prazan!",
                minlength: "Naslov mora imati minimalno 5 znakova!",
                maxlength: "Naslov mora imati maksimalno 30 znakova!",
            },
            autor: {
                required: "Ime autora ne smije biti prazno.",
                minlength: "Ime autora mora sadržavati minimalno 3 znaka!",
                maxlength: "Ime autora ne smije biti duže od 30 znakova!",
            },
            datum: {
                required: "Potrebno je navesti datum!",
            },
            slika: {
                required: "Potrebno je uploadati sliku!",
            },
            opis: {
                required: "Opis mora biti unesen!"
            },
            ime: {
                required: "Korisničko ime ne smije biti prazno!",
                minlength: "Minimalno 5 znakova!",
                maxlength: "Maksimalno 20 znakova!",
            },
            lozinka: {
                required: "Lozinka ne smije biti prazna!"
            },
        },

        submitHandler: function (form) {
            form.submit();
        }
    });
});