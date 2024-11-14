*** Variables ***

# Elemenos: Credênciais 
${input_login}       //input[@id="user_login" and @name="log"]    
${input_password}    //input[@id="user_pass" and @name="pwd"]    

# Elemenos: Botões
${input_sing_in}     //input[@id="wp-submit" and @name="wp-submit"]    
${a_estudar}         //a[@href="https://qastage.buildbox.one/my-journey" and @class="bg-violet-500 text-white px-6 py-2 flex items-center gap-2.5 rounded font-semibold text-sm my-6"]
${a_logout}          //span[@x-show="!isCollapsed" and text()=" Logout "]
