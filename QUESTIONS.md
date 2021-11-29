# Interview Questions



## What tenets are the most important to you when considering supply chain security in a CI/CD pipeline?

Keeping dependencies up to date especially with security patches for libraries
Access levels and making sure that access to the most important tools is given to only those that need it but also setting up an audit trail of who signed in and what operation was done (especially with tools that allow edit access to data)
Making sure any internal tools (especially ones that may connect to the CI/CD pipeline) have been pen tested and are not open ended (make sure a username/password, API key is needed for access)





## Describe the common patterns you have seen in adding a ruby application to a CI/CD pipeline. What operations are the most common? Why are these operations present?

The most common patterns/operations I have seen is around linting, unit and/or integration testing, as well as any test environments that should/need to be spun up, like heroku review applications and seeding data for those applications.
A lot of ruby applications use tools like rubocop for linting in order to make sure that the code is up to the quality that is defined by the team.
Testing is a major factor when it comes to a CI/CD platform, some tests are smaller/simpler to run like unit testing because they don't require the coding environment to be loaded since the testing is isolated. It also takes less resources to run these too as oppose to integration testing. Although both of these tests are equally important and run specific tests on different parts of software.
Lastly, being able to spin up a quick test environment is important to test code in a production-like environment. It allows you to catch issues that would otherwise not be found in a development environment because of the way both of these different systems are set up.



## What are the most common ways that software is versioned? What are the benefits and challenges of each approach?

I have mostly used semver as a way of versioning software. Semver allows you to break down versions/changes into three categories: major, minor, patch, which is usually represented like this: 2.1.4

A lot of tools/software use this approach and seems to be the most common, in my humble opinion. The benefits of using this system is because of how widely used it is, it is easily understood by most people. I think it becomes challenging when it is isn't clearly defined (by the team) on what is considered a major, minor, patch update. There have been times where a patch update for a library broke code for me. This is where release notes, however, are important so that the changes are clearly defined.




## Give some examples of configuration management tools. Which tools do you prefer and why?

I have some a little bit of SALT and Ansible in the past. When I used SALT, at the time, it had less structure which means that you had to create your own way of doing things. I think that is fine at first, but having no structure/suggestions for structure makes it hard to implement something especially if you are new to the system. I thought Ansible was a little more opinionated and had a way of doing things. Also Ansible required a lot of its configuration in a yaml file (for the most part) rather than writing a lot of Python scripts to do simple tasks. Although it has been awhile since I have used either of these tools so it is possible that SALT has gotten better overtime.


## What does the term "Infra as Code" mean? How does this term differ from "Configuration Management"?

I believe Infra as Code is a way to really document and manage your infra processes into smaller components. Infra as Code helps with configuration management because configuration changes are documented and  because it is codified, it could be tested so that any changes in configuration could be caught.
