# DTD (Document Type Definition)

- Defines GRAMMER for all SGML based documents. (that includes HTML as well !)
- An older and outdated Schema Definition ( now replaced with XSD)
- Easier syntax (relatively !!)

## DTD Declarations 

* Internal DTD (DTD Can be Embedded inside XML, Not Recommended !)

    ```xml
    <!DOCTYPE orders [
        <!ELEMENT orders (order+) >
        <!ELEMENT order (customer) >
        <!ELEMENT customer (#PCDATA) >
    ]>
    <orders>
        <order>
            <customer>Mahendra Shinde</customer>
        </order>
    </orders>
    ```

* External DTD (Stored in .dtd file, Recommended)

    > schema1.dtd

    ```dtd
    <!-- Defining a ROOT element "orders"
     which MUST contain ONE OR MORE COPIES of ANOTHER ELEMENT "order" -->
    <!ELEMENT orders (order+) >

    <!-- element "order" must contain exactly ONE customer element -->
    <!ELEMENT order ( customer+)>

    <!-- Customer element MUST contain TEXT -->
    <!ELEMENT customer (#PCDATA) >
    ```

    > data2.xml

    ```xml
    <!DOCTYPE orders SYSTEM "schema1.dtd" >
    <orders>
        <order>
            <customer>Mahendra Shinde</customer>
            <customer>Sonali</customer>
        </order>

    </orders>
    ```

* Multipliers for Child Element

-   ?   Optional Child element
-   +   Minimum ONE and Maximum UNLIMITED occurrences
-   *   