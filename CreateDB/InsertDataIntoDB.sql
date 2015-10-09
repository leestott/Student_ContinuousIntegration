# Insert the questions into the devopsquiz table 

INSERT INTO devopsquiz (id, question, answer, description) 
VALUES ('1', 'Devops is the same as Agile?', 'TRUE', 'DevOps extends Agility (Shift-Left principle): Ops concerns integrate Development + Support is provided by developers (developers are on call) + automation of the whole machinery (Build, Test, Integration, Delivery and Deployment), which is summarized by the automation of the Deployment Pipeline.'),
('2', 'Do my test, dev and production environments need to be similar?', 'TRUE', 'In order to ensure an app progresses correctly through the development Life Cycle, the different environments need to be similar in order to effectively predict the app's behaviour at every stage.'),
('3', 'Is DevOps just for SysAdmins?', 'FALSE', 'DevOps covers the whole Life Cycle from Build, Test, Integration, Delivery, Deployment, Monitor & Improve, Ad infinitum'),
('4', 'Is cough a devops tool?' , 'FALSE', 'A cough is a sudden and often repetitively occurring reflex which helps to clear the large breathing passages from secretions, irritants, foreign particles and microbes.'),
('5', 'Is Automating your environment creation the same as Infrastructure as Code?', 'FALSE', 'This would only be the same if you maintained strict Version Control over the Automation Scripts - essentially treat it exactly the same as your app versioning.'),
('6', 'Is Availability Monitoring part of devops?', 'TRUE', 'This is an intrinsic part of DevOps - particularly if you want your app to be always-on.'),
('7', 'Can you do devops alone?', 'TRUE', 'Yes but you may go blind.'),
('8', 'Is there any point in doing testing?', 'TRUE', 'Rigorous Testing is an essential part of app development. Black Box Testing, White Box Testing, Unit Testing, Incremental Integration Testing, Functional Testing, System Testing, End-to-End Testing, Sanity Testing, Regression Testing, Acceptance Testing, Load Testing, Stress Testing and Performance Testing are all examples of the different types of Testing types available.')
('9', 'Will your app always work the first time?', 'FALSE', 'It may - but this is highly unlikely or your app is not very ambitious or complex.'),
('10', 'Devops is a fad?', 'FALSE', 'DevOps is an emerging trend that promises to increase the flow of value to customers.')

# insert any pictures to show on the website (not currently implemented) 
#INSERT into devopsimages (id, image)
#VALUES (...)