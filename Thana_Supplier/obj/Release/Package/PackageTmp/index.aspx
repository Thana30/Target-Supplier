<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Thana_Supplier.index" %>

<!DOCTYPE html >


<html xmlns="http://www.w3.org/1999/xhtml" class="supernova">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta property="og:title" content="Supplier Registration Form" />
<meta property="og:url" content="https://form.jotform.me/91447878362470" />

<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico"/>
<meta name="HandheldFriendly" content="true" />


<title>Supplier Registration Form</title>
<link href="Css\form.css" rel="stylesheet" type="text/css" />

<link type="text/css" rel="stylesheet" href="Css\Form Style th.css" />
<link type="text/css" rel="stylesheet" href="Css\Form2.css"/>
<link type="text/css" rel="stylesheet" href="Css\Grid.css"/>

<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:#fff;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:690px;
        color:#555 !important;
        font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: false;
    }

</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
.form-label.form-label-auto {
        
        display: inline-block;
        float: left;
        text-align: left;
      
      }/*PREFERENCES STYLE*/
    .form-all {
      font-family: Lucida Grande, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Lucida Grande, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Lucida Grande, sans-serif;
    }
    .form-header-group {
      font-family: Lucida Grande, sans-serif;
    }
    .form-label {
      font-family: Lucida Grande, sans-serif;
    }
  
    
  
    .form-line {
      margin-top: 12px 36px 12px 36px ;
      margin-bottom: 12px 36px 12px 36px ;
    }
  
    .form-all {
      width: 690px;
    }
  
    .form-label-left,
    .form-label-right,
    .form-label-left.form-label-auto,
    .form-label-right.form-label-auto {
      width: 150px;
    }
  
    .form-all {
      font-size: 14px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 14px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 14px
    }
  
    .supernova .form-all, .form-all {
      background-color: #fff;
      border: 1px solid transparent;
    }
  
    .form-all {
      color: #555;
    }
    .form-header-group .form-header {
      color: #555;
    }
    .form-header-group .form-subHeader {
      color: #555;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #555;
    }
    .form-sub-label {
      color: #6f6f6f;
    }
  
    .supernova {
      background-color: undefined;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: undefined;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
    .form-all {
      position: relative;
    }
    .form-all:before {
      content: "";
      background-image: url("Logo11.png");
      display: inline-block;
      height: 140px;
      position: absolute;
      background-size: 750px 140px;
      background-repeat: no-repeat;
      width: 100%;
    }
    .form-all {
      margin-top: 210px !important;
      margin-bottom: 100px
    }
    .form-all:before {
      top: -150px;
      left: 0;
      background-position: top right;
    }
           
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

    <script type="text/javascript">
        JotForm.setConditions([{ "action": { "field": "13", "visibility": "Show" }, "link": "Any", "terms": [{ "field": "11", "operator": "equals", "value": "Others, please specify below." }], "type": "field" }]);
        JotForm.init(function () {
            /*INIT-END*/
        });

        JotForm.prepareCalculationsOnTheFly([null, null, null, null, null, { "name": "email", "qid": "5", "text": "E-mail address:", "type": "control_email" }, { "name": "businessName", "qid": "6", "text": "Supplier Name", "type": "control_textbox" }, null, { "name": "message", "qid": "8", "subLabel": "Please mention any keywords that could help the buyers reach you. Like brand names you deal with, agent of particular brands, products in your scope.. etc.", "text": "Keywords: ", "type": "control_textarea" }, null, { "name": "clickTo", "qid": "10", "text": "KFSH&RC Suppliers Registration Form ", "type": "control_head" }, null, null, null, { "description": "", "name": "businessName14", "qid": "14", "subLabel": "Registration number in KFSHRC (if available). *Enabling you edit your record later.", "text": "Supplier Number :", "type": "control_textbox" }, { "description": "", "name": "supplierName", "qid": "15", "subLabel": "", "text": "Representative Name: ", "type": "control_textbox" }, { "description": "", "name": "representativeName", "qid": "16", "subLabel": " Representative mobile#", "text": "Contact Number:", "type": "control_textbox" }, null, { "description": "", "name": "typeA18", "qid": "18", "text": "Specialized in:", "type": "control_checkbox" }, null, { "name": "toView", "qid": "20", "text": "To view Your Record: ", "type": "control_head" }, { "description": "", "name": "Supplier21", "qid": "21", "subLabel": "For accurate results please type the exact name . If not find , please search in between two percentage. Like : %Example% ", "text": " Supplier Name:", "type": "control_textbox" }, { "name": "submit", "qid": "22", "text": "Save", "type": "control_button" }, { "name": "submit23", "qid": "23", "text": "Search", "type": "control_button" }]);
        setTimeout(function () {
            JotForm.paymentExtrasOnTheFly([null, null, null, null, null, { "name": "email", "qid": "5", "text": "E-mail address:", "type": "control_email" }, { "name": "businessName", "qid": "6", "text": "Supplier Name", "type": "control_textbox" }, null, { "name": "message", "qid": "8", "subLabel": "Please mention any keywords that could help the buyers reach you. Like brand names you deal with, agent of particular brands, products in your scope.. etc.", "text": "Keywords: ", "type": "control_textarea" }, null, { "name": "clickTo", "qid": "10", "text": "KFSH&RC Suppliers Registration Form ", "type": "control_head" }, null, null, null, { "description": "", "name": "businessName14", "qid": "14", "subLabel": "Registration number in KFSHRC (if available). *Enabling you edit your record later.", "text": "Supplier Number :", "type": "control_textbox" }, { "description": "", "name": "supplierName", "qid": "15", "subLabel": "", "text": "Representative Name: ", "type": "control_textbox" }, { "description": "", "name": "representativeName", "qid": "16", "subLabel": " Representative mobile#", "text": "Contact Number:", "type": "control_textbox" }, null, { "description": "", "name": "typeA18", "qid": "18", "text": "Specialized in:", "type": "control_checkbox" }, null, { "name": "toView", "qid": "20", "text": "To view Your Record: ", "type": "control_head" }, { "description": "", "name": "Supplier21", "qid": "21", "subLabel": "For accurate results please type the exact name . If not find , please search in between two percentage. Like : %Example% ", "text": " Supplier Name:", "type": "control_textbox" }, { "name": "submit", "qid": "22", "text": "Save", "type": "control_button" }, { "name": "submit23", "qid": "23", "text": "Search", "type": "control_button" }]);
        }, 20); 
</script>


<script type="text/javascript">
    var keynum, lines = 1;

    function limitLines(obj, e) {
        // IE
        if (window.event) {
            keynum = e.keyCode;
            // Netscape/Firefox/Opera
        } else if (e.which) {
            keynum = e.which;
        }

        if (keynum == 13) {
            if (lines == obj.rows) {
                return false;
            } else {
                lines++;
            }
        }
    }
      </script>


     <script>

         function isInputNumber(evt) {

             var ch = String.fromCharCode(evt.which);

             if (!(/[0-9]/.test(ch))) {
                 evt.preventDefault();
             }

         }

        </script>





</head>

  
<body>
    <form id="form1" runat="server">
        <div>
<asp:HiddenField ID="hfNum" runat="server" />

  <input type="hidden" name="formID" value="91447878362470" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_10" class="form-input-wide" data-type="control_head">
        <div class="form-header-group ">
          <div class="header-text httal htvam">
            <h2 id="header_10" class="form-header" data-component="header">
              KFSH&amp;RC Suppliers Registration Form
            </h2>
            <div id="subHeader_10" class="form-subHeader" >
              Thank you for your interest to have business with us. And please be informed that this from is only to help buyers reach you and send you invitation for their RFQ. It is NOT a formal registration.
            </div>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="SupplierName">
          Supplier Name:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_6" class="form-input jf-required">
            <asp:TextBox type="text" id="SupplierName" runat="server" name="SupplierName" data-type="input-textbox" class="form-textbox validate[required]" size="47" value="" placeholder=" " data-component="textbox" aria-labelledby="label_6" required="" maxlength="65"></asp:TextBox>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_14">
        <label class="form-label form-label-left form-label-auto" id="label_14" for="SupplieNum"> Supplier Number : </label>
        <div id="cid_14" class="form-input">
          <span class="form-sub-label-container" style="vertical-align:top">
              <asp:TextBox type="text" id="SupplieNum" runat="server" name="SupplieNum" data-type="input-textbox" class="form-textbox" size="15" value="" placeholder=" " data-component="textbox" aria-labelledby="label_14 sublabel_input_14" maxlength="10" onkeypress="isInputNumber(event)"></asp:TextBox>
            <label class="form-sub-label" for="SupplierNum" id="sublabel_input_14" style="min-height:13px"> Registration number in KFSHRC (if available) or CR#. *Enabling you edit your record later. </label>
          </span>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_15">
        <label class="form-label form-label-left form-label-auto" id="label_15" for="RepName">
          Representative Name:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_15" class="form-input jf-required">
            <asp:TextBox type="text" id="RepName" runat="server" name="RepName" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_15" required="" maxlength="30"></asp:TextBox>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_16">
        <label class="form-label form-label-left form-label-auto" id="label_16" for="ContactNum">
          Contact Number:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <span class="form-sub-label-container" style="vertical-align:top">
              <asp:TextBox type="text" id="ContactNum" runat="server" name="ContactNum" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_16 sublabel_input_16" required="" maxlength="20"></asp:TextBox>

            <label class="form-sub-label" for="input_16" id="sublabel_input_16" style="min-height:13px"> Representative mobile# </label>
          </span>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_5">
        <label class="form-label form-label-left form-label-auto" id="label_5" for="Email">
          E-mail address:
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_5" class="form-input jf-required">
            <asp:TextBox type="email" id="Email" runat="server" name="Email" class="form-textbox validate[required, Email]" size="32" value="" data-component="email" required="" maxlength="40"></asp:TextBox>
        </div>
      </li>
      <li class="form-line" data-type="control_checkbox" id="id_18">
        <label class="form-label form-label-left form-label-auto" id="label_18" for="input_18_0"> Specialized in: </label>
        <div id="cid_18" class="form-input">
          <div class="form-single-column" data-component="checkbox">
            <span class="form-checkbox-item" style="clear:left">
              <span class="dragger-item">
              </span>
             <asp:CheckBoxList ID="CheckBoxList1" runat="server" font-size="14px" RepeatColumns="0" RepeatDirection="Vertical">

<asp:ListItem Text=" Medical Equipment." Value="ME">  </asp:ListItem>
<asp:ListItem Text=" Medical Supplies." Value="MS">  </asp:ListItem>
<asp:ListItem Text=" Medical Laboratory." Value="ML">  </asp:ListItem>
<asp:ListItem Text=" Pharmaceutical." Value="PH"> </asp:ListItem>
<asp:ListItem Text=" Audio Visual." Value="AV">  </asp:ListItem>
<asp:ListItem Text=" Video Conference System." Value="VC"> </asp:ListItem>
<asp:ListItem Text=" Access Control System." Value="ACC"> </asp:ListItem>
<asp:ListItem Text=" Technology (Hardware & Software)." Value="Tech"> </asp:ListItem>
<asp:ListItem Text=" Home Appliance." Value="HA">  </asp:ListItem>
<asp:ListItem Text=" Furniture. " Value="Fur">  </asp:ListItem>
<asp:ListItem Text=" Utility & Maintenance." Value="UMD"></asp:ListItem>
<asp:ListItem Text=" Air Conditions, Fan, Air Curtain...etc." Value="AC"></asp:ListItem>
<asp:ListItem Text=" Services." Value="Ser">  </asp:ListItem>
<asp:ListItem Text=" Food." Value="Food">  </asp:ListItem>
<asp:ListItem Text=" Stationery." Value="Sta">  </asp:ListItem>
<asp:ListItem Text=" Transportation (Cars , Club cars .. etc)." Value="Car">  </asp:ListItem>
<asp:ListItem Text=" Projects." Value="Project">  </asp:ListItem>
<asp:ListItem Text=" General." Value="General">  </asp:ListItem>
<asp:ListItem Text=" Environmental Services." Value="Environmental">  </asp:ListItem>
<asp:ListItem Text=" Uniforms." Value="Uniforms">  </asp:ListItem>
<asp:ListItem Text=" Plant." Value="Plant">  </asp:ListItem>
<asp:ListItem Text=" Plastic." Value="Plastic">  </asp:ListItem>
<asp:ListItem Text=" Fire & Safety." Value="Fire">  </asp:ListItem>
<asp:ListItem Text=" Other." Value="Other">  </asp:ListItem>

            </asp:CheckBoxList>


            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textarea" id="id_8">
        <label class="form-label form-label-left form-label-auto" id="label_8" for="Key"> Keywords: </label>
        <div id="cid_8" class="form-input">
          <span class="form-sub-label-container" style="vertical-align:top">
              <asp:TextBox id="Key" runat="server" class="form-textarea" name="Key" Columns="40" rows="4" TextMode="MultiLine" onkeydown="return limitLines(this, event)" onkeypress="return this.value.length<=140" onpaste="return false"></asp:TextBox>


            <label class="form-sub-label" for="input_8" style="min-height:13px"> Please mention any keywords that could help the buyers reach you. Like brand names you deal with, agent of particular brands, products in your scope.. etc. </label>
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_22">
        <div id="cid_22" class="form-input-wide">
          <div style="text-align:center" class="form-buttons-wrapper">
            <asp:Button ID="btnSave" runat="server" Text="Save" type="submit" class="form-submit-button" data-component="button" OnClick="btnSave_Click"/>
            <span>
               
            </span>
              


              <span>

              </span>

<asp:Button ID="btnUpdate" runat="server" Text="Update" type="submit" class="form-submit-button" data-component="button" OnClick="btnUpdate_Click" />
         
              <span>

              </span>

              <asp:LinkButton ID="Cancel" runat="server" class="form-submit-button" OnClick=" btnClear_Click " >Cancel</asp:LinkButton>
              <asp:LinkButton ID="Search_" runat="server" class="form-submit-button" OnClick="btnSearch_Click" >Search</asp:LinkButton>



              </div>
        </div>




          
      </li>

     
            

            <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="false" Width="680px" AllowPaging="true" PageSize="8" CssClass="Grid" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" horizontalalign="Center">


                 <Columns>

            <asp:BoundField Datafield="Supplier_Name" HeaderText="Supplier Name" />
            <asp:BoundField Datafield="Representative_Name" HeaderText="Representative Name" />
            <asp:BoundField Datafield="Contact_Number" HeaderText="Contact Number" />
             <asp:BoundField Datafield="Email" HeaderText="Email Address" />
             <asp:BoundField Datafield="Specialized" HeaderText="Specialized" />
             <asp:BoundField Datafield="Keywords" HeaderText="Keywords" />

           <asp:TemplateField>

               <ItemTemplate>

<asp:LinkButton ID="LinkView" runat="server" CommandArgument='<%# Eval("Num") %>' OnClick="Edit_OnClick">Edit</asp:LinkButton>


               </ItemTemplate>

           </asp:TemplateField>

            </Columns>


            </asp:GridView>





      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>

        </div>


    </form>

      

</body>
</html>
