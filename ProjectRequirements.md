# Project Requirements
## Editable Database
### Headers
#### Admin
* Student Name
* Student Contact Info (email & phone number): Make this information requestable for interested students 

#### User (Required Info)
* Internship Location (longitude & latitude calculated using the company's address): This will not be an enterable field, but a calculated one
* Company Name
* Company Contact Info (email, phone number, address): email and phone number can be optional, but preferrable if possible
* Date of Internship (startMonth, startYear - endMonth, endYear): This is used for data relevancy and filtering
* Engineering Concentration 

### Functionality
#### Admin
* Ability to add new data fields
* Form to add new internees to database without interacting directly with the database 

## Web App
### Map (plot location data points)
#### Admin
* See admin header data on selected map datapoints 

#### User
* See user header data on selected map datapoints
* Move the map around
* Zoom in/out
* "Return to the Default View" button (US)
* Color coded datapoints: To indicate the number of internships a specific company/location has given internships to WWU Engineers 

### Filters
#### Admin
* Filter/search option for admin data 

#### User
* Filter option for each of the user data fields
* Year/range of years filter: If an internship has taken place even for a single month during the filtered range, it shows up on the map
![YearFilterBarExample](https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommunity.powerbi.com%2Ft5%2FCustom-Visuals-Development%2FHow-to-have-date-slider-with-just-only-Months-and-year%2Ftd-p%2F2118290&psig=AOvVaw1TKiJUHDNRqLsDvJNVbIRq&ust=1666069337685000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCPC3mY6-5voCFQAAAAAdAAAAABAJ) 

## Other
* What happens if a person has multiple internships at the same company and location?
* What is the screen size we are designing this for?
* Mobile screens can be a stretch goal
* Make a web app mock up