function FindRepeatedChars([String] $inputStr) {
    $inputArray = $inputStr.ToCharArray()
    #we use a hash table so we only need to loop through at most once (O(n))
    $foundChars = @{}

    #we use foreach so we can break when we find the first repeated char and avoid unnecessary work
    foreach ($char in $inputArray) {
        if($foundChars.ContainsKey($char)) {
            #Write-Output "$($char) is the first repeated char"
            return $char
        }        
        $foundChars.Add($char, 'found')
    }

    #I'm returning a blank if no matching chars found
    return ''
}

FindRepeatedChars -inputStr abcdedcba