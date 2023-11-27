<?php require_once "controllerUserData.php"; ?>
<?php 
$email = $_SESSION['email'];
$password = $_SESSION['password'];
if($email != false && $password != false){
    $sql = "SELECT * FROM usertable WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
        $code = $fetch_info['code'];
        if($status == "verified"){
            if($code != 0){
                header('Location: reset-code.php');
            }
        }else{
            header('Location: user-otp.php');
        }
    }
}else{
    header('Location: login-user.php');
}
?>

<?php
// Include your database connection code here
$servername = "localhost"; // Change to your database server name if it's not running locally
$username = "root";         // Your MySQL username
$password = "";             // Your MySQL password (leave it empty if none)
$database = "userform"; // Your database name

// Create a connection to the MySQL database
$db = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

// Retrieve announcements from the database
$sql = "SELECT title, content FROM announcements ORDER BY created_at DESC LIMIT 5"; // You can adjust the query to limit the number of announcements displayed
$result = $db->query($sql);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/main-style.css">
    <link rel="icon" type="image/x-icon" href="assets/website-icon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/card.css">
    <link rel="stylesheet" href="css/foot2.css">
    <script src="script2.js" defer></script>
    <link rel="stylesheet" href="acc.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/feedback.css">

    <title>ALO EDUCATIONAL HUB</title>
  </head>
  <body>
    <nav class="navbar">
        <div class="brand-title">ALO EDUCATIONAL HUB</div>
        <a href="#" class="toggle-button">
          <span class="bar"></span>
          <span class="bar"></span>
          <span class="bar"></span>
        </a>
        <div class="navbar-links">
          <ul>
            <li><a href="home.php">Home</a></li>
            <li><a href="admin/Course.php">Courses</a></li>
            <li><a href="Quizomania/index.php" target="_blank">Online Quiz</a></li>
            <li><a href="index3.php">Study Material</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="contact.html">Conatct Us</a></li>
            <li id="log"><a href="logout-user.php">Logout</a></li>
          </ul>
        </div>
      </nav>  
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://imgs.search.brave.com/slLQSoOU4EXPJuXp_llW5irgGs5UkVMKMV-6hqPWyHY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWdu/ZXcub3V0bG9va2lu/ZGlhLmNvbS91cGxv/YWRpbWFnZS9saWJy/YXJ5LzE2XzkvMTZf/OV81L0lNQUdFXzE2/NzkzODU3NDMud2Vi/cA" class="d-block w-100" alt="..." height="500px">
          </div>
          <div class="carousel-item">
            <img src="https://imgs.search.brave.com/xo168RVy1Zd_CKAW5J0pr5GkobzaIJ7fEGZX6O3hPo0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NDY0MTA1MzEtYmI0/Y2FhNmI0MjRkP2l4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TW54OFpX/UjFZMkYwYVc5dVlX/eDhaVzU4TUh4OE1I/eDhmREE9Jnc9MTAw/MCZxPTgw.jpeg" class="d-block w-100" alt="..." height="500px">
          </div>
          <div class="carousel-item">
            <img src="https://cdn.pixabay.com/photo/2015/09/09/20/33/travel-933171_1280.jpg" class="d-block w-100" alt="..." height="500px">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div> <br><br>

      <!-- Display Announcements Section -->
    <div class="Announcement">
        <?php
        if ($result->num_rows > 0) {
            echo '<h2>Announcements</h2>';
            while ($row = $result->fetch_assoc()) {
                echo '<div class="announcement">';
                echo '<h3>' . $row['title'] . '</h3>';
                echo '<p>' . $row['content'] . '</p>';
                echo '</div>';
            }
        } else {
            echo '<p>No announcements available.</p>';
        }
        ?>
    </div>
      <h2 class="ca">Our Other Services</h2>
      <div class="container1">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="https://imgs.search.brave.com/aSPf2aFJ3p1FFqie8QY6mDDyTmT9J0FI8wQPJX0ywsQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI5/MTk3MTYxOS9waG90/by93ZWItZGV2ZWxv/cG1lbnQtYW5kLXdl/Yi1kZXNpZ24tY29u/Y2VwdC1pbi1kYXJr/LWJsdWUtYmFja2dy/b3VuZC1wcm9ncmFt/bWluZy1mb3ItaW50/ZXJuZXQuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPXNTaWct/cl9RcEYxajZCUHhS/SlMtZW9kcnlMeTZy/UVI3UlVNbXRXNU91/T3c9">
                    <h3>Web Developmet</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>Get a fresh look for your webiste that'all make you the star of the internet. 
                      Let's get your brand noticed with qulaity responsive & beautiful web design for every budge

                </p>
                        <a href="#">Read More</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="https://imgs.search.brave.com/nJV1jHFO5QhzWMsmdnGqXWXiYci19L4NfqSgA8qAF_4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9mbGF0/aXJvbnNjaG9vbC5j/b20vbGVnYWN5LWFz/c2V0cy9pbWFnZXMu/Y3RmYXNzZXRzLm5l/dC9oa3BmMnFkMnZ4/Z3gvMnJxejdHc3cw/eWJINzRLSXNnOUU1/dS82NTg5NmEwZjE4/OTZkNWJiNWU2OGU2/MjU4MzQ0MmMxMi9p/bWFnZTMucG5n">
                    <h3>UI/UX Designers</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>Our UI designers are at the frontend of establishing the guidelines that ensure consistency across a product's interface on multiple platforms.</p>
                        <a href="#">Read More</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="https://imgs.search.brave.com/0A20FvEEnhcMqlQqko45rEHuptFLv7V267n1jo9XpKs/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9maXZl/cnItcmVzLmNsb3Vk/aW5hcnkuY29tL2lt/YWdlL3VwbG9hZC93/XzYwMC9xX2F1dG8s/Zl9hdXRvL3YxL2F0/dGFjaG1lbnRzL2dl/bmVyaWNfYXNzZXQv/YXNzZXQvZTcwYzQ2/ZDQ0ZWM1YjNhMzBj/NWY0YjcyMWY0YmU1/YWMtMTU5OTM5OTky/MzM4MS9jcmVhdGUl/MjBtb2JpbGUlMjBh/cHAtbWluLmpwZw">
                    <h3>Mobile App Development</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>A mobile app is considered successful when there are a great number of downloads, use retention. We give you great conversions and a rich return on investments.</p>
                        <a href="#">Read More</a>
                </div>
            </div>
        </div>
    </div>

    <h1>FAQ</h1>

