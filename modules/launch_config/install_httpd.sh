#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
sudo aws s3 cp s3://dev-group17-project/ashmit.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group17-project/ish.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group17-project/tarun.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group17-project/aparna.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group17-project/ipsa.jpeg /var/www/html/

#! html for the display of the final server

echo "
    <!DOCTYPE html>
<html>
  <head>
    <title>Term Project - ACS730 - Group 17 - Ashmit, Ish, Tarun, Aparna, Ipsa</title>
    <h1 align="center">
    
    Our private IP is $myip</h1>
    
    <h1>
    <style>
      body {
        background-color: #E2DCCD;
      }

      .gallery {
        display: grid;
        grid-template-columns: repeat(5, 1fr);
        gap: 20px;
        padding: 20px;
      }

      .picture {
        display: flex;
        flex-direction: column;
        align-items: center;
        border: 5px solid blue;
        padding: 10px;
      }

      .picture img {
        max-width: 100%;
        height: auto;
        margin-bottom: 10px;
      }

      .description {
        text-align: center;
      }

      h3 {
        margin-top: 0;
      }
    </style>
  </head>
  <body>
    <div class="gallery">
      <div class="picture">
        <img src="ish.jpeg" alt="Picture 1">
        <div class="description">
          <h3>Ish Patel</h3>
          <p>Student ID - 152286217.</p>
        </div>
      </div>
      <div class="picture">
        <img src="ashmit.jpeg" alt="Picture 2">
        <div class="description">
          <h3>Ashmit Sharma</h3>
          <p>Student ID - 146820212.</p>
        </div>
      </div>
      <div class="picture">
        <img src="tarun.jpeg" alt="Picture 3">
        <div class="description">
          <h3>Tarun Chhabria</h3>
          <p>Student ID - 143132215.</p>
        </div>
      </div>
      <div class="picture">
        <img src="ipsa.jpeg" alt="Picture 4">
        <div class="description">
          <h3>Ipsa Joshi</h3>
          <p>Student ID - 116267220.</p>
        </div>
      </div>
      <div class="picture">
        <img src="aparna.jpeg" alt="Picture 5">
        <div class="description">
          <h3>Aparna Manoj</h3>
          <p>Student ID - 103148219.</p>
        </div>
      </div>
    </div>
  </body>
</html>
">  /var/www/html/index.html

sudo systemctl start httpd
sudo systemctl enable httpd