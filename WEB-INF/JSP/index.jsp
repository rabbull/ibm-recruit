<%@ page language="java" contentType="text/HTML; charset=UTF-8"
         pageEncoding="UTF-8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<HTML>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>

        <link href="styles.css" rel="stylesheet" type="text/css"/>

        <script>
            var interest_list = ["development", "office", "publicity"];
            function binarize() {
                var length = interest_list.length;
                var result = 0;
                for (i = 0; i < length; i ++) {
                    if (document.getElementById(interest_list[i]).checked) {
                        result += Math.pow(2, i);
                    }
                }
                document.getElementById("interests").value = result;
            }

            function trySubmit() {
                console.log("fuck");
                let form = document.forms["reg"];
                binarize();
                console.log(document.getElementById("interests").value);
                if (form['interests'].value == "0") {
                    alert("please select at least one interest");
                    return false;
                } else {
                    form.submit();
                }
            }
        </script>
    </head>


    <body>
        <form action="" method="post" name="reg">
            <h1>Sign Up</h1>
            <fieldset>
                <legend><span class="number">1</span>Your basic info</legend>
                
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="password">Student ID:</label>
                <input type="text" id="password" name="student_id" required>
                
                <label for="password">College:</label>
                <input type="text" id="college" name="college" required>
                
                <label for="password">Profession:</label>
                <input type="text" id="profession" name="profession" required>
            </fieldset>
            
            <fieldset>
                <legend><span class="number">2</span>Contact information</legend>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="tel">Tel:</label>
                <input type="text" id="tel" name="tel" required>
            </fieldset>
        
            <fieldset>
                <legend><span class="number">3</span>Your profile</legend>
                <label for="bio">Brief Personal Statement:</label>
                <textarea id="bio" name="user_bio" placeholder="No more than 400 charactors (i.e. no more than 200 Chinese charactors)." required></textarea>
                <label>Interests:</label>
                <input type="checkbox" id="development" name="development"><label class="light" for="development">Development</label><br>
                <input type="checkbox" id="office" name="office"><label class="light" for="design">Office</label><br>
                <input type="checkbox" id="publicity" name="publicity"><label class="light" for="business">Publicity</label>
                <input type="hidden" id="interests" name="interests">
            </fieldset>
            
            <button type="button" onclick="return trySubmit();">Submit</button>
        </form>
        
    </body>
</HTML>