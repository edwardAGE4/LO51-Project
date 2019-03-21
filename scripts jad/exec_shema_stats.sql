begin                                                                           
UTL_MAIL.send(sender => 'isabelle@xpsql.info.fr',                               
recipients => 'sql@xpsql.info.fr',                                            
cc => NULL,                                                                     
bcc => NULL,                                                                    
subject => 'Envoi de mel par utl_mail',                                         
message => 'Test envoi par utl_mail depuis la base Oracle PROD11');             
end;                                                                            
/                                                                               
