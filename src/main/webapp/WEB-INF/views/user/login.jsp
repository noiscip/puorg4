<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="section section-signup page-header" style="background-image: url('<%=request.getContextPath()%>/assets/img/city.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-md-4 ml-auto mr-auto">
            <div class="card card-signup">
              <form class="form" method="post" action="">
                <div class="card-header card-header-primary text-center">
                  <h4>Sign Up</h4>
                  <div class="social-line">
                    <a href="#pablo" class="btn btn-link btn-just-icon">
                      <i class="fa fa-facebook-square"></i>
                    </a>
                    <a href="#pablo" class="btn btn-link btn-just-icon">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#pablo" class="btn btn-link btn-just-icon">
                      <i class="fa fa-google-plus"></i>
                    </a>
                  </div>
                </div>
                <p class="text-divider">Or Be Classical</p>
                <div class="card-body">
                  <span class="bmd-form-group"><div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">face</i>
                      </span>
                    </div>
                    <input type="text" class="form-control" placeholder="First Name...">
                  </div></span>
                  <span class="bmd-form-group"><div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">email</i>
                      </span>
                    </div>
                    <input type="email" class="form-control" placeholder="Email...">
                  </div></span>
                  <span class="bmd-form-group"><div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input type="password" class="form-control" placeholder="Password...">
                  </div></span>
                  <!-- If you want to add a checkbox to this form, uncomment this code

                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="">
                        Subscribe to newsletter
                        <span class="form-check-sign">
                            <span class="check"></span>
                        </span>
                    </label>
                </div> -->
                </div>
                <div class="card-footer justify-content-center">
                  <button type="submit" class="btn btn-link btn-primary btn-lg">Get Started</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>