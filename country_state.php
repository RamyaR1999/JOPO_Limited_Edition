<?php
if(isset($_POST["country"])){
    // Capture selected country
    $country = $_POST["country"];
     
    // Define country and States array
    $countryArr = array(
                    "usa" => array("Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "Baker Island", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Guam", "Hawaii", "Howland Island", "Idaho", "Illinois","Indiana", "Lowa", "Jarvis Island", "Johnston Atoll", "Kansas", "Kentucky", "Kingman Reef", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Midway Atoll", "Minnesota", "Mississippi", "Missouri", "Montana", "Navassa Island", "Nebraska", "New Yourk", "Los Angeles", "California"),
                    "india" => array("Andhra Pradesh",
                "Arunachal Pradesh",
                "Assam",
                "Bihar",
                "Chhattisgarh",
                "Goa",
                "Gujarat",
                "Haryana",
                "Himachal Pradesh",
                "Jammu and Kashmir",
                "Jharkhand",
                "Karnataka",
                "Kerala",
                "Madhya Pradesh",
                "Maharashtra",
                "Manipur",
                "Meghalaya",
                "Mizoram",
                "Nagaland",
                "Odisha",
                "Punjab",
                "Rajasthan",
                "Sikkim",
                "Tamil Nadu",
                "Telangana",
                "Tripura",
                "Uttarakhand",
                "Uttar Pradesh",
                "West Bengal",
                "Andaman and Nicobar Islands",
                "Chandigarh",
                "Dadra and Nagar Haveli",
                "Daman and Diu",
                "Delhi",
                "Lakshadweep",
                "Puducherry"),
                    "uk" => array("London", "Manchester", "Liverpool"),
                    "Afganistan" => array("Badakhshan", "badghis", "Baghlan", "Balkh", "Herat"),
                    "Albania" => array("Berat", "Fier", "Elbasan"),
                    "Algeria" => array("Alger", "Adrar", "Annaba", "Batna", "Biskra")
                );
     
    // Display city dropdown based on country name
    if($country !== 'Select'){
        
        echo "<label>States:</label>";
        echo "<select name='Location' class='form-control'>";
        foreach($countryArr[$country] as $value){
            echo "<option>". $value . "</option>";
        }
        echo "</select>";
    } 
}
?>