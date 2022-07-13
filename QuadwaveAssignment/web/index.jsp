<%-- 
    Document   : index
    Created on : Jul 13, 2022, 3:44:14 PM
    Author     : Ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Quadwave Assignment</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1"
             role="dialog" aria-labelledby="exampleModalCenterTitle"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Add Employee</h5>
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="row mb-4">
                            <div class="col col_left">
                                <h6>EMPLOYEE ID</h6>	
                            </div>
                            <div class="col col_right">
                                <select class="form-control" id="eid">
                                    <option value="">Select</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>	
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col col_left">
                                <h6>Employee Name</h6>
                            </div>
                            <div class="col col_right">
                                <input type="text" readonly class="form-control" id="name">	
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col col_left">
                                <h6>Year of Experience</h6>
                            </div>
                            <div class="col col_right">
                                <input type="number" class="form-control" id="yoe">	
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col col_left">
                                <h6>Designation</h6>
                            </div>
                            <div class="col col_right">
                                <input type="text" class="form-control"  id="desg">	
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary save_btn">Save</button>
                        <button type="button" class="btn btn-secondary"
                                data-dismiss="modal">Cancel</button>					
                    </div>
                </div>
            </div>
        </div>	

        <h1 class="ml-2 mr-2">Employee Details</h1>
        <div class="content text-center ml-2 mr-2">		
            <div class="row ml-2 mr-2" >
                <div class="col">
                    <input type="text" placeholder="Search By Name" id="search">
                </div>
                <div class="col">
                    <input type="button" value="Add" data-toggle="modal" data-target="#exampleModalCenter" id="add">
                </div>
            </div>
            <div class="row ml-2 mr-2 mt-5">
                <table class="table" id="tab">
                    <thead>
                        <tr>
                            <th scope="col">Eid</th>
                            <th scope="col">EName</th>
                            <th scope="col">DOJ</th>
                            <th scope="col">YOE</th>
                            <th scope="col">Designation</th>
                        </tr>
                    </thead>
                    <tbody id="tbody">
                    </tbody>
                </table>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
</html>
