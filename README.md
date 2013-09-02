# Appium Bootstrap

This is a collection of scripts to automate testing process with appium. 
It includes scripts to build app, mock api server and run alltogether


Getting started
===============

### build-app

replace PATH_TO_PROJECT with path to you project

  ex: /Users/mishyn/workspace/rw/project-ios/Project.xcworkspace

and PROJECT_SCHEME with scheme

  ex: Project

### spec_helper

PROJECT in absolute_app_path

### add api mock

api_server.rb

### write tests


Run
===

be foreman start
#= runs appium and api_mock
./build
be rspec recommended_spec.rb


TODO:

create bootstrap script to generate this structure
