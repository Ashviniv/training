def email(to, from, body, *signature)
    return "invalid receipants email address" if(!to.match(/[a-z]+[a-zA-Z0-9.]+@{1}[a-z]+.{1}[a-z]+/))
   return "invalid senders email address" if(!from.match(/[a-z]+[a-zA-Z0-9.]+@{1}[a-z]+.{1}[a-z]+/))  
   return "To : #{to} "+"From : #{from} "+"Body : #{body} "+"#{signature}" if signature != [] 
   return "To : #{to} "+"From : #{from}"+"Body : #{body}"
end