<div class="accordian">
<div class="accordian-item">
    <div class="accordian-item-header">
      <h4>How to Access Free Study Materials</h4>
    </div>
    <div class="accordian-item-body">
      <div class="accordian-item-body-content">
        <p>
        Finding and accessing free study materials is simple! Here's how:<br>
            <li>Explore our website's navigation bar.</li>
            <li>Look for the "Study Materials" or "Free Resources" section.</li>
            <li>Click on the section to access a variety of study materials.</li>
            <li>Download the materials you need for your studies.</li>
        </p>
      </div>
    </div>
  </div>

  <div class="accordian-item">
    <div class="accordian-item-header">
      <h4>Are there any prerequisites for the courses?</h4>
    </div>
    <div  class="accordian-item-body">
      <div class="accordian-item-body-content">
        <p>
        All of our courses are available to learners without the need for registration or enrollment. 
        There are no specific prerequisites for most of our courses. However, for some advanced courses, 
        there may be prerequisites or recommended prior knowledge, which will be mentioned in the course description.
        </p>
      </div>
    </div>
  </div>

  <div class="accordian-item">
    <div class="accordian-item-header">
      <h4>How do quizzes work?</h4>
    </div>
    <div class="accordian-item-body">
      <div class="accordian-item-body-content">
      <p>
            Quizzes are a valuable assessment tool:<br>
            <li>Access the quizzes on the course page.</li>
            <li>Take the quizzes to test your understanding of the course material.</li>
            <li>Your quiz scores will be recorded, and you can review your performance.</li>
            <li>Quizzes are designed to help reinforce your learning.</li>
          </p>
      </div>
    </div>
  </div>
</div><br><br>
<!-- Floating Chatbot Icon -->
<!-- <div id="chatbot-icon" class="chatbot-icon">
  <a href="chatbot/index.html" id="chatbot-trigger" class="chatbot-trigger">
    <i class="fa fa-comment-o"></i>
  </a>
</div> -->
<div class="form-container">
        <h2>Submit Feedback/Request</h2>
        <form action="submit_feedback.php" method="post">
            <label for="student_name">Student Name:</label>
            <input type="text" name="student_name" required><br>
            <label for="feedback">Feedback/Request:</label>
            <textarea name="feedback" rows="4" cols="50" required></textarea><br>
            <input type="submit" value="Submit">
        </form>
    </div><br><br>    
    <div class="footer">
        <div class="footer-content">
            <p>Upskill for a better future</p>
            <p><b>Request more Information</b></p>
            <ul class="footer-nav">
            <li><a href="home.php">Home</a></li>
            <li><a href="admin/Course.php">Courses</a></li>
            <li><a href="Quizomania/index.php" target="_blank">Online Quiz</a></li>
            <li><a href="index3.php">Study Material</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="contact.html">Conatct Us</a></li>
            </ul>
            <div class="social-links">
                <!-- <a href="#">Facebook</a>
                <a href="#">Twitter</a>
                <a href="#">Instagram</a>
                <ul class="socials"> -->
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="https://www.instagram.com/a_n_a_n_d_h___"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-youtube"></i></a>
                <a href="#"><i class="fa fa-linkedin-square"></i></a>
            </ul>
            </div>
        </div>
        <p>&copy; 2023 Your Company. All rights reserved.</p>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="scriptnav.js"></script>
      
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <?php
// Close the database connection when done (typically at the end of your script)
$db->close();
?>
  </body>
</html>