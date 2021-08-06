# XML Schema Definition

> Define XML Schema using XSD. Supports all XML Based framework and parsers. Modern alternative to DTD.

## Limitations of DTD

1. DTD is already OUT-DATED, Many application and environments have stopped supporting DTD.
2. DTD has very few (2) data-types
3. Limited set of constraints
4. No User defined types

## XML Schema Definition (XSD) as an Alternate
*   Developed by Microsoft (Its Open Source)
*   An XSD is an XML Document it-self!
*   Built-In Data Types: int, boolean, string, float ... 
*   Allows User defined types with user defined constraints
*   Supports REGEX (Regular expressions )

## Disadvantages
*   Complex structure than DTD
*   Not as easier as DTD


## XSD Structure

- Every XML Schema should have a NAMESPACE defined, NAMESPACE in XML is `URI`
- The Sample for Namespace is "http://mahendra.com/product-orders"
- A Namespace is given an Alias for easy reference. Alias is defined using "xmlns:ALIAS=URI" syntax
- An Alias is also called as "Prefix"
- In ONE document, no more than ONE namespace is allowed to use EMPTY prefix.

    > Exmaple of EMPTY Prefix / Alias

    ```xml
    <schema xmlns="http://www.w3.org/2001/XMLSchema">
        <element name="root-element">
            
        </element>
    </schema>
    ```

    > Example of Prefix "xs"

    ```xml
    <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:element name="root-element">
            
        </xs:element>
    </xs:schema>
    ```

## Demo-1 

1.  Create a new file `schema4.xsd` in VSCode
2.  Inside file, press CTRL+SPACE and then choose "NEW XML SCHEMA" it should generate the contents.
3.  Modify the generated contents to match this one:

    ```xml
    <!-- XSD Files use ".xsd" extension -->
    <!-- Create a file with ".xsd" extension, then use CTR_SPACE to get auto-generation options: "New XML Schema" -->
    <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:element name="price" type="xs:positiveInteger">
        </xs:element>
    </xs:schema>
    ```

4.  Create a new file `data01.xml`
5.  Use `CTRL+SPACE` and select auto-generation option "New XML bound with xsi:noNamespaceSchemaLocation"
6.  Modify the content of the file:

    ```xml
    <price
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:noNamespaceSchemaLocation="schema4.xsd">

        10000
    </price>
    ```

## XSD User defined Types:

1.  SimpleType

    Atomic Types (Useful in attributes and leaf-node elements). Usually inherits another user-defined or built-in SimpleType like string, int or double.

    > Example:
    ```xml
    <xs:simpleType name="amountType">
        <xs:restriction base="xs:double">
            <xs:minInclusive value="100000"/>
            <xs:maxInclusive value="100000000"/>
        </xs:restriction>
    </xs:simpleType>
    ```

2.  ComplexType

    User-defined type which allows child-elements and attributes. Either contains "sequence" of child elements or "group" of child elements. (Group means child elements can be in any order, sequence means fixed order).

    > Example:
    ```xml
    <xs:complexType name="loanType">
        <xs:attribute name="LoanCategory" type="CategoryType" />
        <xs:attribute name="AccountNumber"  type="xs:long" />
        <xs:attribute name="Amount" type="amountType" />
    </xs:complexType>
    ```

## Demo 2 
Use [This XSD](./loan.xsd) and [This XML](./loan.xml) as demo.