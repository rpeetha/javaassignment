<div class="generic-container">

		<div class="panel panel-default">
	        <div class="panel-heading"><span class="lead">User Feedback Section</span></div>
			<div class="panel-body">
		        <div class="formcontainer">
	
		                <div class="row">
		                    <div class="form-group col-md-40">
		                                <label class="col-md-10 control-lable" for="chkPassport">
								           	<input type="radio" name="Passport" ng-click="EnterFeedback('Y')" /> Do u want to provide feedback here<br>
								            <input type="radio" name="Passport" ng-click="ShowFeedback('Y')" /> Do u want to see feedback comments
								        </label>
		                    </div>
		                </div>
	    	    </div>
			</div>	
	    </div>

	
	<div ng-show="IsEnterFeedbackVisible">
	    <div class="panel panel-default">
	        <!-- Default panel contents -->
	        <div class="panel-heading"><span class="lead">User Feedback</span></div>
			<div class="panel-body">
		        <div class="formcontainer">
		            <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
		            <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
		            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
		                <input type="hidden" ng-model="ctrl.user.id" />
	
		                <div class="row">
		                    <div class="form-group col-md-12">
		                        <label class="col-md-2 control-lable" for="age">Rating</label>
		                        <div class="col-md-7">
		                            <input type="text" ng-model="ctrl.user.age" id="age" class="form-control input-sm" placeholder="Rate yourself on this website (from 1-10)" required ng-pattern="ctrl.onlyIntegers"/>
		                        </div>
		                    </div>
		                </div>
		                
		               	<div class="row">
		                    <div class="form-group col-md-12">
		                        <label class="col-md-2 control-lable" for="uname">Feedback comments</label>
		                        <div class="col-md-7">
		                            <input type="text" ng-model="ctrl.user.name" id="uname" class="username form-control input-sm" placeholder="Enter your comments..." required/>
		                        </div>
		                    </div>
		                </div>
	
		                <div class="row">
		                    <div class="form-actions floatRight">
		                        <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
		                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
		                    </div>
		                </div>
		            </form>
	    	    </div>
			</div>	
	    </div>
    </div>
    
    <div ng-show="IsShowFeedbackVisible">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of User Feedback </span></div>
		<div class="panel-body">
			<div class="table-responsive">
		        <table class="table table-hover">
		            <thead>
		            <tr>
		                <th>Feedback ID</th>
		                <th>Feedback Rating</th>
		                <th>Feedback Comments</th>
		                <th>Feedback status</th>
		                <th width="100"></th>
		                <th width="100"></th>
		            </tr>
		            </thead>
		            <tbody>
		            <tr ng-repeat="u in ctrl.getAllUsers()">
		                <td>{{u.id}}</td>
		                <td>{{u.age}}</td>
		                <td>{{u.name}}</td>
		                <td>Active</td>
		                <td><button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">Edit</button></td>
		                <td><button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">Remove</button></td>
		            </tr>
		            </tbody>
		        </table>		
			</div>
		</div>
    </div>
    </div>
</div>