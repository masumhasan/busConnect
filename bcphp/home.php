<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
        />
        <link
            href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
            rel="stylesheet"
        />
        <title>Home | BusConnect</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            html,
            body,
            .intro {
                height: 100%;
            }
            .navabar {
                position: fixed;
            }
            .mask-custom {
                background: rgba(24, 24, 16, 0.2);
                border-radius: 2em;
                backdrop-filter: blur(15px);
                border: 2px solid rgba(255, 255, 255, 0.05);
                background-clip: padding-box;
                box-shadow: 10px 10px 10px rgba(46, 54, 68, 0.03);
            }
        </style>
    </head>
    <body>
        <section class="intro">
            <div class="container navabar">
            <nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark border-bottom border-body" data-bs-theme="dark" >
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="#">BusConnect</a>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="home.php">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.php">Buses</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="busstops.php">Manage Bus Stop</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="faretable.php">Manage Fare</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="stopmap.php">Stop Map</a>
              </li>
            
            </ul>
           
          </div>
        </div>
      </nav>
            </div>
            <div
                class="bg-image h-100"
                style="
                    background-image: url(bg.jpg);
                    background-size: cover; /* This ensures the image covers the entire container */
                    background-position: center; /* Centers the image within the container */
                    background-repeat: no-repeat; /* Prevents the image from repeating */
                    /* Additional styles, if needed */
                    margin: 0;
                    padding: 0;
                    height: 100vh;
                "
            >
                <div
                    class="mask d-flex align-items-center h-100"
                    style="background-color: rgba(61, 162, 195, 0.1)"
                >


                    <div class="container">

                      <form method="post" action="search_results.php">
                        <div class="card mask-custom p-4">
                            <div class="card-body">
                                <p class="h1 font-weight-bold mb-4 text-white">
                                    Search Dhaka City Local Bus Details
                                </p>
                                <div class="row justify-content-center">
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <div
                                            id="basic"
                                            class="form-outline form-white"
                                        >
                                            <input
                                                type="text"
                                                id="form1"
                                               for="sourceStopID"
                                               name="destinationStopID"
                                                placeholder="sourceStopID"
                                            />
                                            <label
                                                class="form-label"
                                                for="sourceStopID"
                                            ></label>
                                        </div>
                                    </div>
                                    <div class="col-md-4 mb-3 mb-md-0">
                                        <div
                                            id="location"
                                            class="form-outline form-white"
                                        >
                                            <input
                                                type="text"
                                                id="form2"
                                                name="destinationStopID"
                                                class="form-control form-control-lg"
                                                placeholder="destinationStopID"
                                            />
                                            <label
                                                class="form-label"
                                                for="destinationStopID"
                                            ></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <input
                                            class="btn btn-info btn-block btn-lg"
                                            href="index.html"
                                            type="submit"
                                            value="Search"
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

       
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
