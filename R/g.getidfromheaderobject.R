g.getidfromheaderobject = function(filename,header,dformat,mon) {
  if (dformat == 1) {
    if (mon == 1) { #reading the binary file
      id = as.character(header[which(header[,1] == "Volunteer_Number"),2])
    } else if (mon == 2) { #reading the binary file
      id = as.character(header[which(header[,1] == "Subject_Code"),2])
    }
  } else if (dformat == 2) {
    if (mon == 2) {
      id = as.character(header[which(as.character(header[,1]) == "Subject Code"),2])
    } else if (mon == 3) {
      id = filename #id not stored in fileheader, but filename instead
    }
  } else if (dformat == 3) {
    id = filename # for now use filename as identifier
  }
}