begin                                                                           
UTL_MAIL.send(sender => 'isabelle@xpsql11G.info',                               
recipients => 'dba@xpsql11G.info',                                            
cc => NULL,                                                                     
bcc => NULL,                                                                    
subject => 'Envoi de mel par utl_mail',                                         
message => 'Test envoi par utl_mail depuis la base Oracle PROD11G');             
end;                                                                            
/                 