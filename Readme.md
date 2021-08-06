# XML Fundamentals

## XML : Data Interchange

- XML is commonly used `Data Interchange` language, used as `serialization` format for most of the programming languages.
- XML is derived from SGML, HTML was another language derived from SGML.
- XML is Case sensitive and does verify the syntax. (HTML is lenient ! )


## XML Syntax Rules
* Elements have Start-Tag, Body-Contents & End-Tag
  
  ```xml
   <customer>
      Mr Tony Stark
   </customer>
  ```

* The `Start` and `End` Tags must match in `case`.

  ```
  Valid:  <customer>xyz</customer>
  InValid: <customer>xyz</Customer>
  ```  

* A Document Must have EXACT ONE root-element
* Element can be NESTED but cannot be INTERSECTED.

    ```
    Valid:  <order><customer>xyz</customer></order>
    INValid:  <order><customer>xyz</order></customer>
    ```