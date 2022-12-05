# Project Requirements
## Editable Database
Note: The minimum required data to display on the map view is the Student Name, Company Name, and Company Location (Address). All other data is preferrable, but not required. Internships that do not meet the minimum requirements for the map can be seen in the List View.
### Headers
#### Admin
* Student Name
* Student Contact Info (email & phone number): Make this information requestable for interested students 

#### User
* Company Name
* Company Contact Info (email, phone number, address): email and phone number can be optional, but preferrable if possible
* Date of Internship (startQuarter, startYear - endQuarter, endYear): This is used for data relevancy and filtering using the quarter system
* Engineering Concentration 
* Paid/Unpaid
* (Calculated) Internship Location (longitude & latitude calculated using the company's address)

### Functionality
#### Admin
* Ability to add new data fields
* Form to add new internees to database without interacting directly with the database 

## Web App
### Map (plot location data points) or List View
#### Admin
* See admin header data on selected map datapoints 

#### User
* See user header data on selected map datapoints
* Move the map around
* Zoom in/out
* "Return to the Default View" button (US)
* Color coded datapoints: To indicate the number of internships a specific company/location has given internships to WWU Engineers  
* Showing # Internships out of # Filtered (for use when map moved or zoomed)

### Filters
#### Admin
* Filter/search option for admin data 

#### User
* Filter option for each of the user data fields
* Date range filter: If an internship has taken place at all during a single quarter in the filtered range, it shows up on the map
<img src = "https://community.powerbi.com/t5/image/serverpage/image-id/607317i87F4CCD4AAC6CBEC/image-size/medium?v=v2&px=400"> 

## Other
* What happens if a person has multiple internships at the same company and location?
* What is the screen size we are designing this for?
* Mobile screens can be a stretch goal
* Make a web app mock up
