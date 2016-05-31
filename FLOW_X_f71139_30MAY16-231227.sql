set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>31828990905270755699
,p_default_application_id=>71139
,p_default_owner=>'RENTA_AUTOS'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 71139 - RENT
--
-- Application Export:
--   Application:     71139
--   Name:            RENT
--   Date and Time:   23:12 Lunes Mayo 30, 2016
--   Exported By:     CAROLINA_CALVACHE
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     26
--     Items:                   13
--     Processes:               10
--     Regions:                 34
--     Buttons:                 28
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         2
--       Authorization:          2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   2
--       Shortcuts:              1
--       Plug-ins:              10
--     Globalization:
--     Reports:
--       Layouts:                1
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,71139)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RENTA_AUTOS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'RENT')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_10146971139')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'C5E4F77EDAE2428597E06D8CDD6EEA01B0AA02B63C9C8893484B9B0EA0DFC8B2'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'es'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'fmDay, fmDD fmMonth, YYYY'
,p_date_time_format=>'fmDay, fmDD fmMonth, YYYY'
,p_timestamp_format=>'fmDay, fmDD fmMonth, YYYY'
,p_timestamp_tz_format=>'fmDay, fmDD fmMonth, YYYY'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(33334776650275851682)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:RENT'
,p_logo_image_attributes=>'style="font-family:Arial; color:#FFFFFF; font-size:25px; white-space:nowrap; font-weight:bold;"'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'versión 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530073330'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(64881676081755529400)
,p_name=>'Escritorio Menú de Navegación'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33662555113374748645)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Datos Personales'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(64882072385635626376)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Catalogo'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33338554625351690256)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Solicitud de renta'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33779897721933299329)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Historial'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text'
,p_parent_list_item_id=>wwv_flow_api.id(33338554625351690256)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33622274129750322308)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Facturas'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34541559646727723454)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Generar factura'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-print'
,p_parent_list_item_id=>wwv_flow_api.id(33622274129750322308)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(64881718459047529441)
,p_name=>'Escritorio Barra de Navegación'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(64881718587708529442)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'a-Icon icon-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33662596172649789801)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Datos Personales'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_parent_list_item_id=>wwv_flow_api.id(64881718587708529442)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33581648039215912141)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Cerrar sesion'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-power-off'
,p_parent_list_item_id=>wwv_flow_api.id(64881718587708529442)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33664400220655398144)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.HIGHLIGHT'
,p_attribute_01=>'#E5FFCC'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33664444247053398193)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_attribute_01=>'3'
,p_attribute_02=>'1.333'
,p_attribute_03=>'480'
,p_attribute_04=>'WINDOW'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33664495441737398238)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.LINE'
,p_attribute_01=>'3'
,p_attribute_02=>'1.333'
,p_attribute_03=>'480'
,p_attribute_04=>'WINDOW'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33664535349391398279)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_attribute_01=>'1.333'
,p_attribute_02=>'1.5'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(64881675782757529399)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(64881675926290529400)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(64881676043896529400)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(33343037057999089824)
,p_name=>'No_Cliente'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    contadornocliente number;',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'    c:= owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'    :P101_USERNAME := c.vals(1);',
'    select count(*) into  contadornocliente  From cliente',
'    where lower(cedula) = lower(:P101_USERNAME);',
'    if contadornocliente  = 0 then',
'    return true;',
'    else ',
'return false;',
'end if;',
'end;'))
,p_error_message=>'Usted Ya Esta Registrado Dentro De Rent !!!'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(33406518158735887442)
,p_name=>'AutorizacionCliente'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    contadorcliente number;',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'    c:= owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'    :P101_USERNAME := c.vals(1);',
'    select count(*) into  contadorcliente  From cliente',
'    where lower(cedula) = lower(:P101_USERNAME);',
'    if contadorcliente  = 0 then',
'    return true;',
'    else ',
'return false;',
'end if;',
'end;'))
,p_error_message=>'No tiene privilegios de acceso '
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(34589109009885836176)
,p_lov_name=>'Copia de CATEGORIES'
,p_lov_query=>'.'||wwv_flow_api.id(34589109009885836176)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34589109335299836181)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Mens'
,p_lov_return_value=>'Mens'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34589109771424836183)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Womens'
,p_lov_return_value=>'Womens'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34589110143090836184)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Accessories'
,p_lov_return_value=>'Accessories'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(34589111550458836184)
,p_lov_name=>'Copia de Y OR N'
,p_lov_query=>'.'||wwv_flow_api.id(34589111550458836184)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34589111993781836184)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Si'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34589112386027836185)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'0'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/ruta_de_navegación
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(64881719847555529445)
,p_name=>'Ruta de navegación '
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881676261422529400)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676364639529401)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676412269529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676485990529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676585535529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676735612529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676831564529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881676913302529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677021235529402)
,p_page_template_id=>wwv_flow_api.id(64881676261422529400)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881677128655529402)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677247928529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677337457529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677411485529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677543704529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677668080529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677736466529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677858199529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881677886825529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678010908529402)
,p_page_template_id=>wwv_flow_api.id(64881677128655529402)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881678134460529402)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678261631529403)
,p_page_template_id=>wwv_flow_api.id(64881678134460529402)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678311721529403)
,p_page_template_id=>wwv_flow_api.id(64881678134460529402)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881678454241529403)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678472653529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678671286529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678735408529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678857922529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678874788529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881678980141529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679126924529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679220549529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679357405529403)
,p_page_template_id=>wwv_flow_api.id(64881678454241529403)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881679373680529403)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679517011529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679573693529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679744783529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679783944529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881679921383529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680021330529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680137123529404)
,p_page_template_id=>wwv_flow_api.id(64881679373680529403)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881680222684529404)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680340784529404)
,p_page_template_id=>wwv_flow_api.id(64881680222684529404)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680395442529404)
,p_page_template_id=>wwv_flow_api.id(64881680222684529404)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680550734529404)
,p_page_template_id=>wwv_flow_api.id(64881680222684529404)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881680609050529404)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680698839529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680848326529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680922393529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881680990634529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681169123529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681225879529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681328777529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681390183529404)
,p_page_template_id=>wwv_flow_api.id(64881680609050529404)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881681488501529404)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681651565529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681674997529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681858586529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881681956000529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682059756529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682084741529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682208822529405)
,p_page_template_id=>wwv_flow_api.id(64881681488501529404)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(64881682364573529405)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682452734529405)
,p_page_template_id=>wwv_flow_api.id(64881682364573529405)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682544748529405)
,p_page_template_id=>wwv_flow_api.id(64881682364573529405)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682586235529405)
,p_page_template_id=>wwv_flow_api.id(64881682364573529405)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(64881713213211529435)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(64881713340688529435)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(64881713425683529435)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881682768650529405)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881682818702529406)
,p_plug_template_id=>wwv_flow_api.id(64881682768650529405)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881684201164529409)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881684357010529409)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881684378114529409)
,p_plug_template_id=>wwv_flow_api.id(64881684357010529409)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881684552676529409)
,p_plug_template_id=>wwv_flow_api.id(64881684357010529409)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881685248772529409)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881685370155529410)
,p_plug_template_id=>wwv_flow_api.id(64881685248772529409)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881685388021529410)
,p_plug_template_id=>wwv_flow_api.id(64881685248772529409)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881688598525529412)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881688733755529412)
,p_plug_template_id=>wwv_flow_api.id(64881688598525529412)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881688850741529412)
,p_plug_template_id=>wwv_flow_api.id(64881688598525529412)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881690690247529414)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881690785237529414)
,p_plug_template_id=>wwv_flow_api.id(64881690690247529414)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881690892623529414)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881691057750529414)
,p_plug_template_id=>wwv_flow_api.id(64881690892623529414)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881691799175529414)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881692107149529415)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881692245752529415)
,p_plug_template_id=>wwv_flow_api.id(64881692107149529415)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881692287456529415)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881692443172529415)
,p_plug_template_id=>wwv_flow_api.id(64881692287456529415)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881692486530529415)
,p_plug_template_id=>wwv_flow_api.id(64881692287456529415)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881694460175529417)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881694515054529417)
,p_plug_template_id=>wwv_flow_api.id(64881694460175529417)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881694663581529417)
,p_plug_template_id=>wwv_flow_api.id(64881694460175529417)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881695609693529418)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(64881696154472529418)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(64881696218467529418)
,p_plug_template_id=>wwv_flow_api.id(64881696154472529418)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881704510665529426)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881706193434529427)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881708326453529429)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881709147516529430)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881710036109529431)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881710490001529431)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881710630617529431)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881710672222529432)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881710840328529432)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881711754136529433)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(64881712205200529434)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881696709295529419)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881696792799529419)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881698518342529420)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881700658151529422)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881701013134529422)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881701137341529422)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(64881701137341529422)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881702447604529423)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881702624955529424)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(64881703633868529425)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(64881712756231529434)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(64881712797235529434)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(64881712953810529434)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(64881713059005529434)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(64881713090131529435)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(64881713820059529436)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(64881714034824529436)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(64881713887598529436)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(64881714461031529438)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(64881681488501529404)
,p_default_dialog_template=>wwv_flow_api.id(64881680222684529404)
,p_error_template=>wwv_flow_api.id(64881678134460529402)
,p_printer_friendly_template=>wwv_flow_api.id(64881681488501529404)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(64881678134460529402)
,p_default_button_template=>wwv_flow_api.id(64881713340688529435)
,p_default_region_template=>wwv_flow_api.id(64881692287456529415)
,p_default_chart_template=>wwv_flow_api.id(64881692287456529415)
,p_default_form_template=>wwv_flow_api.id(64881692287456529415)
,p_default_reportr_template=>wwv_flow_api.id(64881692287456529415)
,p_default_tabform_template=>wwv_flow_api.id(64881692287456529415)
,p_default_wizard_template=>wwv_flow_api.id(64881692287456529415)
,p_default_menur_template=>wwv_flow_api.id(64881695609693529418)
,p_default_listr_template=>wwv_flow_api.id(64881692287456529415)
,p_default_irr_template=>wwv_flow_api.id(64881691799175529414)
,p_default_report_template=>wwv_flow_api.id(64881701137341529422)
,p_default_label_template=>wwv_flow_api.id(64881712797235529434)
,p_default_menu_template=>wwv_flow_api.id(64881713820059529436)
,p_default_calendar_template=>wwv_flow_api.id(64881713887598529436)
,p_default_list_template=>wwv_flow_api.id(64881708326453529429)
,p_default_nav_list_template=>wwv_flow_api.id(64881711754136529433)
,p_default_top_nav_list_temp=>wwv_flow_api.id(64881711754136529433)
,p_default_side_nav_list_temp=>wwv_flow_api.id(64881710672222529432)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(64881684357010529409)
,p_default_dialogr_template=>wwv_flow_api.id(64881684201164529409)
,p_default_option_label=>wwv_flow_api.id(64881712797235529434)
,p_default_required_label=>wwv_flow_api.id(64881713059005529434)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(64881710630617529431)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>64
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(64881714098864529437)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(64881714194556529437)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(64881714299896529437)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(64881797692226558730)
,p_theme_id=>42
,p_name=>'nuevo'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#0c1233","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5","@g_Region-Header-BG":"#ffffff"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#31990271920697897557.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A206E7565766F0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E657261746564207573696E67';
wwv_flow_api.g_varchar2_table(2) := '20746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A2E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233563356335633B0A7D0A2E';
wwv_flow_api.g_varchar2_table(3) := '742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233438343834383B0A7D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A';
wwv_flow_api.g_varchar2_table(4) := '2E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233433343334333B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233265326532653B0A7D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(5) := '202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A0A2E742D416C6572742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D636F6C6F7242';
wwv_flow_api.g_varchar2_table(6) := '472E742D416C6572742D2D7761726E696E672C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0A20206261636B67726F756E642D636F6C6F723A20236666666165353B0A7D0A2E742D416C6572742D2D636F6C';
wwv_flow_api.g_varchar2_table(7) := '6F7242472E742D416C6572742D2D7761726E696E672068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068';
wwv_flow_api.g_varchar2_table(8) := '332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E67202E742D';
wwv_flow_api.g_varchar2_table(9) := '416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E';
wwv_flow_api.g_varchar2_table(10) := '742D416C6572742D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0A2E742D416C6572742D2D63';
wwv_flow_api.g_varchar2_table(11) := '6F6C6F7242472E742D416C6572742D2D73756363657373206833207B0A2020636F6C6F723A20233334333433343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D626F6479207B0A';
wwv_flow_api.g_varchar2_table(12) := '2020636F6C6F723A20233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(13) := '2D636F6C6F723A20236666656165393B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0A2E742D416C657274';
wwv_flow_api.g_varchar2_table(14) := '2D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0A2020636F6C6F723A20233335333533353B0A7D0A2E742D416C6572742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(15) := '7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233734373437343B0A';
wwv_flow_api.g_varchar2_table(16) := '7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F2068';
wwv_flow_api.g_varchar2_table(17) := '322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0A2020636F6C6F723A20233236323632363B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F202E742D416C657274';
wwv_flow_api.g_varchar2_table(18) := '2D626F6479207B0A2020636F6C6F723A20233636363636363B0A7D0A0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(19) := '6F723A20236666636330303B0A7D0A0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20233463643936343B0A7D0A0A2E742D416C6572742D2D696E666F202E742D416C6572742D69636F6E20';
wwv_flow_api.g_varchar2_table(20) := '7B0A2020636F6C6F723A20233235373863663B0A7D0A0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20236539306330';
wwv_flow_api.g_varchar2_table(21) := '303B0A7D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0A2E742D416C6572742D2D77697A6172';
wwv_flow_api.g_varchar2_table(22) := '64207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616C657274202E742D416C6572742D2D70';
wwv_flow_api.g_varchar2_table(23) := '616765207B0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(24) := '756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0A2E742D416C6572742D2D706167652E742D416C657274';
wwv_flow_api.g_varchar2_table(25) := '2D2D73756363657373202E742D416C6572742D7469746C65207B0A2020636F6C6F723A20234646463B0A7D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0A2020636F6C6F723A207267626128302C20';
wwv_flow_api.g_varchar2_table(26) := '302C20302C20302E35293B0A7D0A0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365366536653620696E7365743B';
wwv_flow_api.g_varchar2_table(27) := '0A7D0A2E742D42616467654C6973742061207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(28) := '76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0A2020636F6C6F723A20233733373337333B';
wwv_flow_api.g_varchar2_table(29) := '0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(30) := '697263756C6172202E742D42616467654C6973742D76616C75652061207B0A2020626F782D736861646F773A20302030203020317078202330633132333320696E7365743B0A2020636F6C6F723A20233333376163303B0A7D0A2E742D42616467654C69';
wwv_flow_api.g_varchar2_table(31) := '73742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0A2020626F782D736861646F773A20302030203020347078202330633132333320696E7365743B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(32) := '20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0A2020626F782D736861646F773A2030203020';
wwv_flow_api.g_varchar2_table(33) := '302032707820726762612831322C2031382C2035312C20302E3235292C20302030203020317078202330633132333320696E7365743B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B';
wwv_flow_api.g_varchar2_table(34) := '0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(35) := '233063313233333B0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0A7D0A2E742D42616467654C6973742D2D63697263756C617220';
wwv_flow_api.g_varchar2_table(36) := '612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020347078202330633132333320696E7365743B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(37) := '6C6F723A20233063313233333B0A2020636F6C6F723A20234646463B0A7D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A686F7665';
wwv_flow_api.g_varchar2_table(38) := '72202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0A7D0A0A2E742D42616467654C6973742D2D666C6F6174202E742D42';
wwv_flow_api.g_varchar2_table(39) := '616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(40) := '6D3A61667465722C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A616674657220';
wwv_flow_api.g_varchar2_table(41) := '7B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D666C6578202E742D4261646765';
wwv_flow_api.g_varchar2_table(42) := '4C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(43) := '3A6265666F72652C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D626F74';
wwv_flow_api.g_varchar2_table(44) := '746F6D426F72646572207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236563656365633B0A7D0A0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(45) := '6F723A20236632663266323B0A7D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233736373637363B0A7D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(46) := '7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233632363236323B0A7D0A2E742D426F64792D696E666F202E612D426172436861727420';
wwv_flow_api.g_varchar2_table(47) := '2E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233632363236323B0A7D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42';
wwv_flow_api.g_varchar2_table(48) := '617243686172742D76616C75652C0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233830383038303B0A7D0A';
wwv_flow_api.g_varchar2_table(49) := '2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4261724368617274202E612D42617243686172742D626172207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(50) := '642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D636C6173736963202E612D4261724368';
wwv_flow_api.g_varchar2_table(51) := '6172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0A20';
wwv_flow_api.g_varchar2_table(52) := '206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D6D6F6465726E202E';
wwv_flow_api.g_varchar2_table(53) := '612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D62';
wwv_flow_api.g_varchar2_table(54) := '6172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D66696C6C6564207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A7D0A';
wwv_flow_api.g_varchar2_table(55) := '0A626F64792C0A2E742D426F6479207B0A20206261636B67726F756E643A20236635663566353B0A2020636F6C6F723A20233336333633363B0A7D0A61207B0A2020636F6C6F723A20233333376163303B0A7D0A2E742D426F64792D7469746C6520612C';
wwv_flow_api.g_varchar2_table(56) := '0A2E742D426F64792D696E666F2061207B0A2020636F6C6F723A20233265366461633B0A7D0A2E742D426F64792D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236466646664663B0A7D0A2E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(57) := '207B0A20206261636B67726F756E642D636F6C6F723A20236465653165343B0A2020636F6C6F723A20233232323232323B0A7D0A2E75692D7769646765742D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(58) := '3B0A7D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233232';
wwv_flow_api.g_varchar2_table(59) := '323232323B0A7D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(60) := '6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D73696465207B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(61) := '3A20233336333633363B0A7D0A2E617065782D7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E';
wwv_flow_api.g_varchar2_table(62) := '6572207B0A20206261636B67726F756E642D636F6C6F723A20236465653165343B0A7D0A2E742D426F64792D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236465653165343B0A7D0A2E742D426F64792D7469746C652E6A732D68';
wwv_flow_api.g_varchar2_table(63) := '69646542726561646372756D6273207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0A7D0A2E742D426F64792D746F70427574746F6E207B0A2020626F726465722D7261646975733A20313030';
wwv_flow_api.g_varchar2_table(64) := '253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(65) := '746F70427574746F6E3A616374697665202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A0A2E617065';
wwv_flow_api.g_varchar2_table(66) := '782D736964652D6E6176202E742D426F64792D6E61762C0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20343070783B0A';
wwv_flow_api.g_varchar2_table(67) := '7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A202020206C6566743A2032303070783B0A20207D0A';
wwv_flow_api.g_varchar2_table(68) := '7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A203230';
wwv_flow_api.g_varchar2_table(69) := '3070783B0A20207D0A7D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20303B0A7D0A0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0A2020746F703A';
wwv_flow_api.g_varchar2_table(70) := '20383070783B0A7D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20383070783B0A7D0A0A2E742D426F64792D6E6176207B0A202077696474683A2032303070783B0A7D0A0A2E742D426F64792D61637469';
wwv_flow_api.g_varchar2_table(71) := '6F6E73207B0A202077696474683A2032303070783B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D343070782C20';
wwv_flow_api.g_varchar2_table(72) := '302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265';
wwv_flow_api.g_varchar2_table(73) := '656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D426F64792D73696465207B0A2020202077696474683A2032343070783B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(74) := '2E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20343070783B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20';
wwv_flow_api.g_varchar2_table(75) := '202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0A20207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D';
wwv_flow_api.g_varchar2_table(76) := '61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E74';
wwv_flow_api.g_varchar2_table(77) := '2D426F64792D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(78) := '61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C203029';
wwv_flow_api.g_varchar2_table(79) := '3B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C79207363';
wwv_flow_api.g_varchar2_table(80) := '7265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0A2020';
wwv_flow_api.g_varchar2_table(81) := '2E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E';
wwv_flow_api.g_varchar2_table(82) := '742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E7366';
wwv_flow_api.g_varchar2_table(83) := '6F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0A202020206C6566743A2032303070783B';
wwv_flow_api.g_varchar2_table(84) := '0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032303070783B0A';
wwv_flow_api.g_varchar2_table(85) := '20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A203070783B0A20207D0A2020';
wwv_flow_api.g_varchar2_table(86) := '2E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0A20202E617065782D73';
wwv_flow_api.g_varchar2_table(87) := '6964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A202020202D6D732D7472';
wwv_flow_api.g_varchar2_table(88) := '616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E';
wwv_flow_api.g_varchar2_table(89) := '6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D747261';
wwv_flow_api.g_varchar2_table(90) := '6E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(91) := '73696465207B0A202020206C6566743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D';
wwv_flow_api.g_varchar2_table(92) := '617267696E2D6C6566743A2032383070783B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746528313630';
wwv_flow_api.g_varchar2_table(93) := '7078293B0A202020207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E61';
wwv_flow_api.g_varchar2_table(94) := '7065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(95) := '73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D506167';
wwv_flow_api.g_varchar2_table(96) := '65426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(97) := '206E6F6E653B0A202020206D617267696E2D6C6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(98) := '656E74207B0A202020206D617267696E2D6C6566743A2034343070783B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E';
wwv_flow_api.g_varchar2_table(99) := '6F6E653B0A20207D0A7D0A0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E';
wwv_flow_api.g_varchar2_table(100) := '742D547265654E6176207B0A202077696474683A20343070783B0A7D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0A2E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(101) := '6C6C6170736564202E742D426F64792D7469746C652C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20206D617267696E2D6C6566743A20343070783B0A7D0A406D65646961206F';
wwv_flow_api.g_varchar2_table(102) := '6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73';
wwv_flow_api.g_varchar2_table(103) := '666F726D3A207472616E736C61746558282D34307078293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020207472616E73666F726D3A207472616E736C61746558282D34307078293B0A20207D';
wwv_flow_api.g_varchar2_table(104) := '0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0A20202E61';
wwv_flow_api.g_varchar2_table(105) := '7065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E';
wwv_flow_api.g_varchar2_table(106) := '2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A2034307078';
wwv_flow_api.g_varchar2_table(107) := '3B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20';
wwv_flow_api.g_varchar2_table(108) := '202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032383070783B0A20207D0A7D';
wwv_flow_api.g_varchar2_table(109) := '0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A202020206C6566';
wwv_flow_api.g_varchar2_table(110) := '743A20343070783B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A20303B0A7D0A2E742D50616765426F64792E6A732D72696768';
wwv_flow_api.g_varchar2_table(111) := '74457870616E646564202E742D426F64792D6D61696E2C0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428';
wwv_flow_api.g_varchar2_table(112) := '2D32303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A7D0A406D6564696120';
wwv_flow_api.g_varchar2_table(113) := '6F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D6169';
wwv_flow_api.g_varchar2_table(114) := '6E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A2020';
wwv_flow_api.g_varchar2_table(115) := '20202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C65667420';
wwv_flow_api.g_varchar2_table(116) := '2E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D42';
wwv_flow_api.g_varchar2_table(117) := '6F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(118) := '7B0A2020202072696768743A20303B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(119) := '207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E742D50616765426F64792E';
wwv_flow_api.g_varchar2_table(120) := '6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D72';
wwv_flow_api.g_varchar2_table(121) := '69676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C65667420';
wwv_flow_api.g_varchar2_table(122) := '2E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D5061';
wwv_flow_api.g_varchar2_table(123) := '6765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(124) := '7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206C6566743A20343070783B0A20207D0A7D0A406D65646961206F6E6C7920';
wwv_flow_api.g_varchar2_table(125) := '73637265656E20616E6420286D61782D77696474683A20393932707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A20';
wwv_flow_api.g_varchar2_table(126) := '2020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874';
wwv_flow_api.g_varchar2_table(127) := '457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(128) := '426F64792D736964652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(129) := '726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A202020207472616E73666F726D3A207472616E736C6174653364282D323030';
wwv_flow_api.g_varchar2_table(130) := '70782C20302C2030293B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A2034';
wwv_flow_api.g_varchar2_table(131) := '3070782021696D706F7274616E743B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A203070783B0A7D0A2E742D50616765426F';
wwv_flow_api.g_varchar2_table(132) := '64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0A202072696768743A203070783B0A7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73207B';
wwv_flow_api.g_varchar2_table(133) := '0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A20207472616E73666F726D3A207472616E';
wwv_flow_api.g_varchar2_table(134) := '736C61746533642832303070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792D2D73686F774C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(135) := '2D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032343070783B0A20207D0A7D0A0A2E742D426F64792D636F6E74656E74496E6E6572207B0A20206D617267696E3A206175746F3B0A20206D61782D77696474683A206175746F3B0A';
wwv_flow_api.g_varchar2_table(136) := '7D0A0A2E742D42726561646372756D622D6974656D3A6166746572207B0A2020636F6C6F723A20726762612833342C2033342C2033342C20302E39393335293B0A7D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F76657220';
wwv_flow_api.g_varchar2_table(137) := '7B0A2020636F6C6F723A20233063313233333B0A7D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D6368696C64202E742D4272656164';
wwv_flow_api.g_varchar2_table(138) := '6372756D622D6C6162656C207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0A2020636F6C6F723A20233232323232323B0A7D0A0A2E742D427574746F6E2C0A2E61';
wwv_flow_api.g_varchar2_table(139) := '2D427574746F6E207B0A2020626F726465723A206E6F6E653B0A2020636F6C6F723A20233338333833383B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20206261636B67726F756E642D636F6C6F723A2023663866';
wwv_flow_api.g_varchar2_table(140) := '3866383B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020626F726465722D7261646975733A203270783B0A2020746578742D736861646F773A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(141) := '7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20';
wwv_flow_api.g_varchar2_table(142) := '302C20302C20302E3132352920696E7365743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(143) := '6666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020746578742D736861646F773A206E6F6E653B0A7D';
wwv_flow_api.g_varchar2_table(144) := '0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375';
wwv_flow_api.g_varchar2_table(145) := '732C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A61';
wwv_flow_api.g_varchar2_table(146) := '6374697665207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0A7D0A406D656469612073637265656E20616E6420282D6D73';
wwv_flow_api.g_varchar2_table(147) := '2D686967682D636F6E74726173743A2061637469766529207B0A20202E742D427574746F6E2C0A20202E612D427574746F6E207B0A20202020626F726465723A2031707820736F6C69643B0A20207D0A7D0A0A2E742D427574746F6E2D2D7072696D6172';
wwv_flow_api.g_varchar2_table(148) := '792C0A2E742D427574746F6E2D2D686F742C0A2E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F6E2D2D73756363657373207B0A2020626F782D736861646F773A2030203020327078';
wwv_flow_api.g_varchar2_table(149) := '207267626128302C20302C20302C20302E30352920696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A';
wwv_flow_api.g_varchar2_table(150) := '2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E';
wwv_flow_api.g_varchar2_table(151) := '2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031707820696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(152) := '6F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E2D2D686F743A686F76';
wwv_flow_api.g_varchar2_table(153) := '65722C0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E31292C20';
wwv_flow_api.g_varchar2_table(154) := '302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(155) := '66663B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A20207A2D696E6465783A203131303B0A7D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(156) := '6E3A666F6375732C0A2E612D427574746F6E3A666F6375732C0A2E742D427574746F6E3A6163746976653A666F6375732C0A2E612D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A203020302030203170782023';
wwv_flow_api.g_varchar2_table(157) := '30633132333320696E7365742C20302030203170782032707820726762612831322C2031382C2035312C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(158) := '3A20236465646564653B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365743B0A2020';
wwv_flow_api.g_varchar2_table(159) := '7A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078';
wwv_flow_api.g_varchar2_table(160) := '207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E69732D6163746976652C0A2E742D427574746F6E2E69732D6163746976653A6163746976652C0A2E742D4D656E75427574';
wwv_flow_api.g_varchar2_table(161) := '746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A2020666F6E742D7765696768743A206E6F726D616C3B0A2020746578742D736861646F773A';
wwv_flow_api.g_varchar2_table(162) := '206E6F6E653B0A20207A2D696E6465783A203130303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32';
wwv_flow_api.g_varchar2_table(163) := '352920696E7365743B0A7D0A2E742D427574746F6E2E69732D64697361626C65642C0A2E742D427574746F6E2E69732D64697361626C65643A6163746976652C0A2E742D427574746F6E3A64697361626C6564207B0A20206F7061636974793A202E353B';
wwv_flow_api.g_varchar2_table(164) := '0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E742D427574746F6E2D2D686F742C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0A626F6479206275';
wwv_flow_api.g_varchar2_table(165) := '74746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236634663566633B0A2020746578742D7368';
wwv_flow_api.g_varchar2_table(166) := '61646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2D2D686F743A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F';
wwv_flow_api.g_varchar2_table(167) := '6E2D2D686F743A686F7665722C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233136323135633B0A';
wwv_flow_api.g_varchar2_table(168) := '7D0A2E742D427574746F6E2D2D686F743A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0A626F647920627574746F6E2E75692D73746174';
wwv_flow_api.g_varchar2_table(169) := '652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D';
wwv_flow_api.g_varchar2_table(170) := '627574746F6E2D2D686F742E69732D6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0A2E742D427574746F6E2D2D686F742E742D';
wwv_flow_api.g_varchar2_table(171) := '4D656E75427574746F6E2E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0A626F64792062';
wwv_flow_api.g_varchar2_table(172) := '7574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233032303330613B0A7D0A2E';
wwv_flow_api.g_varchar2_table(173) := '742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F';
wwv_flow_api.g_varchar2_table(174) := '647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202330633132333320696E';
wwv_flow_api.g_varchar2_table(175) := '7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233236323933393B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920';
wwv_flow_api.g_varchar2_table(176) := '2E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E7569';
wwv_flow_api.g_varchar2_table(177) := '2D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233236323933393B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F76';
wwv_flow_api.g_varchar2_table(178) := '65722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0A626F647920627574746F6E2E75692D73746174652D646566';
wwv_flow_api.g_varchar2_table(179) := '61756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F6479202E75692D737461';
wwv_flow_api.g_varchar2_table(180) := '74652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F72697479';
wwv_flow_api.g_varchar2_table(181) := '2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D62';
wwv_flow_api.g_varchar2_table(182) := '7574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574';
wwv_flow_api.g_varchar2_table(183) := '746F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236634663566633B0A2020626F782D736861646F773A20302030203020317078202330633132333320';
wwv_flow_api.g_varchar2_table(184) := '696E7365743B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D';
wwv_flow_api.g_varchar2_table(185) := '686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(186) := '653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D';
wwv_flow_api.g_varchar2_table(187) := '627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F';
wwv_flow_api.g_varchar2_table(188) := '6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D62';
wwv_flow_api.g_varchar2_table(189) := '7574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D61';
wwv_flow_api.g_varchar2_table(190) := '72792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236634663566633B0A7D0A0A2E742D427574746F6E2D2D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(191) := '3265343563333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233466363464363B0A7D0A2E742D427574746F6E2D2D707269';
wwv_flow_api.g_varchar2_table(192) := '6D6172793A6163746976652C0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233234333639613B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D42757474';
wwv_flow_api.g_varchar2_table(193) := '6F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202332653435633320696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233234326636653B0A7D';
wwv_flow_api.g_varchar2_table(194) := '0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233234326636653B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(195) := '6C653A686F7665722C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B0A2020';
wwv_flow_api.g_varchar2_table(196) := '6261636B67726F756E642D636F6C6F723A20233265343563333B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202332653435633320696E7365743B0A7D0A2E742D427574746F6E2D2D707269';
wwv_flow_api.g_varchar2_table(197) := '6D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D70';
wwv_flow_api.g_varchar2_table(198) := '72696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D64616E676572207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(199) := '3A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A2E742D427574746F6E2D2D64616E6765723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0A7D0A2E742D427574746F6E2D2D64';
wwv_flow_api.g_varchar2_table(200) := '616E6765723A6163746976652C0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F';
wwv_flow_api.g_varchar2_table(201) := '6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233934323632303B0A7D0A';
wwv_flow_api.g_varchar2_table(202) := '2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A';
wwv_flow_api.g_varchar2_table(203) := '686F7665722C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(204) := '726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A7D0A2E742D427574746F6E2D2D64616E6765722E74';
wwv_flow_api.g_varchar2_table(205) := '2D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E74';
wwv_flow_api.g_varchar2_table(206) := '2D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666656165393B0A7D0A0A2E742D427574746F6E2D2D7761726E696E67207B0A20206261636B67726F756E642D636F6C6F723A202366666363';
wwv_flow_api.g_varchar2_table(207) := '30303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D427574746F6E2D2D7761726E696E67';
wwv_flow_api.g_varchar2_table(208) := '3A6163746976652C0A2E742D427574746F6E2D2D7761726E696E672E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(209) := '73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(210) := '427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A68';
wwv_flow_api.g_varchar2_table(211) := '6F7665722C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B';
wwv_flow_api.g_varchar2_table(212) := '67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A7D0A2E742D427574746F6E2D2D7761726E696E67';
wwv_flow_api.g_varchar2_table(213) := '2E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E69';
wwv_flow_api.g_varchar2_table(214) := '6E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(215) := '3463643936343B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233736653238383B0A7D0A2E742D427574746F6E2D2D737563';
wwv_flow_api.g_varchar2_table(216) := '636573733A6163746976652C0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E742D427574746F6E2D2D737563636573732E742D42757474';
wwv_flow_api.g_varchar2_table(217) := '6F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233333373933663B0A7D';
wwv_flow_api.g_varchar2_table(218) := '0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(219) := '6C653A686F7665722C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665207B0A2020';
wwv_flow_api.g_varchar2_table(220) := '6261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A7D0A2E742D427574746F6E2D2D737563';
wwv_flow_api.g_varchar2_table(221) := '636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(222) := '7563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D70696C6C5374617274207B0A2020626F726465722D746F702D726967';
wwv_flow_api.g_varchar2_table(223) := '68742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C456E64207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(224) := '2D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C207B0A2020626F72';
wwv_flow_api.g_varchar2_table(225) := '6465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6869646553686F772E742D427574746F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4865616465722D6272616E6469';
wwv_flow_api.g_varchar2_table(226) := '6E67202E742D427574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0A20207472616E736974696F6E3A206E6F6E653B0A20';
wwv_flow_api.g_varchar2_table(227) := '20626F726465722D7261646975733A20303B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A666F637573207B0A202062';
wwv_flow_api.g_varchar2_table(228) := '6F782D736861646F773A20302030203020317078202331623238373120696E7365742C20302030203170782032707820726762612832372C2034302C203131332C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E2E742D4275';
wwv_flow_api.g_varchar2_table(229) := '74746F6E2D2D6865616465723A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(230) := '6E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0A';
wwv_flow_api.g_varchar2_table(231) := '7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0A20206261636B67726F756E642D636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(232) := '67626128302C20302C20302C20302E34293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B';
wwv_flow_api.g_varchar2_table(233) := '0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0A2020636F6E74656E743A2027273B0A2020706F73';
wwv_flow_api.g_varchar2_table(234) := '6974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A2020626F74746F6D3A20303B0A202072696768743A20303B0A202077696474683A203170783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20';
wwv_flow_api.g_varchar2_table(235) := '302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B';
wwv_flow_api.g_varchar2_table(236) := '0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465';
wwv_flow_api.g_varchar2_table(237) := '72547265653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(238) := '65616465725269676874207B0A20206261636B67726F756E642D636F6C6F723A20236466646664663B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A686F766572207B';
wwv_flow_api.g_varchar2_table(239) := '0A20206261636B67726F756E642D636F6C6F723A20236336633663363B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163746976652C0A2E742D427574746F6E2E74';
wwv_flow_api.g_varchar2_table(240) := '2D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D427574746F6E2D2D6E6176426172202E742D427574746F6E2D6261';
wwv_flow_api.g_varchar2_table(241) := '646765207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0A7D0A2E742D427574746F6E2D2D68656C70427574746F6E202E612D49636F6E';
wwv_flow_api.g_varchar2_table(242) := '207B0A20206F7061636974793A202E353B0A7D0A2E612D43616C656E6461722D627574746F6E207B0A2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233730373037303B0A7D0A0A2E742D427574746F6E2D2D6E6F554920';
wwv_flow_api.g_varchar2_table(243) := '7B0A2020636F6C6F723A20233338333833383B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0A2020636F6C6F723A20233234326636652021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(244) := '6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0A2020636F6C6F723A20233265343563332021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67207B0A';
wwv_flow_api.g_varchar2_table(245) := '2020636F6C6F723A20233863373330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0A2020636F6C6F723A20236666636330302021696D706F727461';
wwv_flow_api.g_varchar2_table(246) := '6E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0A2020636F6C6F723A20233831313330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D6461';
wwv_flow_api.g_varchar2_table(247) := '6E676572202E742D49636F6E207B0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0A2020636F6C6F723A20233333373933662021';
wwv_flow_api.g_varchar2_table(248) := '696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0A2020636F6C6F723A20233463643936342021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E';
wwv_flow_api.g_varchar2_table(249) := '6F55492E742D427574746F6E2D2D686F74207B0A2020636F6C6F723A20233133313632362021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(250) := '233063313233332021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(251) := '6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(252) := '6861646F773A206E6F6E653B0A7D0A0A2E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F726465722D7261646975733A203270';
wwv_flow_api.g_varchar2_table(253) := '783B0A7D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0A2E742D427574746F6E5265';
wwv_flow_api.g_varchar2_table(254) := '67696F6E2D2D6469616C6F67526567696F6E207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(255) := '6C6F723A207472616E73706172656E743B0A7D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233336333633363B0A7D0A2E';
wwv_flow_api.g_varchar2_table(256) := '742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D426F64792D696E666F202E742D';
wwv_flow_api.g_varchar2_table(257) := '427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F7754';
wwv_flow_api.g_varchar2_table(258) := '69746C65202E742D427574746F6E526567696F6E2D7469746C652C0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(259) := '6F723A20233430343034303B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A2030';
wwv_flow_api.g_varchar2_table(260) := '3B0A7D0A0A2E66632D746F6F6C626172207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078203020';
wwv_flow_api.g_varchar2_table(261) := '303B0A7D0A2E66632D746F6F6C6261722068322C0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0A2E6663202E66632D6461792D6E756D626572207B0A2020636F6C6F723A20233430343034303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(262) := '66632D6461792D6865616465722E75692D7769646765742D6865616465722C0A2E66632D76696577202E75692D7769646765742D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(263) := '3430343034303B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A6469762E66632D6167656E64614C697374207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(264) := '236562656265623B0A2020636F6C6F723A20233430343034303B0A7D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(265) := '30343034303B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A2E6663202E66632D6167656E64614C6973742D646179207B0A2020636F6C6F723A20233430343034303B0A7D0A2E6663202E66632D6167656E64614C6973742D6461';
wwv_flow_api.g_varchar2_table(266) := '7465207B0A2020636F6C6F723A20233636363636363B0A7D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D64';
wwv_flow_api.g_varchar2_table(267) := '6179207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E66632074642E66632D746F6461792C0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A2023653665366536';
wwv_flow_api.g_varchar2_table(268) := '3B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A2023663266';
wwv_flow_api.g_varchar2_table(269) := '3266323B0A7D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A0A2E742D436172642D77726170207B0A2020626F726465722D7261646975733A203270783B0A7D0A';
wwv_flow_api.g_varchar2_table(270) := '2E742D436172642D777261703A666F637573207B0A2020626F726465722D636F6C6F723A20233063313233333B0A7D0A2E742D436172642D69636F6E202E742D49636F6E207B0A2020636F6C6F723A20234646463B0A7D0A2E742D436172642D64657363';
wwv_flow_api.g_varchar2_table(271) := '207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D636F6D';
wwv_flow_api.g_varchar2_table(272) := '70616374202E742D436172642D64657363207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D696E666F207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D7469746C65207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(273) := '233364336433643B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D777261702C0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(274) := '6663666366633B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6261736963202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(275) := '65722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C65577261702C0A2E742D436172642D2D62';
wwv_flow_api.g_varchar2_table(276) := '61736963202E742D436172642D7469746C6557726170207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D777261702C0A2E742D';
wwv_flow_api.g_varchar2_table(277) := '436172642D2D6665617475726564202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D69636F6E';
wwv_flow_api.g_varchar2_table(278) := '202E742D49636F6E2C0A2E742D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F726465722D7261646975733A2031303070783B0A2020636F6C6F723A20234646463B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(279) := '6E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0A2E742D436172642D2D6665617475726564202E742D436172642D626F6479207B0A2020626163';
wwv_flow_api.g_varchar2_table(280) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461';
wwv_flow_api.g_varchar2_table(281) := '722D646179436F6C756D6E207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(282) := '233636363636363B0A7D0A2E742D436C617373696343616C656E6461722D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665202E74';
wwv_flow_api.g_varchar2_table(283) := '2D436C617373696343616C656E6461722D64617465207B0A20206F7061636974793A202E353B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0A2E742D436C617373696343616C656E6461722D6461792E69';
wwv_flow_api.g_varchar2_table(284) := '732D696E616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D6461746520';
wwv_flow_api.g_varchar2_table(285) := '7B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D436C617373696343616C656E6461722D64617465207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(286) := '436C617373696343616C656E6461722D6576656E74207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A2020636F6C6F723A20233430343034303B0A';
wwv_flow_api.g_varchar2_table(287) := '7D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D436C617373696343616C656E6461722D2D';
wwv_flow_api.g_varchar2_table(288) := '7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(289) := '6E642D636F6C6F723A20236661666166613B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0A2E742D436C617373696343616C656E6461722D2D6461';
wwv_flow_api.g_varchar2_table(290) := '696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E646172';
wwv_flow_api.g_varchar2_table(291) := '2D6461794576656E747320612C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0A20206261636B67726F756E642D636F6C6F723A2023306331323333';
wwv_flow_api.g_varchar2_table(292) := '3B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0A2E742D436C617373696343616C656E646172';
wwv_flow_api.g_varchar2_table(293) := '2D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0A20206261636B67726F756E642D636F6C6F723A20233634373664613B0A7D0A2E742D436C617373696343616C656E6461722D6C697374207B0A20';
wwv_flow_api.g_varchar2_table(294) := '20626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(295) := '723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(296) := '7373696343616C656E6461722D6C6973744576656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E2C0A2E742D436F6D6D656E74732D75736572496D67207B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(297) := '646975733A20313030253B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D696E666F207B0A2020636F6C6F723A2023363636';
wwv_flow_api.g_varchar2_table(298) := '3636363B0A7D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(299) := '6F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078203020303B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74';
wwv_flow_api.g_varchar2_table(300) := '732D696E666F3A6166746572207B0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D';
wwv_flow_api.g_varchar2_table(301) := '2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236536653665';
wwv_flow_api.g_varchar2_table(302) := '363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20302030203270782032';
wwv_flow_api.g_varchar2_table(303) := '70783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6E66696750616E656C2D61626F7574207B0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0A2020636F6C6F723A20233536353635363B';
wwv_flow_api.g_varchar2_table(304) := '0A7D0A2E742D436F6E66696750616E656C2D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020636F6C6F723A20234646463B0A7D0A2E742D436F6E';
wwv_flow_api.g_varchar2_table(305) := '66696750616E656C2D69636F6E2E69732D656E61626C6564207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(306) := '6F756E642D636F6C6F723A20236539306330303B0A7D0A2E742D436F6E66696750616E656C2D73657474696E672C0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D436F6E666967';
wwv_flow_api.g_varchar2_table(307) := '50616E656C2D737461747573207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D436F6E66696750616E656C2D61747472';
wwv_flow_api.g_varchar2_table(308) := '4C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0A2020636F6C6F723A20233333376163303B';
wwv_flow_api.g_varchar2_table(309) := '0A7D0A0A2E742D4469616C6F67526567696F6E2D626F6479207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C202D7765626B69742D6C696E65';
wwv_flow_api.g_varchar2_table(310) := '61722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(311) := '203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67726F756E643A202D6F2D6C696E6561722D677261646965';
wwv_flow_api.g_varchar2_table(312) := '6E742823666666666666203330252C2023666666666666292C202D6F2D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D6F2D6C696E6561722D6772616469656E7428726762612830';
wwv_flow_api.g_varchar2_table(313) := '2C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67';
wwv_flow_api.g_varchar2_table(314) := '726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C206C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C206C696E6561722D67';
wwv_flow_api.g_varchar2_table(315) := '72616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3035';
wwv_flow_api.g_varchar2_table(316) := '2929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A0A2E742D466F6F7465722C0A2E742D466F6F7465722061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(317) := '74436F6E7461696E65723A6265666F7265207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642C0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B';
wwv_flow_api.g_varchar2_table(318) := '747970653D2274657874225D2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F2C0A2E742D466F72';
wwv_flow_api.g_varchar2_table(319) := '6D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0A2E742D466F726D2D696E707574436F6E7461696E657220746578';
wwv_flow_api.g_varchar2_table(320) := '74617265612E74657874617265612C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792C0A2E';
wwv_flow_api.g_varchar2_table(321) := '742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0A2E742D466F726D2D74657874617265612C0A2E75';
wwv_flow_api.g_varchar2_table(322) := '2D54462D6974656D2D2D746578742C0A2E752D54462D6974656D2D2D74657874617265612C0A2E752D54462D6974656D2D2D646174657069636B65722C0A2E752D54462D6974656D2D2D73656C656374207B0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(323) := '3270783B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D466F726D2D6669656C643A666F6375732C0A';
wwv_flow_api.g_varchar2_table(324) := '2E742D466F726D2D73656C6563743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C656374';
wwv_flow_api.g_varchar2_table(325) := '2E73656C6563746C6973743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F666965';
wwv_flow_api.g_varchar2_table(326) := '6C643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A666F6375';
wwv_flow_api.g_varchar2_table(327) := '732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F6375732C0A2E74';
wwv_flow_api.g_varchar2_table(328) := '2D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375732C0A2E742D466F726D2D74';
wwv_flow_api.g_varchar2_table(329) := '657874617265613A666F6375732C0A2E752D54462D6974656D2D2D746578743A666F6375732C0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375732C0A2E752D';
wwv_flow_api.g_varchar2_table(330) := '54462D6974656D2D2D73656C6563743A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20233063313233332021696D706F7274616E743B0A';
wwv_flow_api.g_varchar2_table(331) := '7D0A2E742D466F726D2D6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B74797065';
wwv_flow_api.g_varchar2_table(332) := '3D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E70757443';
wwv_flow_api.g_varchar2_table(333) := '6F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E';
wwv_flow_api.g_varchar2_table(334) := '742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A666F6375';
wwv_flow_api.g_varchar2_table(335) := '733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E';
wwv_flow_api.g_varchar2_table(336) := '646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(337) := '74436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D746578743A666F';
wwv_flow_api.g_varchar2_table(338) := '6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E752D54';
wwv_flow_api.g_varchar2_table(339) := '462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0A2020636F6C6F723A20233333333333333B0A20200A7D0A2E742D466F726D2D6669656C643A686F7665722C0A2E742D466F726D2D73656C6563743A686F7665722C0A';
wwv_flow_api.g_varchar2_table(340) := '2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A686F7665722C0A2E742D';
wwv_flow_api.g_varchar2_table(341) := '466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F7665722C0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(342) := '74436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0A2E742D466F726D2D696E707574436F6E746169';
wwv_flow_api.g_varchar2_table(343) := '6E657220696E7075742E646174657069636B65723A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722069';
wwv_flow_api.g_varchar2_table(344) := '6E7075742E706F7075705F6C6F763A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0A2E742D466F726D2D74657874617265613A686F7665722C0A2E752D54462D69';
wwv_flow_api.g_varchar2_table(345) := '74656D2D2D746578743A686F7665722C0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0A2E752D54462D6974656D2D2D73656C6563743A686F76657220';
wwv_flow_api.g_varchar2_table(346) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(347) := '233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F706163';
wwv_flow_api.g_varchar2_table(348) := '6974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D';
wwv_flow_api.g_varchar2_table(349) := '0A2E742D466F726D20696E7075742E66696C65207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(350) := '207472616E73706172656E743B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563';
wwv_flow_api.g_varchar2_table(351) := '746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(352) := '6F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D726164696F4C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0A2E742D466F726D2D6368';
wwv_flow_api.g_varchar2_table(353) := '65636B626F784C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0A2E742D466F726D2D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A2E742D466F';
wwv_flow_api.g_varchar2_table(354) := '726D2D6572726F72207B0A2020636F6C6F723A20234539323032303B0A7D0A2E742D466F726D2D706F737454657874207B0A2020636F6C6F723A20236363636363633B0A7D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D73';
wwv_flow_api.g_varchar2_table(355) := '65617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D';
wwv_flow_api.g_varchar2_table(356) := '466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236661666266623B0A2020626F726465722D636F6C6F723A20236332633763643B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B';
wwv_flow_api.g_varchar2_table(357) := '747970653D746578745D2E742D466F726D2D7365617263684669656C643A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20233063313233';
wwv_flow_api.g_varchar2_table(358) := '332021696D706F7274616E743B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0A';
wwv_flow_api.g_varchar2_table(359) := '2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D6D6F7A2D706C61';
wwv_flow_api.g_varchar2_table(360) := '6365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C';
wwv_flow_api.g_varchar2_table(361) := '643A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069';
wwv_flow_api.g_varchar2_table(362) := '636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0A2020626F726465722D746F702D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D72696768742D72';
wwv_flow_api.g_varchar2_table(363) := '61646975733A20303B0A7D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0A2020626F726465722D746F702D6C6566742D7261646975733A2030';
wwv_flow_api.g_varchar2_table(364) := '3B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B';
wwv_flow_api.g_varchar2_table(365) := '0A7D0A0A2E742D4865616465722D6272616E64696E67207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0A2E742D486561646572202E742D427574746F6E2E742D42';
wwv_flow_api.g_varchar2_table(366) := '7574746F6E2D2D6865616465722E69732D6163746976652C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0A2020636F6C6F723A20236362643166333B0A7D';
wwv_flow_api.g_varchar2_table(367) := '0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0A2E742D486561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(368) := '6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0A2E74';
wwv_flow_api.g_varchar2_table(369) := '2D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202331623238373120696E7365742C203020302031707820327078';
wwv_flow_api.g_varchar2_table(370) := '20726762612832372C2034302C203131332C20302E3235292021696D706F7274616E743B0A7D0A2E742D4865616465722D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A2E742D486561646572202E612D4D';
wwv_flow_api.g_varchar2_table(371) := '656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F';
wwv_flow_api.g_varchar2_table(372) := '6C202E612D49636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(373) := '77696474683A20303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0A7D0A2E742D4865616465722D6E6176';
wwv_flow_api.g_varchar2_table(374) := '2D6C697374207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236465653165343B0A2020636F6C6F723A20233165';
wwv_flow_api.g_varchar2_table(375) := '323232353B0A7D0A2E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233165323232353B0A7D0A2E742D4865726F526567696F6E2D69636F6E207B0A2020626F726465722D7261646975733A203470783B0A20206261636B67';
wwv_flow_api.g_varchar2_table(376) := '726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D4865726F526567696F6E2D2D6665617475726564207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B';
wwv_flow_api.g_varchar2_table(377) := '0A7D0A2E742D4865726F526567696F6E2D2D66656174757265642C0A2E742D4865726F526567696F6E2D2D6665617475726564202E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E612D4952';
wwv_flow_api.g_varchar2_table(378) := '52207B0A2020626F726465722D7261646975733A203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0A2020636F6C6F723A202337333733';
wwv_flow_api.g_varchar2_table(379) := '37333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0A2020626F726465722D746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(380) := '3A20236635663566353B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E612D4952522D66756C6C56696577207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D4952522D6275';
wwv_flow_api.g_varchar2_table(381) := '74746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(382) := '2032707820347078207267626128302C20302C20302C20302E31293B0A7D0A2E612D4952522D746F6F6C626172207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236666666666662C2023666666666666293B0A202062';
wwv_flow_api.g_varchar2_table(383) := '6F726465722D636F6C6F723A20236536653665363B0A7D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A7D0A2E612D5265706F72742D7065726365';
wwv_flow_api.g_varchar2_table(384) := '6E744368617274207B0A20206261636B67726F756E642D636F6C6F723A20233634373664613B0A7D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0A20202D7765626B69742D626F726465722D746F702D72696768742D7261646975';
wwv_flow_api.g_varchar2_table(385) := '733A203070782021696D706F7274616E743B0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D746F70726967';
wwv_flow_api.g_varchar2_table(386) := '68743A20307078202021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0A2020626F726465722D746F702D72696768742D7261646975733A203070';
wwv_flow_api.g_varchar2_table(387) := '782021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A7D0A2E612D4952522D69636F6E566965775461626C652C0A2E612D4952522D636861727456696577';
wwv_flow_api.g_varchar2_table(388) := '2C0A2E612D4952522D7069766F74566965772C0A2E612D4952522D67726F75704279566965772C0A2E612D4952522D64657461696C56696577207B0A2020626F726465722D746F702D636F6C6F723A20236635663566353B0A7D0A2E612D4952522D746F';
wwv_flow_api.g_varchar2_table(389) := '6F6C6261722D2D73696E676C65526F77207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020';
wwv_flow_api.g_varchar2_table(390) := '626F726465722D746F703A2031707820736F6C696420236536653665363B0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0A7D0A2E612D4952522D6865616465723A686F766572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(391) := '67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E612D4952522D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A2020626F726465722D626F74746F6D3A206E6F6E';
wwv_flow_api.g_varchar2_table(392) := '653B0A7D0A2E612D4952522D6865616465722E69732D6163746976652061207B0A2020636F6C6F723A20233634373664613B0A7D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0A202063';
wwv_flow_api.g_varchar2_table(393) := '6F6C6F723A20233634373664613B0A7D0A2E612D4952522D6865616465722D2D67726F7570207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E612D4952522D7461626C65207472207464207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(394) := '6F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D7461626C65207B0A2020626F726465722D636F6C6C617073653A2073657061726174653B0A7D0A2E612D4952522D7461626C6520';
wwv_flow_api.g_varchar2_table(395) := '74723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A7D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0A2020626F726465722D7261646975733A203270783B';
wwv_flow_api.g_varchar2_table(396) := '0A7D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D746F703A2031707820736F6C696420233030303030303B0A20206261636B67726F756E643A202330';
wwv_flow_api.g_varchar2_table(397) := '37306231653B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030202D3170782030202330303030303020696E7365743B0A7D0A2E612D49';
wwv_flow_api.g_varchar2_table(398) := '52522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C642C0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D73';
wwv_flow_api.g_varchar2_table(399) := '65617263684669656C645B747970653D2274657874225D207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E643A20233030303030303B0A7D0A2E612D4952522D736F72745769646765742D726F773A686F766572207B0A20';
wwv_flow_api.g_varchar2_table(400) := '206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0A626F6479202E612D4952522D627574746F6E2E612D4952522D73';
wwv_flow_api.g_varchar2_table(401) := '6F72745769646765742D627574746F6E3A6163746976653A666F637573207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A626F';
wwv_flow_api.g_varchar2_table(402) := '6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F7665722C0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F';
wwv_flow_api.g_varchar2_table(403) := '6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0A2020626F726465722D626F74746F6D3A2031707820736F6C6964202330';
wwv_flow_api.g_varchar2_table(404) := '30303030303B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0A2020626F726465722D72696768743A206E6F6E653B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F726465723A206E6F6E65';
wwv_flow_api.g_varchar2_table(405) := '3B0A7D0A2E612D4952522D7461626C65207464207B0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0A2020626F726465722D746F703A2031707820736F6C696420236632663266323B0A7D0A2E612D4952522D736F';
wwv_flow_api.g_varchar2_table(406) := '72745769646765742D7365617263684C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0A20';
wwv_flow_api.g_varchar2_table(407) := '20636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020327078202330633132333320696E7365743B';
wwv_flow_api.g_varchar2_table(408) := '0A7D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0A2020626F726465722D636F6C6F723A20233063313233333B0A2020626F782D736861646F773A20302030203020317078202330633132333320696E7365742C202D32707820';
wwv_flow_api.g_varchar2_table(409) := '302030202330633132333320696E7365742C2032707820302030202330633132333320696E7365742C2030203020327078203020726762612831322C2031382C2035312C20302E35293B0A7D0A2E612D4952522D73696E676C65526F772D6E616D652C0A';
wwv_flow_api.g_varchar2_table(410) := '2E612D4952522D73696E676C65526F772D76616C7565207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D73696E676C65526F772D76616C756520';
wwv_flow_api.g_varchar2_table(411) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(412) := '6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E61';
wwv_flow_api.g_varchar2_table(413) := '2D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0A';
wwv_flow_api.g_varchar2_table(414) := '20206261636B67726F756E642D636F6C6F723A20233063313233333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0A2E612D4952522D636F6E74726F6C734C6162656C207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(415) := '3A20236666666666663B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D6668742D7468656164202E';
wwv_flow_api.g_varchar2_table(416) := '612D4952522D686561646572207B0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A20207D0A7D0A0A2E742D4C696E6B734C6973742D6974656D2C0A2E742D4C696E6B734C6973742D6C696E6B207B0A20';
wwv_flow_api.g_varchar2_table(417) := '20626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(418) := '6F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020317078202330633132333320696E7365743B0A7D0A0A2E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(419) := '6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A20236439643964393B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D';
wwv_flow_api.g_varchar2_table(420) := '6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A68';
wwv_flow_api.g_varchar2_table(421) := '6F766572202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69';
wwv_flow_api.g_varchar2_table(422) := '732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A0A2E742D4C696E6B734C6973742D2D6272';
wwv_flow_api.g_varchar2_table(423) := '69676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A2072676261283235352C203235352C20323535';
wwv_flow_api.g_varchar2_table(424) := '2C20302E35293B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(425) := '236362643166333B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A2072676261283235352C20';
wwv_flow_api.g_varchar2_table(426) := '3235352C203235352C20302E3735293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0A20206261636B67726F756E643A206C696E656172';
wwv_flow_api.g_varchar2_table(427) := '2D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(428) := '2E30313529293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A20233063313233333B0A7D0A2E742D4C696E6B';
wwv_flow_api.g_varchar2_table(429) := '734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0A7D0A2E742D4C696E6B734C6973742D2D73686F77';
wwv_flow_api.g_varchar2_table(430) := '4261646765202E742D4C696E6B734C6973742D6261646765207B0A2020626F726465722D7261646975733A203470783B0A7D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(431) := '65722D7261646975733A20313030253B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D4C696E6B734C6973742D2D61637469';
wwv_flow_api.g_varchar2_table(432) := '6F6E73202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C69';
wwv_flow_api.g_varchar2_table(433) := '73742D69636F6E2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D';
wwv_flow_api.g_varchar2_table(434) := '4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A2020636F6C6F723A20233264326432643B0A7D0A0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(435) := '643A20233463643936343B0A2020636F6C6F723A2077686974653B0A7D0A626F6479202E742D4C6F67696E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C6F67696E2D726567696F6E207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(436) := '6E642D636F6C6F723A20236666666666663B0A7D0A2E742D4C6F67696E2D6C6F676F2E6661207B0A2020636F6C6F723A20233063313233333B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A203438307078';
wwv_flow_api.g_varchar2_table(437) := '29207B0A20202E742D50616765426F64792D2D6C6F67696E2C0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0A202020206261636B67726F756E642D636F6C6F723A20236666666666663B0A20207D0A7D0A0A2E742D4D65';
wwv_flow_api.g_varchar2_table(438) := '6469614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0A2020626F726465722D72696768';
wwv_flow_api.g_varchar2_table(439) := '743A2031707820736F6C696420236439643964393B0A7D0A0A612E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233333376163303B0A7D0A612E742D4D656469614C6973742D6974656D577261703A686F766572207B';
wwv_flow_api.g_varchar2_table(440) := '0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233333376163303B0A7D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(441) := '20317078202330633132333320696E7365743B0A7D0A2E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4D656469614C6973742D62616467652C0A2E742D4D656469614C6973742D64';
wwv_flow_api.g_varchar2_table(442) := '657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D4D656469614C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974';
wwv_flow_api.g_varchar2_table(443) := '656D3A6265666F72652C0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E612D4D656E754261722D6C61';
wwv_flow_api.g_varchar2_table(444) := '62656C207B0A2020636F6C6F723A20236266626662663B0A20206C696E652D6865696768743A20323070783B0A7D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0A2020646973706C61793A20696E6C';
wwv_flow_api.g_varchar2_table(445) := '696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D617267696E2D6C6566743A202D3470783B0A7D0A2E612D4D';
wwv_flow_api.g_varchar2_table(446) := '656E754261722D6974656D207B0A20206261636B67726F756E643A20233030303030303B0A2020626F726465722D72696768743A2031707820736F6C696420233161316131613B0A2020626F726465722D6C6566743A2031707820736F6C696420233161';
wwv_flow_api.g_varchar2_table(447) := '316131613B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E612D4D656E754261722D6974656D2E612D4D656E';
wwv_flow_api.g_varchar2_table(448) := '752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B';
wwv_flow_api.g_varchar2_table(449) := '0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E';
wwv_flow_api.g_varchar2_table(450) := '754261722D6C6162656C207B0A2020636F6C6F723A2072676261283139312C203139312C203139312C20302E35293B0A7D0A2E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233161316131';
wwv_flow_api.g_varchar2_table(451) := '613B0A7D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A0A2E612D4D656E752D636F6E74656E74207B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(452) := '3A203270783B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233264326432643B0A7D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(453) := '6C6F723A20236433643364333B0A7D0A2E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69';
wwv_flow_api.g_varchar2_table(454) := '732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236563656365633B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E';
wwv_flow_api.g_varchar2_table(455) := '6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233264326432643B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E';
wwv_flow_api.g_varchar2_table(456) := '6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233664366436643B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870';
wwv_flow_api.g_varchar2_table(457) := '616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A2020636F6C6F723A20236266626662663B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(458) := '6E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E7520';
wwv_flow_api.g_varchar2_table(459) := '2E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D65';
wwv_flow_api.g_varchar2_table(460) := '6E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E612D4D656E7520';
wwv_flow_api.g_varchar2_table(461) := '2E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20236266626662663B0A7D0A2E612D4D656E75202E612D4D656E752D616363656C207B';
wwv_flow_api.g_varchar2_table(462) := '0A2020636F6C6F723A20726762612834352C2034352C2034352C20302E3735293B0A7D0A2E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283233362C203233362C203233362C20302E3935293B';
wwv_flow_api.g_varchar2_table(463) := '0A2020626F726465722D636F6C6F723A20236433643364333B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A2E612D4D656E75426172207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(464) := '6F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(465) := '6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233333333333333B0A20206C696E652D6865696768743A20323070783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375';
wwv_flow_api.g_varchar2_table(466) := '624D656E75436F6C207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A2020';
wwv_flow_api.g_varchar2_table(467) := '6D617267696E2D6C6566743A202D3470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20236632663266323B0A2020626F726465722D72696768743A2031707820736F6C6964202364';
wwv_flow_api.g_varchar2_table(468) := '39643964393B0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(469) := '64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D';
wwv_flow_api.g_varchar2_table(470) := '656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B';
wwv_flow_api.g_varchar2_table(471) := '0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(472) := '612835312C2035312C2035312C20302E35293B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(473) := '4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(474) := '733A203270783B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D656E752D6974656D536570202E612D4D656E752D685365';
wwv_flow_api.g_varchar2_table(475) := '70617261746F72207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(476) := '526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E';
wwv_flow_api.g_varchar2_table(477) := '75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(478) := '67696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233830383038303B0A7D';
wwv_flow_api.g_varchar2_table(479) := '0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(480) := '642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D';
wwv_flow_api.g_varchar2_table(481) := '656E752D737461747573436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D52656769';
wwv_flow_api.g_varchar2_table(482) := '6F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D697465';
wwv_flow_api.g_varchar2_table(483) := '6D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(484) := '752D696E6E6572202E612D4D656E752D616363656C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020';
wwv_flow_api.g_varchar2_table(485) := '636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(486) := '4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0A2020626F726465722D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(487) := '20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A0A2E742D486561646572207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D486561646572202E612D4D656E754261722D6C6162656C207B0A2020636F';
wwv_flow_api.g_varchar2_table(488) := '6C6F723A20236236626665653B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D4865616465';
wwv_flow_api.g_varchar2_table(489) := '72202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233161316131612021696D706F727461';
wwv_flow_api.g_varchar2_table(490) := '6E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F63757365';
wwv_flow_api.g_varchar2_table(491) := '64207B0A20206261636B67726F756E642D636F6C6F723A20233161316131612021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C';
wwv_flow_api.g_varchar2_table(492) := '6162656C2C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236236626665652021696D706F';
wwv_flow_api.g_varchar2_table(493) := '7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E';
wwv_flow_api.g_varchar2_table(494) := '752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233161316131612021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D65';
wwv_flow_api.g_varchar2_table(495) := '6E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283138322C203139312C203233382C20302E38293B0A2020626F726465722D636F6C6F723A20233236323632363B0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(496) := '20313030253B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D4865616465';
wwv_flow_api.g_varchar2_table(497) := '72202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(498) := '233430343034303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E20';
wwv_flow_api.g_varchar2_table(499) := '7B0A2020636F6C6F723A20233464346434643B0A2020626F726465722D636F6C6F723A20233464346434643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564';
wwv_flow_api.g_varchar2_table(500) := '203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236236626665653B0A2020626F726465722D636F6C6F723A20236236626665653B0A2020636F6C6F723A202330373062';
wwv_flow_api.g_varchar2_table(501) := '31653B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A202337383738';
wwv_flow_api.g_varchar2_table(502) := '37383B0A2020626F726465722D636F6C6F723A20233738373837383B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261';
wwv_flow_api.g_varchar2_table(503) := '636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236236626665653B0A7D0A2E742D486561646572202E612D4D656E752D6163';
wwv_flow_api.g_varchar2_table(504) := '63656C207B0A2020636F6C6F723A2072676261283138322C203139312C203233382C20302E3735293B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D';
wwv_flow_api.g_varchar2_table(505) := '4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233064306430642021696D706F7274616E743B0A7D0A2E742D426F6479207B0A20200A20200A20200A20200A20200A20';
wwv_flow_api.g_varchar2_table(506) := '200A7D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233336333633363B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A';
wwv_flow_api.g_varchar2_table(507) := '2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(508) := '726F756E642D636F6C6F723A20236463646364632021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D426F6479202E612D4D656E754261722D6974656D2E';
wwv_flow_api.g_varchar2_table(509) := '612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236463646364632021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E';
wwv_flow_api.g_varchar2_table(510) := '752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A20';
wwv_flow_api.g_varchar2_table(511) := '20636F6C6F723A20233336333633362021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D426F6479202E612D4D';
wwv_flow_api.g_varchar2_table(512) := '656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236463646364632021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(513) := '61722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612835342C2035342C2035342C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F';
wwv_flow_api.g_varchar2_table(514) := '726465722D7261646975733A20313030253B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E';
wwv_flow_api.g_varchar2_table(515) := '2C0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236235623562353B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(516) := '2D636F6C6F723A20236235623562353B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E61';
wwv_flow_api.g_varchar2_table(517) := '2D49636F6E207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D65787061';
wwv_flow_api.g_varchar2_table(518) := '6E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233336333633363B0A2020626F726465722D636F6C6F723A20233336333633363B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(519) := '6635663566353B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(520) := '666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236463646364633B0A7D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261';
wwv_flow_api.g_varchar2_table(521) := '636B67726F756E642D636F6C6F723A20236463646364633B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F6479202E612D4D656E752D616363656C20';
wwv_flow_api.g_varchar2_table(522) := '7B0A2020636F6C6F723A20726762612835342C2035342C2035342C20302E3735293B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(523) := '752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236538653865382021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(524) := '642D636F6C6F723A20236536653665363B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236463646364633B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D';
wwv_flow_api.g_varchar2_table(525) := '666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(526) := '3A20233430343034303B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(527) := '612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(528) := '0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B';
wwv_flow_api.g_varchar2_table(529) := '0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C616265';
wwv_flow_api.g_varchar2_table(530) := '6C2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233430343034302021696D706F727461';
wwv_flow_api.g_varchar2_table(531) := '6E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D';
wwv_flow_api.g_varchar2_table(532) := '63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(533) := '7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20313030253B';
wwv_flow_api.g_varchar2_table(534) := '0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D526567696F6E202E612D4D';
wwv_flow_api.g_varchar2_table(535) := '656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A2020626F726465722D636F6C6F723A20236266626662';
wwv_flow_api.g_varchar2_table(536) := '663B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F';
wwv_flow_api.g_varchar2_table(537) := '6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D';
wwv_flow_api.g_varchar2_table(538) := '4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0A2020626F726465722D636F6C6F723A20233430343034303B0A2020636F6C6F723A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(539) := '2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020';
wwv_flow_api.g_varchar2_table(540) := '626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(541) := '6E642D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0A';
wwv_flow_api.g_varchar2_table(542) := '2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D';
wwv_flow_api.g_varchar2_table(543) := '656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(544) := '726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(545) := '6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261';
wwv_flow_api.g_varchar2_table(546) := '636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(547) := '656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233064306430642021696D706F7274616E743B0A7D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E61';
wwv_flow_api.g_varchar2_table(548) := '2D4D656E752D6C6162656C207B0A2020636F6C6F723A20236236626665653B0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0A7D0A0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D';
wwv_flow_api.g_varchar2_table(549) := '656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A2020626F726465722D77696474683A20303B0A7D0A2E742D4E6176';
wwv_flow_api.g_varchar2_table(550) := '69676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(551) := '6E642D636F6C6F723A20233161316131612021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0A2E742D4E61';
wwv_flow_api.g_varchar2_table(552) := '7669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236266626662662021696D706F7274616E743B0A7D0A2E742D4E6176696761';
wwv_flow_api.g_varchar2_table(553) := '74696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D20612C0A2E742D4E617669676174696F6E42';
wwv_flow_api.g_varchar2_table(554) := '61722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0A2020636F6C6F723A20236362643166332021696D706F7274616E743B0A7D0A0A2E742D506F7075704C4F562D6C696E6B7320613A';
wwv_flow_api.g_varchar2_table(555) := '686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233333376163303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0A20206261636B';
wwv_flow_api.g_varchar2_table(556) := '67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(557) := '20234641464146413B0A7D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(558) := '233333376163303B0A7D0A2E742D506167652D2D706F7075704C4F56207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D506F7075704C4F562D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(559) := '20236563656365633B0A7D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0A2020';
wwv_flow_api.g_varchar2_table(560) := '636F6C6F723A20233232323232323B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B73';
wwv_flow_api.g_varchar2_table(561) := '20612C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(562) := '6E642D636F6C6F723A20233534393364323B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233736373637363B0A7D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(563) := '7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233632363236323B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A202336';
wwv_flow_api.g_varchar2_table(564) := '32363236323B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A2023383038303830';
wwv_flow_api.g_varchar2_table(565) := '3B0A7D0A0A2E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E6669656C64646174612062207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F64792D74';
wwv_flow_api.g_varchar2_table(566) := '69746C65202E6669656C64646174612062207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E66';
wwv_flow_api.g_varchar2_table(567) := '69656C646461746120622C0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(568) := '3A20236666666666663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D68656164657220';
wwv_flow_api.g_varchar2_table(569) := '2E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E643A207472616E73706172656E743B0A';
wwv_flow_api.g_varchar2_table(570) := '7D0A2E742D526567696F6E2D2D737461636B6564207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D737461636B6564203E202E742D526567696F6E2D686561646572207B0A2020626F';
wwv_flow_api.g_varchar2_table(571) := '726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A20';
wwv_flow_api.g_varchar2_table(572) := '20626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D52656769';
wwv_flow_api.g_varchar2_table(573) := '6F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(574) := '2D6865616465722C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A202062';
wwv_flow_api.g_varchar2_table(575) := '6F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(576) := '2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(577) := '72202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(578) := '723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D52656769';
wwv_flow_api.g_varchar2_table(579) := '6F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233333393566663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E20';
wwv_flow_api.g_varchar2_table(580) := '2E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(581) := '2D7469746C652C0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572';
wwv_flow_api.g_varchar2_table(582) := '203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D6865616465722C0A2E742D';
wwv_flow_api.g_varchar2_table(583) := '526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A2020626F726465722D626F74746F6D';
wwv_flow_api.g_varchar2_table(584) := '3A2031707820736F6C696420236666616133333B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74332E742D52';
wwv_flow_api.g_varchar2_table(585) := '6567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(586) := '2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(587) := '7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A';
wwv_flow_api.g_varchar2_table(588) := '20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233261633834353B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865';
wwv_flow_api.g_varchar2_table(589) := '61646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D52';
wwv_flow_api.g_varchar2_table(590) := '6567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(591) := '2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D61636365';
wwv_flow_api.g_varchar2_table(592) := '6E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420';
wwv_flow_api.g_varchar2_table(593) := '236138613861633B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72';
wwv_flow_api.g_varchar2_table(594) := '646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D5265';
wwv_flow_api.g_varchar2_table(595) := '67696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(596) := '686561646572207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(597) := '2D526567696F6E2068322E742D526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D626F6479207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D2D68696465';
wwv_flow_api.g_varchar2_table(598) := '53686F772E69732D636F6C6C6170736564207B0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D7363726F6C6C426F6479203E202E742D526567696F6E2D626F647957726170';
wwv_flow_api.g_varchar2_table(599) := '203E202E742D526567696F6E2D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D6772616469';
wwv_flow_api.g_varchar2_table(600) := '656E742872676261283235352C203235352C203235352C2030292C20236666666666662037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(601) := '203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(602) := '0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0A20';
wwv_flow_api.g_varchar2_table(603) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D73696465202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567';
wwv_flow_api.g_varchar2_table(604) := '696F6E2C0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E2D2D6E6F4247207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D';
wwv_flow_api.g_varchar2_table(605) := '0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E';
wwv_flow_api.g_varchar2_table(606) := '207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0A20';
wwv_flow_api.g_varchar2_table(607) := '20636F6C6F723A20234646463B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B';
wwv_flow_api.g_varchar2_table(608) := '0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976653A666F637573207B0A';
wwv_flow_api.g_varchar2_table(609) := '20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D6E6578742D726567696F6E207B0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(610) := '75733A2032707820302030203270783B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F6E207B0A2020626F726465722D7261646975733A2030203270782032707820303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(611) := '742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(612) := '2D636F6C6F723A207267626128302C20302C20302C20302E3435293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D5265';
wwv_flow_api.g_varchar2_table(613) := '67696F6E2D6361726F7573656C4C696E6B3A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B20';
wwv_flow_api.g_varchar2_table(614) := '7B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A2020626F726465722D7261646975733A20313030253B0A7D0A0A2E742D5265706F72742D63656C6C2C0A2E742D5265706F72742D636F6C4865';
wwv_flow_api.g_varchar2_table(615) := '6164207B0A2020626F726465722D6C6566743A2031707820736F6C696420236536653665363B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D7265706F7274207472202E742D526570';
wwv_flow_api.g_varchar2_table(616) := '6F72742D63656C6C3A6C6173742D6368696C642C0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0A2020626F726465722D72696768743A2031707820736F6C6964202365';
wwv_flow_api.g_varchar2_table(617) := '36653665363B0A7D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(618) := '706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A';
wwv_flow_api.g_varchar2_table(619) := '7D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72';
wwv_flow_api.g_varchar2_table(620) := '742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F7274616E743B0A7D0A2E742D5265706F72';
wwv_flow_api.g_varchar2_table(621) := '742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_api.g_varchar2_table(622) := '6E743B0A7D0A0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(623) := '6C6F723A20236663666366633B0A7D0A0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(624) := '233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D536F6369616C466F6F746572207B0A202070616464696E672D746F703A20343870783B0A202070616464696E672D626F74746F6D3A20323470783B0A7D0A2E742D536F63';
wwv_flow_api.g_varchar2_table(625) := '69616C466F6F746572202E726F77207B0A202070616464696E672D746F703A203870783B0A7D0A2E742D536F6369616C466F6F746572202E636F6C207B0A202070616464696E672D626F74746F6D3A203870783B0A2020746578742D616C69676E3A2063';
wwv_flow_api.g_varchar2_table(626) := '656E7465723B0A20207472616E736974696F6E3A20616C6C202E32733B0A7D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D387078293B0A';
wwv_flow_api.g_varchar2_table(627) := '20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6F2D7472616E73666F726D3A207472616E736C61746559282D38';
wwv_flow_api.g_varchar2_table(628) := '7078293B0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0A7D0A2E742D536F6369616C46';
wwv_flow_api.g_varchar2_table(629) := '6F6F7465722061207B0A20207472616E736974696F6E3A20616C6C202E32733B0A2020646973706C61793A20626C6F636B3B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A2020746578742D616C69676E3A2063656E7465723B0A2020';
wwv_flow_api.g_varchar2_table(630) := '636F6C6F723A20726762612835342C2035342C2035342C20302E38293B0A7D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0A2020646973706C61793A20626C6F636B3B0A20206D617267696E3A2030206175746F3B0A2020636F';
wwv_flow_api.g_varchar2_table(631) := '6C6F723A20726762612835342C2035342C2035342C20302E34293B0A7D0A2E742D536F6369616C466F6F7465722061202E6661207B0A2020666F6E742D73697A653A20323870783B0A202077696474683A20333270783B0A20206865696768743A203332';
wwv_flow_api.g_varchar2_table(632) := '70783B0A20206C696E652D6865696768743A20333270783B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0A202077696474683A20333270783B0A2020686569676874';
wwv_flow_api.g_varchar2_table(633) := '3A20333270783B0A20206C696E652D6865696768743A20333270783B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0A2020666F6E742D73697A653A20333270783B0A7D0A2E742D536F6369616C466F6F74';
wwv_flow_api.g_varchar2_table(634) := '657220613A686F7665722C0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0A2020636F6C6F723A20233333376163303B0A7D0A2E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(635) := '3336333633363B0A7D0A2E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20233639363936393B0A7D0A2E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233639363936393B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(636) := '2D526567696F6E202E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A202337333733';
wwv_flow_api.g_varchar2_table(637) := '37333B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0A2020636F6C6F723A20233430';
wwv_flow_api.g_varchar2_table(638) := '343034303B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D5374617475734C6973742D68656164657254657874416C742C0A2E742D5374617475734C6973742D617474722C0A2E742D5374617475734C6973742D';
wwv_flow_api.g_varchar2_table(639) := '7465787444657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D6974656D5469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D6461746573202E74';
wwv_flow_api.g_varchar2_table(640) := '2D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D5374617475734C69';
wwv_flow_api.g_varchar2_table(641) := '73742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020626F726465722D7261646975733A2032707820327078203020303B0A7D0A';
wwv_flow_api.g_varchar2_table(642) := '2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0A2020626F726465722D7261646975733A20323470783B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A2020636F6C';
wwv_flow_api.g_varchar2_table(643) := '6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(644) := '6F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0A2E742D';
wwv_flow_api.g_varchar2_table(645) := '5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A';
wwv_flow_api.g_varchar2_table(646) := '7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A202334636439';
wwv_flow_api.g_varchar2_table(647) := '36343B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(648) := '3A20236666636330303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(649) := '6F6C6F723A20234630463046303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(650) := '4130413041303B0A7D0A0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0A202062';
wwv_flow_api.g_varchar2_table(651) := '6F782D736861646F773A2030202D3270782030202331663266383620696E7365743B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F6375732C0A2E617065782D72647320613A666F637573207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(652) := '6861646F773A20302030203020327078202331663266383620696E7365743B0A7D0A2E742D546162732D2D70696C6C207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236563656365632C2023663466346634293B0A20';
wwv_flow_api.g_varchar2_table(653) := '20626F726465722D7261646975733A203270783B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233736373637363B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D7069';
wwv_flow_api.g_varchar2_table(654) := '6C6C202E742D49636F6E207B0A2020636F6C6F723A20233632363236323B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233632363236323B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(655) := '2E742D546162732D2D70696C6C202E742D49636F6E2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D426F6479202E742D546162732D2D';
wwv_flow_api.g_varchar2_table(656) := '70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233232323232323B';
wwv_flow_api.g_varchar2_table(657) := '0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E';
wwv_flow_api.g_varchar2_table(658) := '6B2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572';
wwv_flow_api.g_varchar2_table(659) := '207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0A2020626F726465722D636F6C6F723A20233436393646433B0A7D0A2E742D54616273';
wwv_flow_api.g_varchar2_table(660) := '2D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E';
wwv_flow_api.g_varchar2_table(661) := '742D546162732D6C696E6B207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0A2020';
wwv_flow_api.g_varchar2_table(662) := '6261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B';
wwv_flow_api.g_varchar2_table(663) := '2C0A2E617065782D7264732061207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665722C0A2E617065782D72647320613A686F766572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(664) := '6F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A6163746976652C0A2E617065782D72647320613A616374697665207B0A20206261636B';
wwv_flow_api.g_varchar2_table(665) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A7D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F6479202E617065782D7264732061207B0A202063';
wwv_flow_api.g_varchar2_table(666) := '6F6C6F723A20233336333633363B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D7469746C65202E617065782D72647320612C0A2E742D426F64792D696E666F';
wwv_flow_api.g_varchar2_table(667) := '202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D696E666F202E617065782D7264732061207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E742D546162732D2D73696D';
wwv_flow_api.g_varchar2_table(668) := '706C65202E742D546162732D6C696E6B2C0A2E742D526567696F6E202E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E617065782D7264732D686F7665722E6C6566742061207B0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(669) := '202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023646565316534203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A20206261636B67726F756E643A206C696E6561722D6772';
wwv_flow_api.g_varchar2_table(670) := '616469656E7428746F2072696768742C2023646565316534203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A7D0A2E617065782D7264732D686F7665722E72696768742061207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(671) := '756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236465653165342030252C2072676261283235352C203235352C203235352C2030292031252C202364656531653420353025293B0A20200A20206261636B67726F';
wwv_flow_api.g_varchar2_table(672) := '756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236465653165342030252C2072676261283235352C203235352C203235352C2030292031252C202364656531653420353025293B0A20200A7D0A0A2E612D546167436C6F75';
wwv_flow_api.g_varchar2_table(673) := '642D6C696E6B207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E643A20236661666166613B0A20207472616E736974696F6E3A206261636B67726F';
wwv_flow_api.g_varchar2_table(674) := '756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0A2020636F6C6F723A20233332373762633B0A7D0A2E612D546167436C6F75642D6C696E6B';
wwv_flow_api.g_varchar2_table(675) := '207370616E207B0A20207472616E736974696F6E3A20636F6C6F72202E32733B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(676) := '6C6F723A20233063313233333B0A2020626F726465722D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A2020626F782D736861646F773A20302030203020327078202330633132333320696E7365743B0A7D0A2E61';
wwv_flow_api.g_varchar2_table(677) := '2D546167436C6F75642D6C696E6B3A686F766572207370616E207B0A2020636F6C6F723A20236362643166333B0A7D0A2E612D546167436C6F75642D636F756E74207B0A2020636F6C6F723A20233636363636363B0A2020666F6E742D7765696768743A';
wwv_flow_api.g_varchar2_table(678) := '203230303B0A7D0A2E742D54696D656C696E65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D757365726E616D652C0A2E742D54696D656C696E652D646174652C0A2E742D54696D656C696E652D64657363207B';
wwv_flow_api.g_varchar2_table(679) := '0A2020636F6C6F723A20233733373337333B0A7D0A2E742D54696D656C696E652D77726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D74797065207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(680) := '6635663566353B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20234646463B0A7D0A';
wwv_flow_api.g_varchar2_table(681) := '2E742D54696D656C696E652D747970652E69732D75706461746564207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D747970652E69732D72656D6F';
wwv_flow_api.g_varchar2_table(682) := '766564207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D777261703A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D';
wwv_flow_api.g_varchar2_table(683) := '736861646F773A20302030203020317078202330633132333320696E7365743B0A7D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D';
wwv_flow_api.g_varchar2_table(684) := '0A2E742D526567696F6E207B0A20200A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(685) := '30203020317078202365386538653820696E7365743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(686) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(687) := '566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_api.g_varchar2_table(688) := '704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D547265';
wwv_flow_api.g_varchar2_table(689) := '65566965772D726F772C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(690) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(691) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D526567696F6E202E612D54726565566965772D6E6F6465';
wwv_flow_api.g_varchar2_table(692) := '2D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(693) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(694) := '746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(695) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D547265655669';
wwv_flow_api.g_varchar2_table(696) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(697) := '54726565566965772D636F6E74656E74202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(698) := '62612836342C2036342C2036342C20302E3935293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D5265';
wwv_flow_api.g_varchar2_table(699) := '67696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(700) := '2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E';
wwv_flow_api.g_varchar2_table(701) := '74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(702) := '6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D';
wwv_flow_api.g_varchar2_table(703) := '526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(704) := '76656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_api.g_varchar2_table(705) := '612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(706) := '6965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D72';
wwv_flow_api.g_varchar2_table(707) := '6F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E61';
wwv_flow_api.g_varchar2_table(708) := '2D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D';
wwv_flow_api.g_varchar2_table(709) := '666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F';
wwv_flow_api.g_varchar2_table(710) := '6375736564207B0A2020626F782D736861646F773A20302030203020317078202331303138343420696E7365743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D72';
wwv_flow_api.g_varchar2_table(711) := '6F772E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(712) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20233061306632623B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(713) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(714) := '4C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(715) := '723A20233037306231653B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(716) := '3064313333372021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F';
wwv_flow_api.g_varchar2_table(717) := '67676C652C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283138322C2031';
wwv_flow_api.g_varchar2_table(718) := '39312C203233382C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C';
wwv_flow_api.g_varchar2_table(719) := '653A686F7665722C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A202362';
wwv_flow_api.g_varchar2_table(720) := '36626665652021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A202362';
wwv_flow_api.g_varchar2_table(721) := '36626665652021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236266626662663B0A7D0A';
wwv_flow_api.g_varchar2_table(722) := '2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(723) := '202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236266626662663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(724) := '2D636F6E74656E742E69732D686F766572202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E6661';
wwv_flow_api.g_varchar2_table(725) := '2C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D547265654E6176202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(726) := '2D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20236236626665653B0A7D0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(727) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(728) := '2D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C';
wwv_flow_api.g_varchar2_table(729) := '0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20236236626665653B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(730) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283139312C203139312C203139312C20302E3735293B0A7D0A2E742D547265';
wwv_flow_api.g_varchar2_table(731) := '654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236266626662662021696D706F7274616E743B0A7D0A2E742D547265654E6176';
wwv_flow_api.g_varchar2_table(732) := '202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D547265654E6176202E612D54';
wwv_flow_api.g_varchar2_table(733) := '726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(734) := '2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236236626665653B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(735) := '76656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236236626665653B0A7D0A0A2E742D4469616C6F672D2D77697A617264207B0A2020626F726465723A20236536653665363B';
wwv_flow_api.g_varchar2_table(736) := '0A7D0A2E742D57697A617264207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0A2020636F';
wwv_flow_api.g_varchar2_table(737) := '6C6F723A20233430343034303B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D57697A6172642D626F64';
wwv_flow_api.g_varchar2_table(738) := '79207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203430252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D6772616469656E742872676261283235352C203235';
wwv_flow_api.g_varchar2_table(739) := '352C203235352C2030292C20236666666666662036302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D677261';
wwv_flow_api.g_varchar2_table(740) := '6469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E742D57697A6172642D';
wwv_flow_api.g_varchar2_table(741) := '2D6D6F64616C202E742D526567696F6E207B0A20206261636B67726F756E643A20236666666666663B0A7D0A2E742D57697A617264207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D57697A617264202E742D57697A61';
wwv_flow_api.g_varchar2_table(742) := '72642D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020626F726465722D636F6C6F723A20236564656465643B0A7D0A2E742D57697A61726453746570732D777261703A6166746572207B0A20206261';
wwv_flow_api.g_varchar2_table(743) := '636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236363636363633B0A';
wwv_flow_api.g_varchar2_table(744) := '7D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A2023464646';
wwv_flow_api.g_varchar2_table(745) := '3B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A7D0A2E742D57697A6172645374';
wwv_flow_api.g_varchar2_table(746) := '6570732D6C6162656C207B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(747) := '303B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261';
wwv_flow_api.g_varchar2_table(748) := '646975733A20303B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233336333633363B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(749) := '2E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0A2020626F726465722D7261646975733A20313030253B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E';
wwv_flow_api.g_varchar2_table(750) := '65207B0A2020626F726465722D746F702D636F6C6F723A20234630463046303B0A7D0A0A626F6479202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(751) := '636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0A2020636F6C6F723A20233333376163303B0A7D0A626F6479202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(752) := '686561646572207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D68';
wwv_flow_api.g_varchar2_table(753) := '65616465722061207B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0A626F';
wwv_flow_api.g_varchar2_table(754) := '6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73';
wwv_flow_api.g_varchar2_table(755) := '746174652D64656661756C7420612C0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0A626F6479202E75692D73746174652D61637469';
wwv_flow_api.g_varchar2_table(756) := '766520612C0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0A2020636F6C6F723A20233333376163303B0A7D0A626F6479202E75692D73';
wwv_flow_api.g_varchar2_table(757) := '746174652D686F7665722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(758) := '67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D66';
wwv_flow_api.g_varchar2_table(759) := '6F6375732C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0A2020626F782D736861646F773A20302030203020317078202330633132333320696E7365742C203020302031707820327078207267';
wwv_flow_api.g_varchar2_table(760) := '62612831322C2031382C2035312C20302E3235292021696D706F7274616E743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D646174657069636B65';
wwv_flow_api.g_varchar2_table(761) := '72202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202330633132333320696E7365742C2030';
wwv_flow_api.g_varchar2_table(762) := '2030203170782032707820726762612831322C2031382C2035312C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D73746174652D686F76657220612C0A626F6479202E75692D73746174652D686F76657220613A686F766572';
wwv_flow_api.g_varchar2_table(763) := '2C0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0A626F6479202E75692D73746174652D666F63757320612C0A626F6479202E75692D73746174';
wwv_flow_api.g_varchar2_table(764) := '652D666F63757320613A686F7665722C0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0A2020636F6C6F723A20233333376163303B0A7D0A62';
wwv_flow_api.g_varchar2_table(765) := '6F6479202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374';
wwv_flow_api.g_varchar2_table(766) := '697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A7D0A0A626F6479202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D636F';
wwv_flow_api.g_varchar2_table(767) := '6E74656E74202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20233634373664613B';
wwv_flow_api.g_varchar2_table(768) := '0A2020636F6C6F723A20233230323032303B0A7D0A626F6479202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0A626F6479';
wwv_flow_api.g_varchar2_table(769) := '202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0A2020636F6C6F723A20233230323032303B0A7D0A626F6479202E75692D73746174652D6572726F722C0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(770) := '2D636F6E74656E74202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F';
wwv_flow_api.g_varchar2_table(771) := '6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D68';
wwv_flow_api.g_varchar2_table(772) := '6561646572202E75692D73746174652D6572726F722061207B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D636F6E74656E74202E7569';
wwv_flow_api.g_varchar2_table(773) := '2D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0A2020636F6C6F723A20236539306330303B0A7D0A0A626F6479202E75692D6461746570';
wwv_flow_api.g_varchar2_table(774) := '69636B6572207464207370616E2E75692D73746174652D64656661756C742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(775) := '73706172656E743B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(776) := '646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A2020';
wwv_flow_api.g_varchar2_table(777) := '666F6E742D7765696768743A20626F6C643B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0A626F';
wwv_flow_api.g_varchar2_table(778) := '6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023306331323333';
wwv_flow_api.g_varchar2_table(779) := '2021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B65722074642061';
wwv_flow_api.g_varchar2_table(780) := '2E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B657220746420';
wwv_flow_api.g_varchar2_table(781) := '7370616E2E75692D73746174652D64656661756C743A666F6375732C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F';
wwv_flow_api.g_varchar2_table(782) := '782D736861646F773A20302030203020317078202330633132333320696E7365742C20302030203170782032707820726762612831322C2031382C2035312C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D64617465706963';
wwv_flow_api.g_varchar2_table(783) := '6B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D';
wwv_flow_api.g_varchar2_table(784) := '686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A626F6479202E75692D646174657069636B6572207468207B0A2020636F6C6F723A20233830383038303B0A7D0A626F6479202E75692D646174';
wwv_flow_api.g_varchar2_table(785) := '657069636B6572202E75692D646174657069636B65722D6865616465722C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0A626F6479202E75692D646174657069';
wwv_flow_api.g_varchar2_table(786) := '636B6572202E75692D646174657069636B65722D6E6578742C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0A2020626F726465722D7261646975733A203270783B0A7D0A0A626F6479202E75';
wwv_flow_api.g_varchar2_table(787) := '692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A626F';
wwv_flow_api.g_varchar2_table(788) := '6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0A2E742D4469616C6F672D70';
wwv_flow_api.g_varchar2_table(789) := '616765207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0A2E742D4469616C6F672D2D77697A61';
wwv_flow_api.g_varchar2_table(790) := '72642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(791) := '642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(792) := '303B0A7D0A0A626F6479202E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D6C6566742C0A626F647920';
wwv_flow_api.g_varchar2_table(793) := '2E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(794) := '692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E';
wwv_flow_api.g_varchar2_table(795) := '75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D72696768742C0A626F';
wwv_flow_api.g_varchar2_table(796) := '6479202E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(797) := '646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65';
wwv_flow_api.g_varchar2_table(798) := '722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D726967';
wwv_flow_api.g_varchar2_table(799) := '68742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F';
wwv_flow_api.g_varchar2_table(800) := '6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A';
wwv_flow_api.g_varchar2_table(801) := '7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0A';
wwv_flow_api.g_varchar2_table(802) := '2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A2E61635F726573756C7473207B0A2020626F726465723A2031707820736F6C696420236439643964393B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(803) := '20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E61635F6C6F6164696E67207B0A20206261636B67726F756E643A20236666666666662075726C28272E2E2F2E2E2F2E2E2F617065785F75692F696D672F6C65676163792F6C';
wwv_flow_api.g_varchar2_table(804) := '6F6164696E6731367831362E67696627292072696768742063656E746572206E6F2D7265706561743B0A7D0A2E61635F6F6464207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E61635F6F766572207B';
wwv_flow_api.g_varchar2_table(805) := '0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0A626F64';
wwv_flow_api.g_varchar2_table(806) := '79202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D6178';
wwv_flow_api.g_varchar2_table(807) := '6973202E7469636B20746578742C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D44334C696E65';
wwv_flow_api.g_varchar2_table(808) := '4368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334C696E654368617274202E612D';
wwv_flow_api.g_varchar2_table(809) := '44334C696E6543686172742D6178697320706174682C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D4433';
wwv_flow_api.g_varchar2_table(810) := '4261724368617274202E612D443342617243686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0A62';
wwv_flow_api.g_varchar2_table(811) := '6F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973206C69';
wwv_flow_api.g_varchar2_table(812) := '6E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0A20207374726F6B653A20236363636363633B0A7D0A626F6479202E612D44334261724368617274202E612D4433426172436861';
wwv_flow_api.g_varchar2_table(813) := '72742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D4433546F6F6C746970207B0A20206261636B67726F756E642D636F6C6F723A20233830383038303B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(814) := '66666666662021696D706F7274616E743B0A7D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0A2020626F726465722D746F703A20233939393939393B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343';
wwv_flow_api.g_varchar2_table(815) := '686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0A2020626F726465722D77696474683A20303B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2C0A626F6479202E612D443343686172744C6567656E';
wwv_flow_api.g_varchar2_table(816) := '642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7769';
wwv_flow_api.g_varchar2_table(817) := '6474683A20302021696D706F7274616E743B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E612D443343686172744C6567656E642E612D';
wwv_flow_api.g_varchar2_table(818) := '443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0A2020626F726465722D7261646975733A20313030253B0A2020626F726465722D72696768742D77696474';
wwv_flow_api.g_varchar2_table(819) := '683A20303B0A7D0A2E742D426F6479207B0A20200A20200A20200A7D0A2E742D426F6479202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236463646364633B0A2020626F726465722D7261646975733A203270783B';
wwv_flow_api.g_varchar2_table(820) := '0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461';
wwv_flow_api.g_varchar2_table(821) := '794F665765656B207B0A2020636F6C6F723A20233736373637363B0A7D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236566656665663B0A2020636F6C6F723A20233336333633363B0A7D0A';
wwv_flow_api.g_varchar2_table(822) := '2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E';
wwv_flow_api.g_varchar2_table(823) := '742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(824) := '742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20';
wwv_flow_api.g_varchar2_table(825) := '206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C69642023653665';
wwv_flow_api.g_varchar2_table(826) := '3665363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A2023343034';
wwv_flow_api.g_varchar2_table(827) := '3034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(828) := '723A20236639663966393B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(829) := '6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(830) := '6F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A2023666166616661';
wwv_flow_api.g_varchar2_table(831) := '3B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D426F64792D616374696F6E73207B0A20200A20200A20200A7D0A2E';
wwv_flow_api.g_varchar2_table(832) := '742D426F64792D616374696F6E73202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236336633663363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(833) := '6466646664663B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F66576565';
wwv_flow_api.g_varchar2_table(834) := '6B207B0A2020636F6C6F723A20233630363036303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236439643964393B0A2020636F6C6F723A20233230323032303B0A';
wwv_flow_api.g_varchar2_table(835) := '7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A202363';
wwv_flow_api.g_varchar2_table(836) := '62643166333B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A202063';
wwv_flow_api.g_varchar2_table(837) := '6F6C6F723A20233030303030303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236461646164613B0A7D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(838) := '616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236435643564353B0A7D0A2E742D426F64792D696E666F207B0A20200A20200A20200A7D0A2E742D426F64792D696E';
wwv_flow_api.g_varchar2_table(839) := '666F202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236332633763643B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236465653165343B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(840) := '2D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A202336323632';
wwv_flow_api.g_varchar2_table(841) := '36323B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236437646264653B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D426F64792D696E666F202E612D4D696E';
wwv_flow_api.g_varchar2_table(842) := '6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233063313233333B0A2020636F6C6F723A20236362643166333B0A7D0A2E742D426F64792D696E666F202E61';
wwv_flow_api.g_varchar2_table(843) := '2D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D696E';
wwv_flow_api.g_varchar2_table(844) := '666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236438646364663B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A';
wwv_flow_api.g_varchar2_table(845) := '20206261636B67726F756E642D636F6C6F723A20236433643764623B0A7D0A0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233336333633363B0A7D0A2E742D426F64792D69';
wwv_flow_api.g_varchar2_table(846) := '6E666F202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233232323232323B0A7D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0A2E742D4275';
wwv_flow_api.g_varchar2_table(847) := '74746F6E526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573';
wwv_flow_api.g_varchar2_table(848) := '202E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0A2020626F782D736861646F773A20302030203020317078202331613161316120696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973';
wwv_flow_api.g_varchar2_table(849) := '742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(850) := '20317078202330633132333320696E7365743B0A2020636F6C6F723A20233063313233333B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74';
wwv_flow_api.g_varchar2_table(851) := '656E744C6973742D747269676765723A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A2020636F6C6F723A20236362643166333B0A2020626F782D736861646F773A20302030203020317078202331613161';
wwv_flow_api.g_varchar2_table(852) := '316120696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E612D44657461696C';
wwv_flow_api.g_varchar2_table(853) := '6564436F6E74656E744C6973742D69636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(854) := '233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E643A20236362643166333B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E';
wwv_flow_api.g_varchar2_table(855) := '3735293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0A2020636F6C6F723A20233161316131613B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74';
wwv_flow_api.g_varchar2_table(856) := '7269676765723A666F637573207B0A2020636F6C6F723A20233161316131613B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(857) := '0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A626F6479202E636F6E74656E742D746F';
wwv_flow_api.g_varchar2_table(858) := '6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20236362643166333B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C656443';
wwv_flow_api.g_varchar2_table(859) := '6F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(860) := '6F756E643A20236362643166333B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F';
wwv_flow_api.g_varchar2_table(861) := '6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D';
wwv_flow_api.g_varchar2_table(862) := '746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F6479202E612D44657461696C656443';
wwv_flow_api.g_varchar2_table(863) := '6F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6265666F7265207B0A2020626F726465722D636F6C6F723A202363626431';
wwv_flow_api.g_varchar2_table(864) := '6633207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D726164';
wwv_flow_api.g_varchar2_table(865) := '6975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20202D';
wwv_flow_api.g_varchar2_table(866) := '7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E7465';
wwv_flow_api.g_varchar2_table(867) := '6E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0A2020626F726465722D636F6C6F723A2023303030303030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F';
wwv_flow_api.g_varchar2_table(868) := '6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0A2020626F726465722D636F6C6F723A2023303030303030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C74697020';
wwv_flow_api.g_varchar2_table(869) := '2E6172726F772E626F74746F6D2E6C696768743A6166746572207B0A2020626F726465722D636F6C6F723A2023656165616561207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C74697020';
wwv_flow_api.g_varchar2_table(870) := '2E6172726F772E746F703A6265666F7265207B0A2020626F726465722D636F6C6F723A2023303030303030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E74';
wwv_flow_api.g_varchar2_table(871) := '6F703A6166746572207B0A2020626F726465722D636F6C6F723A2023303030303030207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F72';
wwv_flow_api.g_varchar2_table(872) := '65207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023636264316633207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C74697020';
wwv_flow_api.g_varchar2_table(873) := '2E6172726F772E6C6566743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023303030303030207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E';
wwv_flow_api.g_varchar2_table(874) := '636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C2036';
wwv_flow_api.g_varchar2_table(875) := '342C2036342C20302E35293B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E7420747261';
wwv_flow_api.g_varchar2_table(876) := '6E73706172656E74207472616E73706172656E7420233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(877) := '2D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(878) := '6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(879) := '67654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(880) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A2023303037';
wwv_flow_api.g_varchar2_table(881) := '6166663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(882) := '6666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(883) := '73742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(884) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(885) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(886) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(887) := '302030202366666161333320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920';
wwv_flow_api.g_varchar2_table(888) := '7B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(889) := '682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(890) := '3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(891) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(892) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A62';
wwv_flow_api.g_varchar2_table(893) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(894) := '6572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(895) := '67654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(896) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(897) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023356662636534';
wwv_flow_api.g_varchar2_table(898) := '20696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(899) := '756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729';
wwv_flow_api.g_varchar2_table(900) := '2061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(901) := '20372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(902) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(903) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(904) := '654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D';
wwv_flow_api.g_varchar2_table(905) := '736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(906) := '3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(907) := '6467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(908) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A62';
wwv_flow_api.g_varchar2_table(909) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(910) := '20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(911) := '6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D';
wwv_flow_api.g_varchar2_table(912) := '42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(913) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(914) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(915) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(916) := '773A2030202D38707820302030202366663861613020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(917) := '6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(918) := '6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(919) := '6467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(920) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(921) := '6666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(922) := '723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D4261';
wwv_flow_api.g_varchar2_table(923) := '6467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(924) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E';
wwv_flow_api.g_varchar2_table(925) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(926) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(927) := '2030202D38707820302030202334366438356620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(928) := '696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(929) := '742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(930) := '654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(931) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564';
wwv_flow_api.g_varchar2_table(932) := '626265333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(933) := '20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467';
wwv_flow_api.g_varchar2_table(934) := '654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(935) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(936) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(937) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(938) := '202D38707820302030202366666363303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(939) := '642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(940) := '6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(941) := '6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(942) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A202366663632';
wwv_flow_api.g_varchar2_table(943) := '35393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(944) := '6666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(945) := '6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(946) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(947) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E';
wwv_flow_api.g_varchar2_table(948) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D';
wwv_flow_api.g_varchar2_table(949) := '38707820302030202361326131653820696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(950) := '20323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(951) := '656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(952) := '742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(953) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A2023303036656536';
wwv_flow_api.g_varchar2_table(954) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536';
wwv_flow_api.g_varchar2_table(955) := '653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(956) := '742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(957) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(958) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(959) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(960) := '7820302030202366666130316120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(961) := '3429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(962) := '3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(963) := '6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(964) := '67654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A';
wwv_flow_api.g_varchar2_table(965) := '7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A202365366536';
wwv_flow_api.g_varchar2_table(966) := '65363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(967) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(968) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C';
wwv_flow_api.g_varchar2_table(969) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(970) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(971) := '302030202335326166643620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729';
wwv_flow_api.g_varchar2_table(972) := '207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(973) := '74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(974) := '656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(975) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A';
wwv_flow_api.g_varchar2_table(976) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A2023303233343461';
wwv_flow_api.g_varchar2_table(977) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(978) := '61703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(979) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(980) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(981) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020';
wwv_flow_api.g_varchar2_table(982) := '30202365623630353920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B';
wwv_flow_api.g_varchar2_table(983) := '0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(984) := '2D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(985) := '3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(986) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(987) := '6C6F723A20236666313434303B0A2020636F6C6F723A20236666313434303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(988) := '656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(989) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(990) := '6666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467';
wwv_flow_api.g_varchar2_table(991) := '654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030366565363B0A2020636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(992) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(993) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(994) := '66663B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(995) := '74656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536383630303B0A2020636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(996) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(997) := '6C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(998) := '2D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(999) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233337643535323B0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1000) := '37643535323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D4261646765';
wwv_flow_api.g_varchar2_table(1001) := '4C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1002) := '74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233037316630623B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1003) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1004) := '6C6F723A20233831383138373B0A2020636F6C6F723A20233831383138373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1005) := '656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1006) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1007) := '3865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467';
wwv_flow_api.g_varchar2_table(1008) := '654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233234396564323B0A2020636F6C6F723A20233234396564323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1009) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1010) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1011) := '66663B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1012) := '74656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536623830303B0A2020636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1013) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1014) := '6C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1015) := '2D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1016) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431633066393B0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(1017) := '31633066393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D4261646765';
wwv_flow_api.g_varchar2_table(1018) := '4C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1019) := '74682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333935323B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1020) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1021) := '6C6F723A20236666323331373B0A2020636F6C6F723A20236666323331373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1022) := '656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1023) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1024) := '6666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D426164';
wwv_flow_api.g_varchar2_table(1025) := '67654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233434343164313B0A2020636F6C6F723A20233434343164313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1026) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1027) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1028) := '66666666663B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1029) := '742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666336536323B0A2020636F6C6F723A20236666336536323B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1030) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1031) := '73742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D426164';
wwv_flow_api.g_varchar2_table(1032) := '67654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1033) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233139383766663B0A2020636F';
wwv_flow_api.g_varchar2_table(1034) := '6C6F723A20233139383766663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920';
wwv_flow_api.g_varchar2_table(1035) := '2E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1036) := '742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1037) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0A20';
wwv_flow_api.g_varchar2_table(1038) := '20626F726465722D636F6C6F723A20236666613031393B0A2020636F6C6F723A20236666613031393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1039) := '6467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1040) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1041) := '756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1042) := '2820313429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233562646337313B0A2020636F6C6F723A20233562646337313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1043) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E';
wwv_flow_api.g_varchar2_table(1044) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B';
wwv_flow_api.g_varchar2_table(1045) := '0A2020636F6C6F723A20233338346333633B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1046) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233938393839633B0A2020636F6C6F723A20233938393839633B0A7D0A';
wwv_flow_api.g_varchar2_table(1047) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1048) := '70202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1049) := '2820313529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1050) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1051) := '3437623264663B0A2020636F6C6F723A20233437623264663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1052) := '2D6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1053) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A202335646262';
wwv_flow_api.g_varchar2_table(1054) := '65333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1055) := '73742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666643131393B0A2020636F6C6F723A20236666643131393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1056) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1057) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233333333333';
wwv_flow_api.g_varchar2_table(1058) := '333B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1059) := '656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233632636266613B0A2020636F6C6F723A20233632636266613B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1060) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1061) := '616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1062) := '73742D76616C75652061207B0A2020636F6C6F723A20233335363137353B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1063) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666346134303B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1064) := '20236666346134303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42';
wwv_flow_api.g_varchar2_table(1065) := '616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1066) := '656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1067) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0A2020626F72';
wwv_flow_api.g_varchar2_table(1068) := '6465722D636F6C6F723A20233635363364393B0A2020636F6C6F723A20233635363364393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1069) := '6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1070) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1071) := '636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231';
wwv_flow_api.g_varchar2_table(1072) := '29202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236462316133663B0A2020636F6C6F723A20236462316133663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1073) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1074) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0A202063';
wwv_flow_api.g_varchar2_table(1075) := '6F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1076) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030363263633B0A2020636F6C6F723A20233030363263633B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(1077) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E74';
wwv_flow_api.g_varchar2_table(1078) := '2D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232';
wwv_flow_api.g_varchar2_table(1079) := '29202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_api.g_varchar2_table(1080) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A202363633737';
wwv_flow_api.g_varchar2_table(1081) := '30303B0A2020636F6C6F723A20236363373730303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1082) := '6C642820323329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1083) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A';
wwv_flow_api.g_varchar2_table(1084) := '7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1085) := '616C7565207B0A2020626F726465722D636F6C6F723A20233361623434663B0A2020636F6C6F723A20233361623434663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1086) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_api.g_varchar2_table(1087) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233036316330613B0A20';
wwv_flow_api.g_varchar2_table(1088) := '206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1089) := '74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233733373337373B0A2020636F6C6F723A20233733373337373B0A7D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1090) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(1091) := '2C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1092) := '616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1093) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233261383962313B0A2020636F6C6F723A20233261';
wwv_flow_api.g_varchar2_table(1094) := '383962313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D4261646765';
wwv_flow_api.g_varchar2_table(1095) := '4C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1096) := '74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1097) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1098) := '636F6C6F723A20236363613330303B0A2020636F6C6F723A20236363613330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1099) := '6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1100) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1101) := '723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E74';
wwv_flow_api.g_varchar2_table(1102) := '2D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233362616264643B0A2020636F6C6F723A20233362616264643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1103) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1104) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1105) := '3A20233032333434613B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1106) := '654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236464323531623B0A2020636F6C6F723A20236464323531623B0A7D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1107) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D426164';
wwv_flow_api.g_varchar2_table(1108) := '67654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E74';
wwv_flow_api.g_varchar2_table(1109) := '2D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_api.g_varchar2_table(1110) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431343062353B0A';
wwv_flow_api.g_varchar2_table(1111) := '2020636F6C6F723A20233431343062353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1112) := '333029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1113) := '654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1114) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_api.g_varchar2_table(1115) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1116) := '696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1117) := '616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1118) := '682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1119) := '2D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1120) := '6C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1121) := '6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(1122) := '6861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1123) := '2D636F6C6F723A20233463643936343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1124) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020233261';
wwv_flow_api.g_varchar2_table(1125) := '6338343520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1126) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1127) := '4C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1128) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1129) := '616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1130) := '362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1131) := '6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1132) := '6C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(1133) := '3A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038';
wwv_flow_api.g_varchar2_table(1134) := '29207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1135) := '3032333935323B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(1136) := '3A2030202D38707820302030202332386237663920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1137) := '723A20236666336233303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1138) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320';
wwv_flow_api.g_varchar2_table(1139) := '696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1140) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1141) := '742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1142) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1143) := '6467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1144) := '31312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1145) := '4C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1146) := '68696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1147) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1148) := '642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(1149) := '6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F78';
wwv_flow_api.g_varchar2_table(1150) := '2D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1151) := '756E642D636F6C6F723A20233730653138333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1152) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020';
wwv_flow_api.g_varchar2_table(1153) := '30202334366438356620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A2023613561356139';
wwv_flow_api.g_varchar2_table(1154) := '3B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1155) := '742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D';
wwv_flow_api.g_varchar2_table(1156) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E742D43617264732D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1157) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1158) := '74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1159) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1160) := '6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D';
wwv_flow_api.g_varchar2_table(1161) := '42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1162) := '6D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138';
wwv_flow_api.g_varchar2_table(1163) := '292061207B0A2020636F6C6F723A20233335363137353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1164) := '6572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B';
wwv_flow_api.g_varchar2_table(1165) := '0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1166) := '666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1167) := '2030202D38707820302030202366663932386320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1168) := '723A20233739373864653B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1169) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236132613165';
wwv_flow_api.g_varchar2_table(1170) := '3820696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1171) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1172) := '6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1173) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1174) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1175) := '282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1176) := '67654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1177) := '2D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1178) := '742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1179) := '696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020';
wwv_flow_api.g_varchar2_table(1180) := '636F6C6F723A20233036316330613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(1181) := '6F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(1182) := '726F756E642D636F6C6F723A20233830383038343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A';
wwv_flow_api.g_varchar2_table(1183) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(1184) := '302030202339613961396420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A202332663939';
wwv_flow_api.g_varchar2_table(1185) := '63363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_api.g_varchar2_table(1186) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B';
wwv_flow_api.g_varchar2_table(1187) := '0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1188) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1189) := '3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1190) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1191) := '742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E';
wwv_flow_api.g_varchar2_table(1192) := '742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1193) := '74656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1194) := '3239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A68';
wwv_flow_api.g_varchar2_table(1195) := '6F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029';
wwv_flow_api.g_varchar2_table(1196) := '207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1197) := '6536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(1198) := '773A2030202D38707820302030202337353733636520696E7365743B0A7D0A2E752D436F6C6F7242472D2D31207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7246472D2D31207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1199) := '723A20236666326435353B0A7D0A2E752D436F6C6F7242472D2D32207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7246472D2D32207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1200) := '436F6C6F7242472D2D33207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7246472D2D33207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7242472D2D34207B0A20206261';
wwv_flow_api.g_varchar2_table(1201) := '636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7246472D2D34207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7242472D2D35207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1202) := '3865386539333B0A7D0A2E752D436F6C6F7246472D2D35207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7242472D2D36207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1203) := '7246472D2D36207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7242472D2D37207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7246472D2D37207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1204) := '20236666636330303B0A7D0A2E752D436F6C6F7242472D2D38207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7246472D2D38207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1205) := '6C6F7242472D2D39207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7246472D2D39207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7242472D2D3130207B0A2020626163';
wwv_flow_api.g_varchar2_table(1206) := '6B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7246472D2D3130207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7242472D2D3131207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1207) := '236666353737373B0A7D0A2E752D436F6C6F7246472D2D3131207B0A2020636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7242472D2D3132207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1208) := '6F6C6F7246472D2D3132207B0A2020636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7242472D2D3133207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7246472D2D3133207B0A2020';
wwv_flow_api.g_varchar2_table(1209) := '636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7242472D2D3134207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7246472D2D3134207B0A2020636F6C6F723A20233730653138333B';
wwv_flow_api.g_varchar2_table(1210) := '0A7D0A2E752D436F6C6F7242472D2D3135207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7246472D2D3135207B0A2020636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7242472D2D';
wwv_flow_api.g_varchar2_table(1211) := '3136207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7246472D2D3136207B0A2020636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7242472D2D3137207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1212) := '6E642D636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7246472D2D3137207B0A2020636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7242472D2D3138207B0A20206261636B67726F756E642D636F6C6F723A202337626433';
wwv_flow_api.g_varchar2_table(1213) := '66623B0A7D0A2E752D436F6C6F7246472D2D3138207B0A2020636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7242472D2D3139207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7246';
wwv_flow_api.g_varchar2_table(1214) := '472D2D3139207B0A2020636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7242472D2D3230207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7246472D2D3230207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1215) := '3A20233739373864653B0A7D0A2E752D436F6C6F7242472D2D3231207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7246472D2D3231207B0A2020636F6C6F723A20236536323934643B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1216) := '2D436F6C6F7242472D2D3232207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7246472D2D3232207B0A2020636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7242472D2D3233207B0A';
wwv_flow_api.g_varchar2_table(1217) := '20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7246472D2D3233207B0A2020636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7242472D2D3234207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1218) := '6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7246472D2D3234207B0A2020636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7242472D2D3235207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D';
wwv_flow_api.g_varchar2_table(1219) := '0A2E752D436F6C6F7246472D2D3235207B0A2020636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7242472D2D3236207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7246472D2D3236';
wwv_flow_api.g_varchar2_table(1220) := '207B0A2020636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7242472D2D3237207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7246472D2D3237207B0A2020636F6C6F723A20236536';
wwv_flow_api.g_varchar2_table(1221) := '623830303B0A7D0A2E752D436F6C6F7242472D2D3238207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7246472D2D3238207B0A2020636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1222) := '7242472D2D3239207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7246472D2D3239207B0A2020636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7242472D2D3330207B0A2020626163';
wwv_flow_api.g_varchar2_table(1223) := '6B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E752D436F6C6F7246472D2D3330207B0A2020636F6C6F723A20233466346463313B0A7D0A0A2E752D436F6C6F722D312D42472D2D747874207B0A2020636F6C6F723A20236666326435';
wwv_flow_api.g_varchar2_table(1224) := '353B0A7D0A2E752D436F6C6F722D312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0A202066696C6C3A20236666326435353B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1225) := '436F6C6F722D312D42472D2D6272207B0A20207374726F6B653A20236666326435353B0A2020626F726465722D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D46472D2D747874207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1226) := '3B0A7D0A2E752D436F6C6F722D312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1227) := '6F6C6F722D312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D42472D2D747874207B0A2020636F6C6F723A20233030376166663B';
wwv_flow_api.g_varchar2_table(1228) := '0A7D0A2E752D436F6C6F722D322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0A202066696C6C3A20233030376166663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1229) := '6C6F722D322D42472D2D6272207B0A20207374726F6B653A20233030376166663B0A2020626F726465722D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(1230) := '7D0A2E752D436F6C6F722D322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1231) := '6F722D322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D42472D2D747874207B0A2020636F6C6F723A20236666393530303B0A7D';
wwv_flow_api.g_varchar2_table(1232) := '0A2E752D436F6C6F722D332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0A202066696C6C3A20236666393530303B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1233) := '722D332D42472D2D6272207B0A20207374726F6B653A20236666393530303B0A2020626F726465722D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(1234) := '2E752D436F6C6F722D332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1235) := '2D332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D342D42472D2D747874207B0A2020636F6C6F723A20233463643936343B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1236) := '752D436F6C6F722D342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0A202066696C6C3A20233463643936343B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1237) := '342D42472D2D6272207B0A20207374726F6B653A20233463643936343B0A2020626F726465722D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D46472D2D747874207B0A2020636F6C6F723A20233037316630623B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1238) := '2D436F6C6F722D342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D66696C6C207B0A202066696C6C3A20233037316630623B0A7D0A2E752D436F6C6F722D34';
wwv_flow_api.g_varchar2_table(1239) := '2D46472D2D6272207B0A20207374726F6B653A20233037316630623B0A2020626F726465722D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D352D42472D2D747874207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1240) := '436F6C6F722D352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0A202066696C6C3A20233865386539333B0A7D0A2E752D436F6C6F722D352D';
wwv_flow_api.g_varchar2_table(1241) := '42472D2D6272207B0A20207374726F6B653A20233865386539333B0A2020626F726465722D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1242) := '6F6C6F722D352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D352D46';
wwv_flow_api.g_varchar2_table(1243) := '472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D42472D2D747874207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1244) := '6C6F722D362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0A202066696C6C3A20233334616164633B0A7D0A2E752D436F6C6F722D362D4247';
wwv_flow_api.g_varchar2_table(1245) := '2D2D6272207B0A20207374726F6B653A20233334616164633B0A2020626F726465722D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1246) := '6F722D362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D';
wwv_flow_api.g_varchar2_table(1247) := '2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D372D42472D2D747874207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1248) := '722D372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0A202066696C6C3A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D';
wwv_flow_api.g_varchar2_table(1249) := '6272207B0A20207374726F6B653A20236666636330303B0A2020626F726465722D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D46472D2D747874207B0A2020636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1250) := '2D372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0A202066696C6C3A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D62';
wwv_flow_api.g_varchar2_table(1251) := '72207B0A20207374726F6B653A20233030303030303B0A2020626F726465722D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D382D42472D2D747874207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1252) := '382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0A202066696C6C3A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6272';
wwv_flow_api.g_varchar2_table(1253) := '207B0A20207374726F6B653A20233561633866613B0A2020626F726465722D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D46472D2D747874207B0A2020636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D38';
wwv_flow_api.g_varchar2_table(1254) := '2D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D66696C6C207B0A202066696C6C3A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D627220';
wwv_flow_api.g_varchar2_table(1255) := '7B0A20207374726F6B653A20233032333935323B0A2020626F726465722D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D392D42472D2D747874207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D';
wwv_flow_api.g_varchar2_table(1256) := '42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0A202066696C6C3A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6272207B';
wwv_flow_api.g_varchar2_table(1257) := '0A20207374726F6B653A20236666336233303B0A2020626F726465722D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46';
wwv_flow_api.g_varchar2_table(1258) := '472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6272207B0A';
wwv_flow_api.g_varchar2_table(1259) := '20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D42472D2D747874207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D';
wwv_flow_api.g_varchar2_table(1260) := '42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0A202066696C6C3A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6272';
wwv_flow_api.g_varchar2_table(1261) := '207B0A20207374726F6B653A20233538353664363B0A2020626F726465722D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1262) := '31302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D';
wwv_flow_api.g_varchar2_table(1263) := '2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D42472D2D747874207B0A2020636F6C6F723A20236639303032663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1264) := '6F722D31312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0A202066696C6C3A20236639303032663B0A7D0A2E752D436F6C6F722D31312D';
wwv_flow_api.g_varchar2_table(1265) := '42472D2D6272207B0A20207374726F6B653A20236639303032663B0A2020626F726465722D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1266) := '436F6C6F722D31312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1267) := '31312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D42472D2D747874207B0A2020636F6C6F723A20233030363263633B0A7D0A';
wwv_flow_api.g_varchar2_table(1268) := '2E752D436F6C6F722D31322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0A202066696C6C3A20233030363263633B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1269) := '6F722D31322D42472D2D6272207B0A20207374726F6B653A20233030363263633B0A2020626F726465722D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1270) := '0A7D0A2E752D436F6C6F722D31322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1271) := '436F6C6F722D31322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D42472D2D747874207B0A2020636F6C6F723A202363633737';
wwv_flow_api.g_varchar2_table(1272) := '30303B0A7D0A2E752D436F6C6F722D31332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0A202066696C6C3A20236363373730303B0A7D0A';
wwv_flow_api.g_varchar2_table(1273) := '2E752D436F6C6F722D31332D42472D2D6272207B0A20207374726F6B653A20236363373730303B0A2020626F726465722D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D46472D2D747874207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1274) := '66666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B';
wwv_flow_api.g_varchar2_table(1275) := '0A7D0A2E752D436F6C6F722D31332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31342D42472D2D747874207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1276) := '20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0A202066696C6C3A202332616338';
wwv_flow_api.g_varchar2_table(1277) := '34353B0A7D0A2E752D436F6C6F722D31342D42472D2D6272207B0A20207374726F6B653A20233261633834353B0A2020626F726465722D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D46472D2D747874207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1278) := '6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0A202066696C6C3A202331';
wwv_flow_api.g_varchar2_table(1279) := '30343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6272207B0A20207374726F6B653A20233130343931393B0A2020626F726465722D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31352D42472D2D747874207B0A2020';
wwv_flow_api.g_varchar2_table(1280) := '636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D66696C6C207B0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1281) := '20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6272207B0A20207374726F6B653A20233734373437613B0A2020626F726465722D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D46472D2D747874207B';
wwv_flow_api.g_varchar2_table(1282) := '0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0A20206669';
wwv_flow_api.g_varchar2_table(1283) := '6C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D42472D2D7478';
wwv_flow_api.g_varchar2_table(1284) := '74207B0A2020636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0A20';
wwv_flow_api.g_varchar2_table(1285) := '2066696C6C3A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6272207B0A20207374726F6B653A20233231386562643B0A2020626F726465722D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D46472D';
wwv_flow_api.g_varchar2_table(1286) := '2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D66696C6C20';
wwv_flow_api.g_varchar2_table(1287) := '7B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31372D';
wwv_flow_api.g_varchar2_table(1288) := '42472D2D747874207B0A2020636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6669';
wwv_flow_api.g_varchar2_table(1289) := '6C6C207B0A202066696C6C3A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6272207B0A20207374726F6B653A20236363613330303B0A2020626F726465722D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1290) := '31372D46472D2D747874207B0A2020636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D';
wwv_flow_api.g_varchar2_table(1291) := '2D66696C6C207B0A202066696C6C3A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6272207B0A20207374726F6B653A20233161316131613B0A2020626F726465722D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1292) := '6F722D31382D42472D2D747874207B0A2020636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D';
wwv_flow_api.g_varchar2_table(1293) := '42472D2D66696C6C207B0A202066696C6C3A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6272207B0A20207374726F6B653A20233238623766393B0A2020626F726465722D636F6C6F723A20233238623766393B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1294) := '436F6C6F722D31382D46472D2D747874207B0A2020636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1295) := '31382D46472D2D66696C6C207B0A202066696C6C3A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6272207B0A20207374726F6B653A20233034356338343B0A2020626F726465722D636F6C6F723A20233034356338343B0A7D0A';
wwv_flow_api.g_varchar2_table(1296) := '2E752D436F6C6F722D31392D42472D2D747874207B0A2020636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1297) := '6F722D31392D42472D2D66696C6C207B0A202066696C6C3A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6272207B0A20207374726F6B653A20236663306430303B0A2020626F726465722D636F6C6F723A20236663306430303B';
wwv_flow_api.g_varchar2_table(1298) := '0A7D0A2E752D436F6C6F722D31392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1299) := '436F6C6F722D31392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1300) := '66663B0A7D0A2E752D436F6C6F722D32302D42472D2D747874207B0A2020636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333163383B0A7D0A';
wwv_flow_api.g_varchar2_table(1301) := '2E752D436F6C6F722D32302D42472D2D66696C6C207B0A202066696C6C3A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6272207B0A20207374726F6B653A20233333333163383B0A2020626F726465722D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1302) := '33333163383B0A7D0A2E752D436F6C6F722D32302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1303) := '0A7D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1304) := '20236666666666663B0A7D0A2E752D436F6C6F722D32312D42472D2D747874207B0A2020636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A202366663933';
wwv_flow_api.g_varchar2_table(1305) := '61383B0A7D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0A202066696C6C3A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6272207B0A20207374726F6B653A20236666393361383B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1306) := '6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1307) := '66666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1308) := '636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D42472D2D747874207B0A2020636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1309) := '20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0A202066696C6C3A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6272207B0A20207374726F6B653A20233636616666663B0A2020626F7264';
wwv_flow_api.g_varchar2_table(1310) := '65722D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6267207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1311) := '6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A202062';
wwv_flow_api.g_varchar2_table(1312) := '6F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D42472D2D747874207B0A2020636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6267207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1313) := '636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0A202066696C6C3A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6272207B0A20207374726F6B653A20236666626636363B0A';
wwv_flow_api.g_varchar2_table(1314) := '2020626F726465722D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6267207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1315) := '6E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6272207B0A20207374726F6B653A20236666666666';
wwv_flow_api.g_varchar2_table(1316) := '663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32342D42472D2D747874207B0A2020636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6267207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(1317) := '726F756E642D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0A202066696C6C3A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6272207B0A20207374726F6B653A20236130';
wwv_flow_api.g_varchar2_table(1318) := '656261643B0A2020626F726465722D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D46472D2D747874207B0A2020636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6267207B0A20206261';
wwv_flow_api.g_varchar2_table(1319) := '636B67726F756E642D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D66696C6C207B0A202066696C6C3A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6272207B0A20207374726F6B653A20';
wwv_flow_api.g_varchar2_table(1320) := '233139373332383B0A2020626F726465722D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32352D42472D2D747874207B0A2020636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6267207B0A20';
wwv_flow_api.g_varchar2_table(1321) := '206261636B67726F756E642D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0A202066696C6C3A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6272207B0A20207374726F6B';
wwv_flow_api.g_varchar2_table(1322) := '653A20236332633263353B0A2020626F726465722D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D626720';
wwv_flow_api.g_varchar2_table(1323) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6272207B0A20207374';
wwv_flow_api.g_varchar2_table(1324) := '726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D42472D2D747874207B0A2020636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D';
wwv_flow_api.g_varchar2_table(1325) := '6267207B0A20206261636B67726F756E642D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0A202066696C6C3A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6272207B0A20';
wwv_flow_api.g_varchar2_table(1326) := '207374726F6B653A20233862636565623B0A2020626F726465722D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46';
wwv_flow_api.g_varchar2_table(1327) := '472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D627220';
wwv_flow_api.g_varchar2_table(1328) := '7B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32372D42472D2D747874207B0A2020636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1329) := '372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0A202066696C6C3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D';
wwv_flow_api.g_varchar2_table(1330) := '6272207B0A20207374726F6B653A20236666653036363B0A2020626F726465722D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D46472D2D747874207B0A2020636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1331) := '722D32372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D66696C6C207B0A202066696C6C3A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46';
wwv_flow_api.g_varchar2_table(1332) := '472D2D6272207B0A20207374726F6B653A20233333333333333B0A2020626F726465722D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32382D42472D2D747874207B0A2020636F6C6F723A20236264653966643B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1333) := '6F6C6F722D32382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0A202066696C6C3A20236264653966643B0A7D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1334) := '382D42472D2D6272207B0A20207374726F6B653A20236264653966643B0A2020626F726465722D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D46472D2D747874207B0A2020636F6C6F723A20233035376562363B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1335) := '752D436F6C6F722D32382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0A202066696C6C3A20233035376562363B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1336) := '722D32382D46472D2D6272207B0A20207374726F6B653A20233035376562363B0A2020626F726465722D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32392D42472D2D747874207B0A2020636F6C6F723A20236666396339363B0A';
wwv_flow_api.g_varchar2_table(1337) := '7D0A2E752D436F6C6F722D32392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0A202066696C6C3A20236666396339363B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1338) := '6F6C6F722D32392D42472D2D6272207B0A20207374726F6B653A20236666396339363B0A2020626F726465722D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D46472D2D747874207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1339) := '663B0A7D0A2E752D436F6C6F722D32392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1340) := '752D436F6C6F722D32392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D42472D2D747874207B0A2020636F6C6F723A20236139';
wwv_flow_api.g_varchar2_table(1341) := '613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0A202066696C6C3A20236139613865613B0A';
wwv_flow_api.g_varchar2_table(1342) := '7D0A2E752D436F6C6F722D33302D42472D2D6272207B0A20207374726F6B653A20236139613865613B0A2020626F726465722D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D46472D2D747874207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1343) := '236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0A202066696C6C3A20236666666666';
wwv_flow_api.g_varchar2_table(1344) := '663B0A7D0A2E752D436F6C6F722D33302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D666F6375736564207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1345) := '203020302031707820236666326435352C2030203020317078203070782072676261283235352C2034352C2038352C20302E35292021696D706F7274616E743B0A20206F75746C696E653A206E6F6E653B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(64881798104674558740)
,p_theme_id=>42
,p_file_name=>'31990271920697897557.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881683035812529407)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881683271279529407)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881683411825529408)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881684579242529409)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881684823887529409)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881685551993529410)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881685900060529410)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881686492683529410)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881687113797529411)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881687330697529411)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881688216896529412)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881689858297529413)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881691217389529414)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881694757415529418)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881694896161529418)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881695368285529418)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881695740422529418)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881696308619529418)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881696875535529419)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881697142635529419)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881698675856529420)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881699429723529421)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881699690356529421)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881700465495529422)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881700758752529422)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881701209262529422)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881701485458529423)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881701724372529423)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881702691048529424)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881704651646529427)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881705420531529427)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881706385598529428)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881707131677529428)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881707372973529428)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881708146790529429)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881708786774529430)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881711191539529433)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881712355098529434)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881713532538529435)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881714497854529438)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881714698196529439)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881714893306529439)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881715127586529439)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881715496332529440)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881715676098529440)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881715937581529440)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881716129463529440)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881716275803529440)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881716570714529440)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881717062851529440)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881717621393529441)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(64881717771670529441)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881682914451529406)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683166006529407)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(64881683035812529407)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683303581529408)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(64881683271279529407)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683536931529408)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(64881683411825529408)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683583814529408)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(64881683035812529407)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683690946529408)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(64881683271279529407)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683775736529408)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(64881683035812529407)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881683956334529408)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(64881683271279529407)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881684022274529408)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(64881683035812529407)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881684121758529409)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881682768650529405)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(64881683411825529408)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881684740989529409)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(64881684357010529409)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881684944385529409)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(64881684357010529409)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(64881684823887529409)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881685045468529409)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(64881684357010529409)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881685089868529409)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(64881684357010529409)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(64881684823887529409)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881685595354529410)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(64881685551993529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881685705124529410)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(64881685551993529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881685825227529410)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(64881685551993529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686020034529410)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686161724529410)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686263018529410)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686280770529410)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(64881685551993529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686465165529410)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686576767529410)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686686500529410)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686778283529410)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881686881882529411)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687033966529411)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687253477529411)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(64881687113797529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687429942529411)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(64881687330697529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687506774529411)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(64881687113797529411)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687631767529411)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687734208529411)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687789635529411)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881687971505529412)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(64881687330697529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688042644529412)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688078392529412)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688303989529412)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(64881688216896529412)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688462918529412)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(64881688216896529412)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688527946529412)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881685248772529409)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688877507529412)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881688972544529412)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689090350529412)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689264243529412)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689314194529412)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689457515529413)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689503253529413)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689670264529413)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689687380529413)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881689908475529413)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(64881689858297529413)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690054140529413)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(64881689858297529413)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690110597529413)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(64881687330697529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690264795529413)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690285639529413)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690462800529413)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690499073529413)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(64881687330697529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881690575934529414)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881688598525529412)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691099414529414)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881690892623529414)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691322198529414)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881690892623529414)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(64881691217389529414)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691431167529414)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881690892623529414)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(64881691217389529414)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691545937529414)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881690892623529414)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691667882529414)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881690892623529414)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691691796529414)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881690892623529414)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(64881691217389529414)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691895721529414)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881691799175529414)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881691985954529414)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881691799175529414)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881692652016529415)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881692709323529415)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881692824773529415)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881692933541529415)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(64881685900060529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881692992612529415)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693075365529415)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693197573529415)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693282781529415)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693400102529415)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(64881686492683529410)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693504857529415)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(64881687113797529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693623734529416)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(64881687330697529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693686660529416)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(64881687113797529411)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693815560529416)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881693897239529416)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881694052559529417)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881694163017529417)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(64881687330697529411)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881694224157529417)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881694369097529417)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881692287456529415)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(64881684579242529409)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881694822814529418)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881694460175529417)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(64881694757415529418)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695001202529418)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881694460175529417)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(64881694896161529418)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695129386529418)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881694460175529417)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695207326529418)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881694460175529417)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(64881694896161529418)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695405701529418)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881694460175529417)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(64881695368285529418)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695511521529418)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881694460175529417)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(64881695368285529418)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695846471529418)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(64881695609693529418)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(64881695740422529418)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881695961250529418)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(64881695609693529418)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881696055349529418)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(64881695609693529418)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(64881695740422529418)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881696385620529418)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(64881696154472529418)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(64881696308619529418)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881696559439529419)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881696154472529418)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(64881696308619529418)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881696639731529419)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(64881696154472529418)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881696990473529419)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(64881696875535529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697184802529419)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697293533529419)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(64881696875535529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697452367529420)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697508051529420)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(64881696875535529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697579319529420)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697721160529420)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697797930529420)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(64881696875535529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881697961507529420)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(64881696875535529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698002529529420)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698088170529420)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698220619529420)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698302627529420)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698443880529420)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881696792799529419)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698601435529420)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698778953529421)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(64881698675856529420)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881698923805529421)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699051823529421)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(64881698675856529420)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699104124529421)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699190945529421)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(64881698675856529420)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699339859529421)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699559692529421)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(64881699429723529421)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699667678529421)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(64881699429723529421)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699811133529421)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(64881699690356529421)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881699900101529421)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(64881699690356529421)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700034649529421)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(64881699429723529421)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700156855529421)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700218563529421)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(64881698675856529420)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700341894529421)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700507242529422)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881698518342529420)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(64881700465495529422)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700778302529422)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881700658151529422)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(64881700758752529422)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881700937609529422)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881700658151529422)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(64881700758752529422)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881701307039529422)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(64881701209262529422)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881701391613529423)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(64881701209262529422)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881701576676529423)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(64881701485458529423)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881701871146529423)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(64881701724372529423)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881701904216529423)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(64881701724372529423)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702010010529423)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(64881701724372529423)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702131951529423)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(64881701485458529423)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702213029529423)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702294386529423)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881701137341529422)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(64881701724372529423)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702568934529423)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(64881702447604529423)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(64881699429723529421)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702802504529424)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702941216529424)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881702980002529424)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703081180529424)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703250638529424)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703344338529424)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703416698529424)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703548339529425)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(64881702624955529424)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703762274529425)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703866312529425)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881703940790529425)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704044363529425)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704081653529426)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(64881697142635529419)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704253795529426)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704332776529426)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704445733529426)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(64881703633868529425)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(64881702691048529424)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704744023529427)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704791056529427)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881704923794529427)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705021423529427)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705112735529427)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705233873529427)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705351364529427)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705509494529427)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(64881705420531529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705616654529427)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(64881705420531529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705770779529427)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705846951529427)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(64881705420531529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705931344529427)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881705976128529427)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(64881705420531529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706127758529427)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(64881704510665529426)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(64881705420531529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706371455529428)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706569300529428)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(64881706385598529428)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706647709529428)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706691349529428)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(64881706385598529428)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706820658529428)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881706898344529428)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(64881706385598529428)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707033310529428)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707178224529428)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(64881707131677529428)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707365127529428)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(64881707131677529428)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707545032529428)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(64881707372973529428)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707668495529428)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(64881707372973529428)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707760907529428)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(64881707131677529428)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707789924529428)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881707951972529429)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(64881706385598529428)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708013490529429)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708207614529429)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881706193434529427)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(64881708146790529429)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708454203529429)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881708326453529429)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(64881707131677529428)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708535671529429)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881708326453529429)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708667674529430)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881708326453529429)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708754058529430)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881708326453529429)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881708911370529430)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881708326453529429)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(64881708786774529430)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709016205529430)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881708326453529429)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(64881708786774529430)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709211371529430)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709311029529430)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709454384529430)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709527649529430)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709661449529431)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709695401529431)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709816226529431)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881709888065529431)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(64881709147516529430)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881710082635529431)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(64881710036109529431)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881710265889529431)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881710036109529431)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881710340677529431)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881710036109529431)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881710461727529431)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881710036109529431)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881710971478529432)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(64881707372973529428)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711034771529432)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(64881704651646529427)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711097643529432)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(64881707372973529428)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711346603529433)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(64881711191539529433)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711432608529433)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(64881707131677529428)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711558745529433)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(64881707131677529428)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711669347529433)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(64881710840328529432)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(64881711191539529433)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711824008529433)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(64881711754136529433)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881711944983529433)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(64881711754136529433)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881712058231529433)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(64881711754136529433)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881712089451529433)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(64881711754136529433)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881712445761529434)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(64881712205200529434)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(64881712355098529434)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881712563037529434)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(64881712205200529434)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(64881712355098529434)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881712617267529434)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(64881712205200529434)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(64881712355098529434)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881713629968529436)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(64881713425683529435)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(64881713532538529435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881713743338529436)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(64881713425683529435)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(64881713532538529435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881714611330529439)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(64881714497854529438)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881714868936529439)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(64881714698196529439)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881715013801529439)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(64881714893306529439)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881715251170529439)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(64881715127586529439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881715288570529439)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(64881715127586529439)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881715402181529440)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(64881714893306529439)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881715650588529440)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(64881715496332529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881715785155529440)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(64881715676098529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716000708529440)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(64881715937581529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716197010529440)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(64881716129463529440)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716412501529440)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(64881716275803529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716598543529440)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(64881716570714529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716719572529440)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(64881716570714529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716806730529440)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(64881716570714529440)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881716898751529440)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(64881714497854529438)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717138834529440)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(64881717062851529440)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717175701529440)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(64881716275803529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717369461529441)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(64881715496332529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717410023529441)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(64881715676098529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717567048529441)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(64881715937581529440)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717710196529441)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(64881717621393529441)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881717937169529441)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(64881717771670529441)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881718031195529441)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881718075749529441)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(64881714497854529438)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881718201107529441)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(64881714497854529438)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64881718314761529441)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(64881716129463529440)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(64882084083590626383)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'¿Desea realizar esta acción de supresión?'
);
end;
/
prompt --application/shared_components/reports/report_layouts/caro
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version = ''1.0'' encoding = ''utf-8''?>'||wwv_flow.LF||
'<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.o';
    wwv_flow_api.g_varchar2_table(2) := 'rg/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.org/1';
    wwv_flow_api.g_varchar2_table(3) := '999/xlink">'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOPOS" select="''''"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOPOS2" sel';
    wwv_flow_api.g_varchar2_table(4) := 'ect="number(1)"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'   <xsl:variable name="';
    wwv_flow_api.g_varchar2_table(5) := '_XDOFOOSTOTAL" select="number(0)"/>'||wwv_flow.LF||
'   <xsl:attribute-set name="padding">'||wwv_flow.LF||
'      <xsl:attribute nam';
    wwv_flow_api.g_varchar2_table(6) := 'e="padding-bottom">0.25pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-top">0.25pt</xsl:attri';
    wwv_flow_api.g_varchar2_table(7) := 'bute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="text">'||wwv_flow.LF||
'      <xsl:attribute name="text-';
    wwv_flow_api.g_varchar2_table(8) := 'align">start</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="orphans">2</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(9) := 'ibute name="start-indent">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="linefeed-treatment">pres';
    wwv_flow_api.g_varchar2_table(10) := 'erve</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-top">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(11) := 'ibute name="end-indent">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-bottom">0.0pt</xsl';
    wwv_flow_api.g_varchar2_table(12) := ':attribute>'||wwv_flow.LF||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="wi';
    wwv_flow_api.g_varchar2_table(13) := 'dows">2</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="align-left">'||wwv_flow.LF||
'      <x';
    wwv_flow_api.g_varchar2_table(14) := 'sl:attribute name="text-align">left</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set ';
    wwv_flow_api.g_varchar2_table(15) := 'name="align-center">'||wwv_flow.LF||
'      <xsl:attribute name="text-align">center</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attrib';
    wwv_flow_api.g_varchar2_table(16) := 'ute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="align-right">'||wwv_flow.LF||
'      <xsl:attribute name="text-align">right</x';
    wwv_flow_api.g_varchar2_table(17) := 'sl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="footer">'||wwv_flow.LF||
'      <xsl:attribute n';
    wwv_flow_api.g_varchar2_table(18) := 'ame="text-align">right</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="start-indent">5.4pt</xsl:attribut';
    wwv_flow_api.g_varchar2_table(19) := 'e>'||wwv_flow.LF||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:a';
    wwv_flow_api.g_varchar2_table(20) := 'ttribute-set name="text_2">'||wwv_flow.LF||
'      <xsl:attribute name="start-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'      <';
    wwv_flow_api.g_varchar2_table(21) := 'xsl:attribute name="end-indent">23.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-s';
    wwv_flow_api.g_varchar2_table(22) := 'et name="text_20">'||wwv_flow.LF||
'      <xsl:attribute name="height">13.872pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribut';
    wwv_flow_api.g_varchar2_table(23) := 'e name="end-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="text';
    wwv_flow_api.g_varchar2_table(24) := '_0">'||wwv_flow.LF||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl';
    wwv_flow_api.g_varchar2_table(25) := ':attribute-set name="page-header">'||wwv_flow.LF||
'      <xsl:attribute name="color">#PAGE_HEADER_FONT_COLOR#</xsl:';
    wwv_flow_api.g_varchar2_table(26) := 'attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-family">#PAGE_HEADER_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(27) := ' <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-s';
    wwv_flow_api.g_varchar2_table(28) := 'ize">#PAGE_HEADER_FONT_SIZE#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#PAGE_HEADER';
    wwv_flow_api.g_varchar2_table(29) := '_FONT_WEIGHT#</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="page-footer">'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(30) := '     <xsl:attribute name="color">#PAGE_FOOTER_FONT_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(31) := '="font-family">#PAGE_FOOTER_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="white-space-col';
    wwv_flow_api.g_varchar2_table(32) := 'lapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-size">#PAGE_FOOTER_FONT_SIZE#pt</xsl:a';
    wwv_flow_api.g_varchar2_table(33) := 'ttribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#PAGE_FOOTER_FONT_WEIGHT#</xsl:attribute>'||wwv_flow.LF||
'   </x';
    wwv_flow_api.g_varchar2_table(34) := 'sl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="body-font">'||wwv_flow.LF||
'      <xsl:attribute name="height">12.0p';
    wwv_flow_api.g_varchar2_table(35) := 't</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-family">#BODY_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(36) := ' <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-s';
    wwv_flow_api.g_varchar2_table(37) := 'ize">#BODY_FONT_SIZE#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#BODY_FONT_WEIGHT#<';
    wwv_flow_api.g_varchar2_table(38) := '/xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="page-number">'||wwv_flow.LF||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(39) := 'ibute name="height">13.872pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="h';
    wwv_flow_api.g_varchar2_table(40) := 'eader-font">'||wwv_flow.LF||
'      <xsl:attribute name="height">#HEADER_FONT_SIZE#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:at';
    wwv_flow_api.g_varchar2_table(41) := 'tribute name="font-family">#HEADER_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="white-sp';
    wwv_flow_api.g_varchar2_table(42) := 'ace-collapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-size">#HEADER_FONT_SIZE#pt</xsl';
    wwv_flow_api.g_varchar2_table(43) := ':attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#HEADER_FONT_WEIGHT#</xsl:attribute>'||wwv_flow.LF||
'   </xsl:';
    wwv_flow_api.g_varchar2_table(44) := 'attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="border">'||wwv_flow.LF||
'      <xsl:attribute name="border-top">#BORDER';
    wwv_flow_api.g_varchar2_table(45) := '_WIDTH#pt solid #BORDER_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-bottom">#BORDER_WI';
    wwv_flow_api.g_varchar2_table(46) := 'DTH#pt solid #BORDER_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-start-width">#BORDER_';
    wwv_flow_api.g_varchar2_table(47) := 'WIDTH#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-start-color">#BORDER_COLOR#</xsl:attribu';
    wwv_flow_api.g_varchar2_table(48) := 'te>'||wwv_flow.LF||
'      <xsl:attribute name="border-start-style">solid</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(49) := '="border-end-width">#BORDER_WIDTH#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-end-color">#';
    wwv_flow_api.g_varchar2_table(50) := 'BORDER_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-end-style">solid</xsl:attribute>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(51) := '  </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="cell">'||wwv_flow.LF||
'      <xsl:attribute name="background-co';
    wwv_flow_api.g_varchar2_table(52) := 'lor">#BODY_BG_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="color">#BODY_FONT_COLOR#</xsl:attri';
    wwv_flow_api.g_varchar2_table(53) := 'bute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-start">5.15pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="';
    wwv_flow_api.g_varchar2_table(54) := 'vertical-align">top</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-top">0.0pt</xsl:attribute>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(55) := '      <xsl:attribute name="padding-end">5.15pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="number-co';
    wwv_flow_api.g_varchar2_table(56) := 'lumns-spanned">1</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <x';
    wwv_flow_api.g_varchar2_table(57) := 'sl:attribute name="padding-bottom">0.0pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute';
    wwv_flow_api.g_varchar2_table(58) := '-set name="header-color">'||wwv_flow.LF||
'      <xsl:attribute name="background-color">#HEADER_BG_COLOR#</xsl:attri';
    wwv_flow_api.g_varchar2_table(59) := 'bute>'||wwv_flow.LF||
'      <xsl:attribute name="color">#HEADER_FONT_COLOR#</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set';
    wwv_flow_api.g_varchar2_table(60) := '>'||wwv_flow.LF||
'   <xsl:template match="/">'||wwv_flow.LF||
'      <fo:root>'||wwv_flow.LF||
'         <fo:layout-master-set>'||wwv_flow.LF||
'            <fo:si';
    wwv_flow_api.g_varchar2_table(61) := 'mple-page-master master-name="master0" margin-left="66.6pt" margin-right="66.6pt" page-height="#PAGE';
    wwv_flow_api.g_varchar2_table(62) := '_HEIGHT#pt" page-width="#PAGE_WIDTH#pt" margin-top="36.0pt" margin-bottom="36.0pt">'||wwv_flow.LF||
'               ';
    wwv_flow_api.g_varchar2_table(63) := '<fo:region-body region-name="region-body" margin-top="54.0pt" margin-bottom="54.0pt"/>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(64) := '   <fo:region-before region-name="region-header" extent="54.0pt"/>'||wwv_flow.LF||
'               <fo:region-after ';
    wwv_flow_api.g_varchar2_table(65) := 'region-name="region-footer" extent="54.0pt" display-align="after"/>'||wwv_flow.LF||
'            </fo:simple-page-ma';
    wwv_flow_api.g_varchar2_table(66) := 'ster>'||wwv_flow.LF||
'         </fo:layout-master-set>'||wwv_flow.LF||
'         <fo:page-sequence master-reference="master0">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(67) := '         <xsl:variable name="_PW" select="number(#PAGE_HEIGHT#)"/>'||wwv_flow.LF||
'            <xsl:variable name="';
    wwv_flow_api.g_varchar2_table(68) := '_PH" select="number(#PAGE_WIDTH#)"/>'||wwv_flow.LF||
'            <xsl:variable name="_ML" select="number(72.0)"/>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(69) := '            <xsl:variable name="_MR" select="number(72.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_MT" s';
    wwv_flow_api.g_varchar2_table(70) := 'elect="number(90.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_MB" select="number(90.0)"/>'||wwv_flow.LF||
'            <x';
    wwv_flow_api.g_varchar2_table(71) := 'sl:variable name="_HY" select="number(36.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_FY" select="number(';
    wwv_flow_api.g_varchar2_table(72) := '36.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_SECTION_NAME" select="string(''master0'')"/>'||wwv_flow.LF||
'            <';
    wwv_flow_api.g_varchar2_table(73) := 'fo:static-content flow-name="region-header">'||wwv_flow.LF||
'               <fo:block xsl:use-attribute-sets="text ';
    wwv_flow_api.g_varchar2_table(74) := 'text_2 text_0 #PAGE_HEADER_ALIGNMENT#">'||wwv_flow.LF||
'                  <fo:inline xsl:use-attribute-sets="page-h';
    wwv_flow_api.g_varchar2_table(75) := 'eader">#PAGE_HEADER#</fo:inline>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'            </fo:static-content>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(76) := '        <fo:static-content flow-name="region-footer">'||wwv_flow.LF||
'               <fo:block xsl:use-attribute-se';
    wwv_flow_api.g_varchar2_table(77) := 'ts="text footer">'||wwv_flow.LF||
'                  <fo:inline xsl:use-attribute-sets="body-font page-number">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(78) := '                  <fo:page-number/>'||wwv_flow.LF||
'                  </fo:inline>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(79) := '            <fo:block xsl:use-attribute-sets="text text_2 #PAGE_FOOTER_ALIGNMENT#">'||wwv_flow.LF||
'               ';
    wwv_flow_api.g_varchar2_table(80) := '   <fo:inline xsl:use-attribute-sets="page-footer">#PAGE_FOOTER#</fo:inline>'||wwv_flow.LF||
'               </fo:bl';
    wwv_flow_api.g_varchar2_table(81) := 'ock>'||wwv_flow.LF||
'            </fo:static-content>'||wwv_flow.LF||
'            <fo:flow flow-name="region-body">'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(82) := '  <fo:block xsl:use-attribute-sets="padding">'||wwv_flow.LF||
'                  <fo:table start-indent="0.0pt">'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(83) := '                   <xsl:variable name="_XDOFOPOS2" select="number(1)"/>'||wwv_flow.LF||
'                     <xsl:v';
    wwv_flow_api.g_varchar2_table(84) := 'ariable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'#PRN_TABLE_CELLS#                     <fo:table-hea';
    wwv_flow_api.g_varchar2_table(85) := 'der>'||wwv_flow.LF||
'                        <fo:table-row>'||wwv_flow.LF||
'#PRN_TEMPLATE_HEADER_ROW#                        </fo:';
    wwv_flow_api.g_varchar2_table(86) := 'table-row>'||wwv_flow.LF||
'                     </fo:table-header>'||wwv_flow.LF||
'                     <fo:table-body>'||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(87) := '               <xsl:for-each select=".//ROW">'||wwv_flow.LF||
'                           <fo:table-row>'||wwv_flow.LF||
'#PRN_TEMPL';
    wwv_flow_api.g_varchar2_table(88) := 'ATE_BODY_ROW#                           </fo:table-row>'||wwv_flow.LF||
'                        </xsl:for-each>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(89) := '                   </fo:table-body>'||wwv_flow.LF||
'                  </fo:table>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(90) := '           <fo:block xsl:use-attribute-sets="text text_2 text_20">'||wwv_flow.LF||
'                  <fo:inline id=';
    wwv_flow_api.g_varchar2_table(91) := '"{concat(''page-total-'', $_SECTION_NAME, $_XDOFOPOS)}"/>'||wwv_flow.LF||
'                  <fo:inline id="{concat(''p';
    wwv_flow_api.g_varchar2_table(92) := 'age-total'', $_XDOFOPOS)}"/>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'            </fo:flow>'||wwv_flow.LF||
'         </fo:page-';
    wwv_flow_api.g_varchar2_table(93) := 'sequence>'||wwv_flow.LF||
'      </fo:root>'||wwv_flow.LF||
'   </xsl:template>'||wwv_flow.LF||
'</xsl:stylesheet>'||wwv_flow.LF||
'';
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(33824325102101729706)
,p_report_layout_name=>'caro'
,p_report_layout_type=>'XSL_GENERIC'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
,p_xslfo_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'                           <fo:table-cell xsl:use-attribute-sets="cell header-color border">',
'                               <fo:block xsl:use-attribute-sets="text #TEXT_ALIGN#">',
'                                   <fo:inline xsl:use-attribute-sets="header-font">#COLUMN_HEADING#</fo:inline>',
'                               </fo:block>',
'                           </fo:table-cell>',
''))
,p_xslfo_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'                              <fo:table-cell xsl:use-attribute-sets="cell border">',
'                                  <fo:block xsl:use-attribute-sets="text #TEXT_ALIGN#">',
'                                      <fo:inline xsl:use-attribute-sets="body-font">',
'                                          <xsl:value-of select=".//#COLUMN_HEADER_NAME#"/>',
'                                      </fo:inline>',
'                                  </fo:block>',
'                              </fo:table-cell>',
''))
,p_xslfo_column_template_width=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'                     <fo:table-column column-width="#COLUMN_WIDTH#pt"/>',
''))
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(33334776650275851682)
,p_name=>'Autenticacion_Cliente'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'pkg_autenticacion.f_autoriza_usuario'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(64881718738715529443)
,p_name=>'Autenticación de Application Express'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_highlight
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664344439964398114)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.HIGHLIGHT'
,p_display_name=>'Highlight'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.ORACLE.APEX.HIGHLIGHT'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- The render function generates the necessary javascript code for the',
'-- dynamic action plug-in and registers this function with the dynamic action',
'-- client side framework.',
'-- The render function has a defined interface which every plug-in has to',
'-- implement. It''s designed in a way that future enhancements to the interface',
'-- will not break existing plug-ins.',
'function render_highlight (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_dynamic_action (',
'            p_plugin         => p_plugin,',
'            p_dynamic_action => p_dynamic_action );',
'    end if;',
'    -- ***********************************',
'    -- Here starts the actual plug-in code',
'    -- ***********************************',
'    -- Register the javascript library the plug-in uses.',
'    -- The add_library call will make sure that just one instance of the',
'    -- library is loaded when the plug-in is used multiple times on the page.',
'    -- If the developer stores the javascript file on the web-server, the',
'    -- p_plugin.file_prefix will contain the web-server URL. If the variable',
'    -- contains #PLUGIN_PREFIX#, the file will be read from the database.',
'    apex_javascript.add_library (',
'        p_name      => ''highlight'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'    -- Register the javascript function which should be called when the plug-in',
'    -- action is executed with the APEX client side dynamic action framework.',
'    -- The javascript function can be a named javascript function, but it can',
'    -- also be an anonymous function if the code is really short.',
'    -- For example: function(){this.affectedElements.hide(this.action.attribute01);}',
'    l_result.javascript_function := ''com_yourcompany_apex_highlight'';',
'    -- use the application level values if they are not set on instance level',
'    l_result.attribute_01        := coalesce(p_dynamic_action.attribute_01, p_plugin.attribute_01);',
'    l_result.attribute_02        := coalesce(p_dynamic_action.attribute_02, p_plugin.attribute_02);',
'',
'    return l_result;',
'end render_highlight;',
''))
,p_render_function=>'render_highlight'
,p_standard_attributes=>'ITEM:REGION:JQUERY_SELECTOR:JAVASCRIPT_EXPRESSION:TRIGGERING_ELEMENT:EVENT_SOURCE:REQUIRED'
,p_substitute_attributes=>true
,p_reference_id=>37159026752928523281
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.oracleapex.info/'
,p_files_version=>2
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664344639673398117)
,p_plugin_id=>wwv_flow_api.id(33664344439964398114)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>10
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664345074434398118)
,p_plugin_id=>wwv_flow_api.id(33664344439964398114)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Speed'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664345347672398119)
,p_plugin_attribute_id=>wwv_flow_api.id(33664345074434398118)
,p_display_sequence=>10
,p_display_value=>'Slow'
,p_return_value=>'slow'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664345861432398120)
,p_plugin_attribute_id=>wwv_flow_api.id(33664345074434398118)
,p_display_sequence=>20
,p_display_value=>'Normal'
,p_return_value=>'normal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664346355326398120)
,p_plugin_attribute_id=>wwv_flow_api.id(33664345074434398118)
,p_display_sequence=>30
,p_display_value=>'Fast'
,p_return_value=>'fast'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664346843518398121)
,p_plugin_id=>wwv_flow_api.id(33664344439964398114)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>10
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664347276873398121)
,p_plugin_id=>wwv_flow_api.id(33664344439964398114)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Speed'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664347664460398121)
,p_plugin_attribute_id=>wwv_flow_api.id(33664347276873398121)
,p_display_sequence=>10
,p_display_value=>'Slow'
,p_return_value=>'slow'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664398109785398122)
,p_plugin_attribute_id=>wwv_flow_api.id(33664347276873398121)
,p_display_sequence=>20
,p_display_value=>'Normal'
,p_return_value=>'normal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664398608381398122)
,p_plugin_attribute_id=>wwv_flow_api.id(33664347276873398121)
,p_display_sequence=>30
,p_display_value=>'Fast'
,p_return_value=>'fast'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20412064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E2063616E2061636365737320697427732063757272656E7420636F6E7465787420776974682074686520227468697322206F626A6563742E0A2F2F2049742063';
wwv_flow_api.g_varchar2_table(2) := '6F6E7461696E7320666F72206578616D706C652022616374696F6E222077686963682073746F726573207468652064796E616D69632061747472696275746573206174747269627574653031202D20617474726962757465313020616E640A2F2F207468';
wwv_flow_api.g_varchar2_table(3) := '6520616A61784964656E746966696572207573656420666F722074686520414A41582063616C6C2E20496E73696465207468652066756E6374696F6E20796F752063616E207573650A2F2F2022746869732E6166666563746564456C656D656E74732220';
wwv_flow_api.g_varchar2_table(4) := '746F206765742061206A5175657279206F626A65637420776869636820636F6E7461696E7320616C6C207468652061666665637465640A2F2F20444F4D20656C656D656E7473206F75722064796E616D696320616374696F6E2073686F756C6420626520';
wwv_flow_api.g_varchar2_table(5) := '706572666F726D6564206F6E2E0A2F2F0A2F2F20466F722064796E616D696320616374696F6E20706C75672D696E2066756E6374696F6E7320796F752073686F756C642075736520612066756E6374696F6E206E616D652077686963682069730A2F2F20';
wwv_flow_api.g_varchar2_table(6) := '756E697175652C20736F20697420646F65736E27742067657420696E20636F6E666C6963742077697468206578697374696E672066756E6374696F6E732E20426573742070726163746973650A2F2F20697320746F20757365207468652073616D65206E';
wwv_flow_api.g_varchar2_table(7) := '616D65206173207573656420666F722074686520706C75672D696E20696E7465726E616C206E616D652E0A0A66756E6374696F6E20636F6D5F796F7572636F6D70616E795F617065785F686967686C696768742829207B0A20202F2F2049742773206265';
wwv_flow_api.g_varchar2_table(8) := '7474657220746F2068617665206E616D6564207661726961626C657320696E7374656164206F66207573696E670A20202F2F207468652067656E65726963206F6E65732C206D616B65732074686520636F6465206D6F7265207265616461626C650A2020';
wwv_flow_api.g_varchar2_table(9) := '766172206C436F6C6F72203D2028746869732E616374696F6E2E61747472696275746530313D3D6E756C6C3F2223666664373030223A746869732E616374696F6E2E6174747269627574653031293B0A2020766172206C5370656564203D202874686973';
wwv_flow_api.g_varchar2_table(10) := '2E616374696F6E2E61747472696275746530323D3D6E756C6C3F226E6F726D616C223A746869732E616374696F6E2E6174747269627574653032293B0A0A20202F2F204F6E6C7920686967686C6967687420696620776520617265206E6F742063616C6C';
wwv_flow_api.g_varchar2_table(11) := '656420647572696E6720696E697469616C697A6174696F6E206F66207468652070616765210A202069662028746869732E62726F777365724576656E7420213D3D20226C6F61642229207B0A202020202F2F2022746869732E6166666563746564456C65';
wwv_flow_api.g_varchar2_table(12) := '6D656E74732220657175616C732061206A5175657279206F626A65637420776869636820636F6E7461696E7320616C6C0A202020202F2F2074686520616666656374656420444F4D20656C656D656E7473206F757220616374696F6E2073686F756C6420';
wwv_flow_api.g_varchar2_table(13) := '626520706572666F726D6564206F6E2E0A202020202F2F205765206A757374206861766520746F206C6F6F70206F766572206974206279207573696E6720746865206A517565727920656163682066756E6374696F6E2E0A20202020746869732E616666';
wwv_flow_api.g_varchar2_table(14) := '6563746564456C656D656E74732E65616368280A20202020202066756E6374696F6E28297B0A20202020202020207661722024496E7374616E6365203D206A51756572792874686973293B202F2F2074686973206973207468652063757272656E742044';
wwv_flow_api.g_varchar2_table(15) := '4F4D206F626A6563740A20202020202020202F2F2073746F7265206F726967696E616C206261636B67726F756E6420636F6C6F720A2020202020202020766172206C43757272656E74436F6C6F72203D2024496E7374616E63652E63737328226261636B';
wwv_flow_api.g_varchar2_table(16) := '67726F756E642D636F6C6F7222293B0A20202020202020202F2F20312920646F2074686520616E696D6174696F6E20746F20746865206E657720636F6C6F720A20202020202020202F2F20322920616E696D617465206261636B20746F20746865206F72';
wwv_flow_api.g_varchar2_table(17) := '6967696E616C20636F6C6F720A202020202020202024496E7374616E63650A202020202020202020202E616E696D61746528207B206261636B67726F756E64436F6C6F723A206C436F6C6F72207D2C206C5370656564290A202020202020202020202E61';
wwv_flow_api.g_varchar2_table(18) := '6E696D61746528207B206261636B67726F756E64436F6C6F723A206C43757272656E74436F6C6F72207D2C206C5370656564293B0A2020202020207D293B0A20207D0A7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33664399695535398130)
,p_plugin_id=>wwv_flow_api.id(33664344439964398114)
,p_file_name=>'highlight.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_badge_list
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664400560556398144)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.BADGE_LIST'
,p_display_name=>'Badge List'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.BADGE_LIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.badgelist/')
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.js'
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_badgelist(''||',
'            apex_javascript.add_value(p_region.static_id)||',
'            ''{''||',
'                -- why is this attribute needed if is not used?',
'                apex_javascript.add_attribute(',
'                    ''pageItems'', ',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)',
'                )||',
'                apex_javascript.add_attribute(',
'                    ''ajaxIdentifier'', ',
'                    apex_plugin.get_ajax_identifier, ',
'                    false, ',
'                    false',
'                )||',
'            ''}''||',
'        '');''',
'    );',
'--    CSS for Big Value List',
'--    apex_css.add_file (',
'--        p_name      => ''com_oracle_apex_badge_list'',',
'--        p_directory => p_plugin.file_prefix );',
'    -- Start the list',
'',
'',
'    -- It''s time to emit the selected rows',
'',
'',
'    return null;',
'',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin',
') return apex_plugin.t_region_ajax_result ',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column      constant varchar2(255) := p_region.attribute_01;',
'    c_value_column      constant varchar2(255) := p_region.attribute_02;',
'    c_percent_column    constant varchar2(255) := p_region.attribute_03;',
'    c_link_target       constant varchar2(255) := p_region.attribute_04;',
'    ',
'    c_layout            constant varchar2(1)   := p_region.attribute_05;',
'    c_chart_size        constant varchar2(3)   := p_region.attribute_06;',
'    c_chart_type        constant varchar2(3)   := p_region.attribute_07;',
'    c_colored           constant varchar2(1)   := p_region.attribute_08;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_percent_column_no pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             varchar2(4000);',
'    l_percent           number;',
'    l_url               varchar2(4000);',
'    l_class             varchar2(255);',
'',
'begin',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'        -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Label Column'',',
'                               p_column_alias      => c_label_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Value Column'',',
'                               p_column_alias      => c_value_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_percent_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Percent Column'',',
'                             p_column_alias      => c_percent_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'    ',
'    -- begin output as json',
'    owa_util.mime_header(''application/json'', false);',
'    htp.p(''cache-control: no-cache'');',
'    htp.p(''pragma: no-cache'');',
'    owa_util.http_header_close;',
' --   l_message_when_no_data_found := apex_escape.html_whitelist(',
'  --      apex_plugin_util.replace_substitutions (',
'   --             p_value  => c_message_when_no_data_found,',
'   --             p_escape => false',
'    --        )',
'    --    );',
'    apex_json.open_object();',
'    apex_json.write(''layout'', c_layout); ',
'    apex_json.write(''chart_size'', c_chart_size); ',
'    apex_json.write(''chart_type'', c_chart_type); ',
'    apex_json.write(''colored'', c_colored); ',
'    apex_json.open_array(''data'');',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_json.open_object(); ',
'            -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'            -- can do substitutions for columns contained in the region source query.',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := ',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) );',
'                         --  p_region.escape_output );apex_plugin_util.escape (',
'',
'            apex_json.    write(''label'', l_label); ',
'            ',
'            -- get the value',
'            l_value := apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_value_column_no).data_type,',
'                               p_value     => l_column_value_list(l_value_column_no).value_list(l_row_num) );',
'',
'            apex_json.    write(''value'', l_value); ',
'',
'            -- get percent',
'            if l_percent_column_no is not null then',
'                l_percent := l_column_value_list(l_percent_column_no).value_list(l_row_num).number_value;',
'                apex_json.    write(''percent'', l_percent); ',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := apex_util.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'                apex_json.    write(''url'', l_url);                ',
'            end if;',
'            ',
'            apex_json.close_object();        ',
'',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_all();',
'    ',
'    return null;',
'exception when others then',
'    htp.p(''error: ''||apex_escape.html(sqlerrm));',
'    return null;',
'end ajax;',
'',
''))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_sql_min_column_count=>2
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>',
'select ''Open''               as label,',
'       to_char(320,''9G990'') as value,',
'       13                   as percent',
'  from dual',
' union all',
'select ''Closed''             as label,',
'       to_char(87,''9G990'')  as value,',
'       70                   as percent',
'  from dual',
'</pre>'))
,p_substitute_attributes=>false
,p_reference_id=>33987851348966061177
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Badge lists are useful for displaying a region with a small number of counts for important statistics. For example, in Bug Tracker, this plug-in is used to show the total bugs, open bugs, open high priority bugs, and open critical severity bugs.</'
||'p>',
'<p>This plug-in is suitable for adding to the Home page to show important summary information.</p>'))
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664400861488398146)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664401227877398146)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664401696446398147)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Percent Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the percentage values for the badges. Percentages will be displayed together with the value within the badge.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664402023717398147)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a badge entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664402483387398148)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the layout to determine how the badge list is displayed.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664402811337398148)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>5
,p_display_value=>'Fit to Page'
,p_return_value=>'0'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Sizes the badges to stretch across the page. The width of each badge will be determined by the number of badges and the display width.</p>',
'<p>Note: Badges will not wrap when displayed on smaller devices.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664403339468398148)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>7
,p_display_value=>'Float to Left'
,p_return_value=>'F'
,p_help_text=>'<p>Sizes the badges based on the width of the label for each badge. All badges will be displayed to the left of the region.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664403876353398149)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>10
,p_display_value=>'1 column'
,p_return_value=>'1'
,p_help_text=>'Displays only one badge per row. Therefore, if there are three badges they are displayed on three rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664404359117398149)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>20
,p_display_value=>'2 columns'
,p_return_value=>'2'
,p_help_text=>'Displays only two badges per row. Therefore, if there are three badges they are displayed on two rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664404860465398150)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>30
,p_display_value=>'3 columns'
,p_return_value=>'3'
,p_help_text=>'<p>Displays a maximum of three badges per row. Therefore, if there are four badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664405332363398150)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>40
,p_display_value=>'4 columns'
,p_return_value=>'4'
,p_help_text=>'<p>Displays a maximum of four badges per row. Therefore, if there are six badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664405866840398151)
,p_plugin_attribute_id=>wwv_flow_api.id(33664402483387398148)
,p_display_sequence=>50
,p_display_value=>'5 columns'
,p_return_value=>'5'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Displays a maximum of fix badges per row. Therefore, if there are seven badges they are displayed on two rows.</p>',
'<p>Note: on smaller displays where the badges cannot be displayed appropriately, the responsive region will revert to less column and additional rows. For example, seven badges may be displayed as three columns on three rows, instead of five columns '
||'on two rows.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664406313288398151)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Chart Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664409239083398154)
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'BOX'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the size of badge to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664406794963398151)
,p_plugin_attribute_id=>wwv_flow_api.id(33664406313288398151)
,p_display_sequence=>0
,p_display_value=>'Small'
,p_return_value=>'S'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664407259871398152)
,p_plugin_attribute_id=>wwv_flow_api.id(33664406313288398151)
,p_display_sequence=>10
,p_display_value=>'Medium'
,p_return_value=>'M'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664407710155398152)
,p_plugin_attribute_id=>wwv_flow_api.id(33664406313288398151)
,p_display_sequence=>20
,p_display_value=>'Large'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664408212905398153)
,p_plugin_attribute_id=>wwv_flow_api.id(33664406313288398151)
,p_display_sequence=>30
,p_display_value=>'Extra Large'
,p_return_value=>'B'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664408797147398153)
,p_plugin_attribute_id=>wwv_flow_api.id(33664406313288398151)
,p_display_sequence=>40
,p_display_value=>'Extra Extra Large'
,p_return_value=>'XXL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664409239083398154)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>60
,p_prompt=>'Chart Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BOX'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the shape of the badges to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664409600139398154)
,p_plugin_attribute_id=>wwv_flow_api.id(33664409239083398154)
,p_display_sequence=>10
,p_display_value=>'Rectangular'
,p_return_value=>'BOX'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664410197192398154)
,p_plugin_attribute_id=>wwv_flow_api.id(33664409239083398154)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'DOT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664410686737398155)
,p_plugin_id=>wwv_flow_api.id(33664400560556398144)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select if the badges should be displayed in different colors, or without colors.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664411088351398155)
,p_plugin_attribute_id=>wwv_flow_api.id(33664410686737398155)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664411589479398156)
,p_plugin_attribute_id=>wwv_flow_api.id(33664410686737398155)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_barchart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664412370170398161)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.BARCHART'
,p_display_name=>'D3 Bar Chart'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.BARCHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.barchart/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/d3/3.5.5/d3.min.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/d3.oracle.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/oracle.jql.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/jquery.getScrollbarWidth.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.js',
'#PLUGIN_FILES#d3.oracle.barchart.js',
'#PLUGIN_FILES#d3.oracle.barchart.apex.js',
'#PLUGIN_FILES#com.oracle.apex.d3.barchart.js'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.css',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.css',
'#PLUGIN_FILES#d3.oracle.barchart.css'))
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render ',
'(',
'    p_region                in  apex_plugin.t_region,',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
')',
'return apex_plugin.t_region_render_result',
'is',
'    c_region_static_id      constant varchar2(255)  := apex_escape.html_attribute( p_region.static_id );',
'',
'-- Assign readable names to plugin attributes. Omit data attributes, they''ll be handled in ajax function.',
'    -- Dimensions',
'    c_height_mode           constant varchar2(200)  := p_region.attribute_21;',
'    c_min_height            constant number         := nvl(p_region.attribute_18, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_19, 500);',
'    c_spacing               constant number         := nvl(p_region.attribute_16, 20);',
'    c_inner_spacing         constant number         := nvl(p_region.attribute_17, 20);',
'',
'    -- Axis titles',
'    c_x_axis_title          constant varchar2(200)  := p_region.attribute_08;',
'    c_y_axis_title          constant varchar2(200)  := p_region.attribute_09;',
'',
'    -- Axis grid',
'    c_x_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':X:'') > 0;',
'    c_y_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':Y:'') > 0;',
'',
'    -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_10 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':SERIES:'') > 0;',
'    c_x_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':X:'') > 0;',
'    c_y_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':Y:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':CUSTOM:'') > 0;',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_12 is not null;',
'    c_legend_position       constant varchar2(200)  := p_region.attribute_12;',
'',
'    -- Display modes',
'    c_value_template        constant varchar2(200)  := nvl(p_region.attribute_15, p_region.attribute_25);',
'    c_horizontal            constant boolean        := substr(p_region.attribute_06, 1, instr(p_region.attribute_06, '','') - 1) = ''HORIZONTAL'';',
'    c_display               constant varchar2(200)  := substr(p_region.attribute_06, instr(p_region.attribute_06, '','') + 1);',
'    c_responsive            constant boolean        := p_plugin.attribute_06 = ''Y'';',
'    c_transitions           constant boolean        := p_plugin.attribute_05 = ''Y'';',
'',
'    -- Colors',
'    c_color_scheme          constant varchar2(200)  := p_region.attribute_13;',
'    l_colors                varchar2(200)           := p_region.attribute_14;',
'    c_multiple_colors       constant boolean        := p_region.attribute_24 = ''Y'';',
'',
'    -- Aspect ratios',
'    c_min_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_02, ''Min Aspect Radio'' ), 1.333);',
'    c_max_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_01, ''Max Aspect Radio'' ), 3);',
'    c_threshold             constant number         := p_plugin.attribute_03;',
'    c_threshold_of          constant varchar2(200)  := p_plugin.attribute_04;',
'',
'    -- Function constants',
'    c_rgb_list_regex        constant varchar2(200)  := ''^#[0-9a-fA-F]{6}(,#[0-9a-fA-F]{6})*$'';',
'begin',
'    -- Add placeholder div',
'    sys.htp.p (',
'        ''<div class="a-D3BarChart" id="'' || c_region_static_id || ''_region">'' ||',
'            ''<div class="a-D3BarChart-container" id="'' || c_region_static_id || ''_chart"></div>'' ||',
'        ''</div>'' );',
'',
'',
'    -- Color scheme',
'    case c_color_scheme',
'        when ''MODERN'' then',
'            l_colors := ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC'';',
'        when ''MODERN2'' then',
'            l_colors := ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C'';',
'        when ''SOLAR'' then',
'            l_colors := ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900'';',
'        when ''METRO'' then',
'            l_colors := ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5'';',
'        else',
'            null;',
'    end case;',
'',
'    -- Build the initial chart. Data will be loaded with ajax.',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_d3_barchart('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''chartRegionId'',  p_region.static_id || ''_chart'') ||',
'                apex_javascript.add_attribute(''xAxisTitle'',     c_x_axis_title) || ',
'                apex_javascript.add_attribute(''yAxisTitle'',     c_y_axis_title) || ',
'                apex_javascript.add_attribute(''showTooltip'',    c_show_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipSeries'',  c_series_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipX'',       c_x_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipY'',       c_y_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipCustom'',  c_custom_tooltip) || ',
'                apex_javascript.add_attribute(''spacing'',        c_spacing) || ',
'                apex_javascript.add_attribute(''innerSpacing'',   c_inner_spacing) || ',
'                apex_javascript.add_attribute(''horizontal'',     c_horizontal) || ',
'                apex_javascript.add_attribute(''display'',        c_display) || ',
'                apex_javascript.add_attribute(''responsive'',     c_responsive) || ',
'                apex_javascript.add_attribute(''transitions'',    c_transitions) || ',
'                apex_javascript.add_attribute(''valueTemplate'',  c_value_template) || ',
'                apex_javascript.add_attribute(''showLegend'',     c_show_legend) || ',
'                apex_javascript.add_attribute(''legendPosition'', c_legend_position) || ',
'                apex_javascript.add_attribute(''colors'',         l_colors) || ',
'                apex_javascript.add_attribute(''xGrid'',          c_x_axis_grid) || ',
'                apex_javascript.add_attribute(''yGrid'',          c_y_axis_grid) || ',
'                apex_javascript.add_attribute(''multipleColors'', c_multiple_colors) || ',
'                apex_javascript.add_attribute(''heightMode'',     c_height_mode) || ',
'                apex_javascript.add_attribute(''minHeight'',      c_min_height) || ',
'                apex_javascript.add_attribute(''maxHeight'',      c_max_height) || ',
'                apex_javascript.add_attribute(''threshold'',      c_threshold) || ',
'                apex_javascript.add_attribute(''thresholdOf'',    c_threshold_of) || ',
'                apex_javascript.add_attribute(''minAR'',          c_min_ar) || ',
'                apex_javascript.add_attribute(''maxAR'',          c_max_ar) || ',
'                apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''},'' || apex_javascript.add_value( p_region.name, false ) || '');})()'' );',
'    return null;',
'end;',
'',
'function ajax',
'(',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
')',
'return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones, ',
'    -- makes the code more readable. ',
'',
'    c_has_multiple_series   constant boolean := p_region.attribute_03 is not null;',
'',
'    -- Column names',
'    c_x_column              constant varchar2(255) := p_region.attribute_01;',
'    c_y_column              constant varchar2(255) := p_region.attribute_02;',
'    c_series_column         constant varchar2(255) := case when c_has_multiple_series then p_region.attribute_04 end;',
'    c_tooltip_column        constant varchar2(255) := p_region.attribute_11;',
'    c_link_target           constant varchar2(800) := p_region.attribute_20;',
'',
'    -- Series name, for single series configuration',
'    c_series_name           constant varchar2(200) := case when not c_has_multiple_series then p_region.attribute_05 end;',
'    c_use_sql_color         constant boolean       := p_region.attribute_13 = ''COLUMN'';',
'',
'    -- Column numbers for fetching',
'    l_x_column_no           pls_integer;',
'    l_y_column_no           pls_integer;',
'    l_series_column_no      pls_integer;',
'    l_tooltip_column_no     pls_integer;',
'    l_column_value_list     apex_plugin_util.t_column_value_list2;',
'',
'    -- Holders for row data',
'    l_x                     varchar2(200);',
'    l_y                     number;',
'    l_series                varchar2(4000);',
'    l_color                 varchar2(4000);',
'    l_tooltip               varchar2(4000);',
'    l_link                  varchar2(4000);',
'',
'begin',
'',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'',
'    apex_json.open_object;',
'',
'    -- First, we must get the color mapping if the color scheme requires it.',
'    if c_use_sql_color then',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'            p_sql_statement     => p_region.attribute_23,',
'            p_min_columns       => 2,',
'            p_max_columns       => 2,',
'            p_component_name    => p_region.name );',
'',
'        apex_json.open_array(''colors'');',
'        for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'            -- Series, optional',
'            l_series := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(1).data_type,',
'                p_value     => l_column_value_list(1).value_list(l_row_num) );',
'            l_color := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(2).data_type,',
'                p_value     => l_column_value_list(2).value_list(l_row_num) );',
'            ',
'            apex_json.open_object;',
'            apex_json.write(''series'', l_series);',
'            apex_json.write(''color'',  l_color);',
'            apex_json.close_object;',
'',
'        end loop;',
'        apex_json.close_array;',
'',
'        l_series := null;',
'    end if;',
'',
'    -- Then, we get the actual data points.',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'        p_sql_statement  => p_region.source,',
'        p_min_columns    => 2,',
'        p_max_columns    => 5,',
'        p_component_name => p_region.name );',
'',
'    -- Get the actual column # for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_x_column_no := apex_plugin_util.get_column_no (',
'                p_attribute_label       => ''x column'',',
'                p_column_alias          => c_x_column,',
'                p_column_value_list     => l_column_value_list,',
'                p_is_required           => true,',
'                p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_y_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''y column'',',
'        p_column_alias          => c_y_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => true,',
'        p_data_type             => apex_plugin_util.c_data_type_number );',
'',
'    l_series_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''series column'',',
'        p_column_alias          => c_series_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_tooltip_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''tooltip column'',',
'        p_column_alias          => c_tooltip_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    apex_json.open_array(''data'');',
'',
'    -- Fetch data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num => l_row_num ',
'            );',
'',
'            -- X is a string, required',
'            if l_x_column_no is not null then',
'                l_x := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_x_column_no).data_type,',
'                    p_value     => l_column_value_list(l_x_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Y is a number, required',
'            l_y := l_column_value_list(l_y_column_no).value_list(l_row_num).number_value;',
'',
'            -- Series, optional',
'            if l_series_column_no is not null then',
'                l_series := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_series_column_no).data_type,',
'                    p_value     => l_column_value_list(l_series_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Tooltip, optional',
'            if l_tooltip_column_no is not null then',
'                l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_tooltip_column_no).data_type,',
'                    p_value     => l_column_value_list(l_tooltip_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Link, optional',
'            if c_link_target is not null then',
'                l_link := apex_util.prepare_url (',
'                    apex_plugin_util.replace_substitutions (',
'                        p_value  => c_link_target,',
'                        p_escape => false ) );',
'            end if;',
'',
'            apex_json.open_object;',
'            apex_json.write(''series'',  nvl(l_series, c_series_name));',
'            apex_json.write(''tooltip'', l_tooltip);',
'            apex_json.write(''link'',    l_link);',
'            apex_json.write(''x'',       l_x);',
'            apex_json.write(''y'',       l_y);',
'            apex_json.close_object;',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'',
'    return null;',
'end;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>5
,p_substitute_attributes=>false
,p_reference_id=>33939952105441454824
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Bar Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>58
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664412653868398162)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'3'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664413075150398163)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>500
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A minimum aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664413457282398163)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>540
,p_prompt=>'Responsive Behavior Threshold'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'480'
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the threshold (in pixels) at which the responsive behavior will be activated.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664413802085398163)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>530
,p_prompt=>'Responsive Behavior Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'WINDOW'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the responsive behavior threshold will be compared to the window or the region width.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664414242978398164)
,p_plugin_attribute_id=>wwv_flow_api.id(33664413802085398163)
,p_display_sequence=>10
,p_display_value=>'Window'
,p_return_value=>'WINDOW'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664414776782398164)
,p_plugin_attribute_id=>wwv_flow_api.id(33664413802085398163)
,p_display_sequence=>20
,p_display_value=>'Region'
,p_return_value=>'REGION'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664415298441398164)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>550
,p_prompt=>'Enable Transitions'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether transitions are enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664415687819398165)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>520
,p_prompt=>'Responsive Behavior'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether responsive behavior is enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664416001023398165)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664416459396398165)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Y Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the Y-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664416890386398166)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>50
,p_prompt=>'Multiple Series'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check multiple series if you want the chart displaying more than one series of data. The different series must be specified by a column from the region SQL Query.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664417283421398166)
,p_plugin_attribute_id=>wwv_flow_api.id(33664416890386398166)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664417752451398166)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>60
,p_prompt=>'Series Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664416890386398166)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Select the column from the region SQL Query that defines the multiple series for the chart. The values from this column will become the labels for the series.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664418185921398167)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>70
,p_prompt=>'Series Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(33664416890386398166)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Enter the name of the single data series which is shown on the legend.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664418596998398167)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>40
,p_prompt=>'Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'VERTICAL,SIDE-BY-SIDE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the bar chart data is displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664418957203398167)
,p_plugin_attribute_id=>wwv_flow_api.id(33664418596998398167)
,p_display_sequence=>10
,p_display_value=>'Vertical, Side by Side'
,p_return_value=>'VERTICAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664419436228398168)
,p_plugin_attribute_id=>wwv_flow_api.id(33664418596998398167)
,p_display_sequence=>20
,p_display_value=>'Horizontal, Side by Side'
,p_return_value=>'HORIZONTAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664419943842398168)
,p_plugin_attribute_id=>wwv_flow_api.id(33664418596998398167)
,p_display_sequence=>30
,p_display_value=>'Vertical, Stacked'
,p_return_value=>'VERTICAL,STACKED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664420407982398169)
,p_plugin_attribute_id=>wwv_flow_api.id(33664418596998398167)
,p_display_sequence=>40
,p_display_value=>'Horizontal, Stacked'
,p_return_value=>'HORIZONTAL,STACKED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664420967476398169)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>90
,p_prompt=>'X-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Enter the label for the X-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664421379862398169)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>100
,p_prompt=>'Y-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'The label for the Y-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664421724500398170)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>130
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664422173525398170)
,p_plugin_attribute_id=>wwv_flow_api.id(33664421724500398170)
,p_display_sequence=>0
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664422654181398170)
,p_plugin_attribute_id=>wwv_flow_api.id(33664421724500398170)
,p_display_sequence=>10
,p_display_value=>'Show X value'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664423191635398171)
,p_plugin_attribute_id=>wwv_flow_api.id(33664421724500398170)
,p_display_sequence=>20
,p_display_value=>'Show Y value'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664423680233398171)
,p_plugin_attribute_id=>wwv_flow_api.id(33664421724500398170)
,p_display_sequence=>30
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664424141977398172)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>140
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664421724500398170)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:X:Y:CUSTOM,SERIES:X:CUSTOM,SERIES:Y:CUSTOM,X:Y:CUSTOM,SERIES:CUSTOM,X:CUSTOM,Y:CUSTOM,CUSTOM'
,p_help_text=>'Enter the column from the region SQL Query that holds the custom tooltip values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664424518576398172)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>150
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select where the legend is displayed on the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664424975865398173)
,p_plugin_attribute_id=>wwv_flow_api.id(33664424518576398172)
,p_display_sequence=>10
,p_display_value=>'Above chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664425463315398173)
,p_plugin_attribute_id=>wwv_flow_api.id(33664424518576398172)
,p_display_sequence=>20
,p_display_value=>'Below chart'
,p_return_value=>'BOTTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664425973300398174)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>250
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Theme Default'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the color scheme used to render the chart.</p>',
'<p>Note: For multiple series charts, each series will be assigned a different color depending on the setting for ''Multiple Colors''.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664426395331398174)
,p_plugin_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664426856321398175)
,p_plugin_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664427306363398175)
,p_plugin_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664427899000398175)
,p_plugin_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664428392760398176)
,p_plugin_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_display_sequence=>50
,p_display_value=>'SQL Query'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664428854433398176)
,p_plugin_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664429360283398177)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>260
,p_prompt=>'Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>RGB color notation  (red,green,blue)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>RGBA color notation (red,green,blue,alpha)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>'<p>Enter a colon-separated list of color strings for the custom colors to be used in the chart.</p>'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664429706394398177)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>120
,p_prompt=>'Custom Value Formatting'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'FRIENDLY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_depending_on_condition_type=>'NULL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li><b>,d</b> = 14,435</li>',
'<li><b>d</b> = 14435</li>',
'<li><b>,.2f</b> = 14,435.49</li>',
'<li><b>.2f</b> = 14435.49</li>',
'<li><b>.3s</b> = 14.4k</li>',
'<li><b>$,d</b> = $14,435</li>',
'<li><b>$d</b> = $14435</li>',
'<li><b>$,.2f</b> = $14,435.49</li>',
'<li><b>$.2f</b> = $14435.49</li>',
'<li><b>$.3s</b> = $14.4k</li>',
'<li><b>n" ft."</b> = 14435.49 ft. **</li>',
'<li><b>"[["$.3s"]]"</b> = [[$14.4k]] **</li>',
'<li>Refer to https://github.com/mbostock/d3/wiki/Formatting#d3_format for the full syntax specification</li>',
'</ul>',
'<br/>',
'** You may use leading and trailing double-quoted literals, but this feature is not part of the standard D3 specification'))
,p_help_text=>'Enter the D3 format string used to format the Y-axis values on axes, tooltips and legends. Use <pre>FRIENDLY</pre> to utilize sensible formatting defaults for your data.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664430183909398177)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>200
,p_prompt=>'Spacing Between Categories'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_help_text=>'Enter the spacing between categories, expressed as an integer percentage (1-100).'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664430573879398178)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>210
,p_prompt=>'Spacing Between Series'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664416890386398166)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the spacing between series on the same category (X-axis value). It is represented as an integer percentage (0-100).</p>',
'<p>Note: This setting only affects charts using the "Side by Side" display modes.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664430961650398179)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 100px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664431374887398179)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'The maximum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 500px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664431750133398179)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664432168371398180)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>170
,p_prompt=>'Height Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BARS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the minimum and maximum height of the chart is calculated.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664432508045398180)
,p_plugin_attribute_id=>wwv_flow_api.id(33664432168371398180)
,p_display_sequence=>10
,p_display_value=>'Bars Area'
,p_return_value=>'BARS'
,p_help_text=>'Minimum and maximum height for the area is determined by the height of the the bars drawn. Axis labels may take additional space.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664433034633398180)
,p_plugin_attribute_id=>wwv_flow_api.id(33664432168371398180)
,p_display_sequence=>20
,p_display_value=>'Chart Area'
,p_return_value=>'CHART'
,p_help_text=>'Minimum and maximum height will include the axes dimensions.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664433532210398181)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>160
,p_prompt=>'Show Grid Lines'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check the axes to display grid lines for that axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664433954136398181)
,p_plugin_attribute_id=>wwv_flow_api.id(33664433532210398181)
,p_display_sequence=>10
,p_display_value=>'X-Axis'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664434451256398181)
,p_plugin_attribute_id=>wwv_flow_api.id(33664433532210398181)
,p_display_sequence=>20
,p_display_value=>'Y-Axis'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664434929908398182)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>270
,p_prompt=>'Color SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664425973300398174)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>select ''SALES'', rgb(0,255,0)',
'from dual',
'UNION',
'select ''RESEARCH'', rgba(0,25,47,0.5)',
'from dual;</pre>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Enter a SQL Query that maps a series name to an RGB color. The first column must contain the series names (and those values must match the ones returned from the region SQL) and the second column must have the RGB or RGBA color notation for the serie'
||'s. ',
'Both columns must be VARCHAR2.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664435321986398182)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>80
,p_prompt=>'Multiple Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664416890386398166)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Select whether each series is displayed in a different color.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664435743735398182)
,p_plugin_id=>wwv_flow_api.id(33664412370170398161)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>110
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Custom'
,p_help_text=>'Select the format mask to apply to the displayed values.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664436128061398183)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>30
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664436603591398183)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>40
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664437192066398183)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>60
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664437640602398184)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>70
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664438145419398184)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>71
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664438651476398185)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>80
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664439175211398185)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>90
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664439639435398185)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>99
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664440181727398186)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>100
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664440628348398186)
,p_plugin_attribute_id=>wwv_flow_api.id(33664435743735398182)
,p_display_sequence=>120
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_line
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664444511364398193)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.LINE'
,p_display_name=>'D3 Line Chart'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.LINE'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.linechart/1.0/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/d3/3.5.5/d3.min.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/d3.oracle.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/oracle.jql.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.js',
'#PLUGIN_FILES#d3.oracle.linechart.js',
'#PLUGIN_FILES#com.oracle.apex.d3.linechart.js'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.css',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.css',
'#PLUGIN_FILES#d3.oracle.linechart.css'))
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render ',
'(',
'    p_region                in  apex_plugin.t_region,',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
')',
'return apex_plugin.t_region_render_result',
'is',
'    -- Assign readable names to plugin attributes. Omit data attributes, they''ll be handled in ajax function.',
'    -- Dimensions',
'    c_height_mode           constant varchar2(200)  := p_region.attribute_09;',
'    c_min_height            constant number         := nvl(p_region.attribute_17, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_18, 500);',
'',
'    -- Axis titles',
'    c_x_axis_title          constant varchar2(200)  := p_region.attribute_03;',
'    c_y_axis_title          constant varchar2(200)  := p_region.attribute_04;',
'',
'    -- Axis grid',
'    c_x_axis_grid           constant boolean        := instr('':'' || p_region.attribute_21 || '':'', '':X:'') > 0;',
'    c_y_axis_grid           constant boolean        := instr('':'' || p_region.attribute_21 || '':'', '':Y:'') > 0;',
'',
'    -- Line interpolation',
'    c_line_interpolation    constant varchar2(200)  := p_region.attribute_08;',
'',
'    -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_16 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_16 || '':'', '':SERIES:'') > 0;',
'    c_x_tooltip             constant boolean        := instr('':'' || p_region.attribute_16 || '':'', '':X:'') > 0;',
'    c_y_tooltip             constant boolean        := instr('':'' || p_region.attribute_16 || '':'', '':Y:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_16 || '':'', '':CUSTOM:'') > 0;',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_25 is not null;',
'    c_legend_position       constant varchar2(200)  := p_region.attribute_25;',
'',
'    -- Display modes',
'    c_x_data_type           constant varchar2(200)  := p_region.attribute_05;',
'    c_x_value_template      constant varchar2(200)  := nvl(p_region.attribute_06, p_region.attribute_07);',
'    c_y_value_template      constant varchar2(200)  := nvl(p_region.attribute_10, p_region.attribute_11);',
'    c_x_tick_interval       constant varchar2(200)  := nvl(p_region.attribute_12, ''auto'');',
'    c_responsive            constant boolean        := p_plugin.attribute_05 = ''Y'';',
'    c_transitions           constant boolean        := p_plugin.attribute_06 = ''Y'';',
'    c_display               constant varchar2(200)  := p_region.attribute_20;',
'',
'    -- Colors',
'    c_color_scheme          constant varchar2(200)  := p_region.attribute_13;',
'    l_colors                varchar2(200)           := p_region.attribute_14;',
'',
'    -- Aspect ratios',
'    c_min_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number(p_plugin.attribute_02, ''Min Aspect Ratio''), 1.333);',
'    c_max_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number(p_plugin.attribute_01, ''Max Aspect Ratio''), 3);',
'    c_threshold             constant number         := p_plugin.attribute_03;',
'    c_threshold_of          constant varchar2(200)  := p_plugin.attribute_04;',
'begin',
'    -- Add placeholder div',
'    sys.htp.p (',
'        ''<div class="a-D3LineChart" id="'' || p_region.static_id || ''_region">'' ||',
'            ''<div class="a-D3LineChart-container" id="'' || p_region.static_id || ''_chart"></div>'' ||',
'        ''</div>'' );',
'',
'    -- Color scheme',
'    case c_color_scheme',
'        when ''MODERN'' then',
'            l_colors := ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC'';',
'        when ''MODERN2'' then',
'            l_colors := ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C'';',
'        when ''SOLAR'' then',
'            l_colors := ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900'';',
'        when ''METRO'' then',
'            l_colors := ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5'';',
'        else',
'            null;',
'    end case;    ',
'',
'    -- Build the initial chart. Data will be loaded with ajax.',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_d3_linechart('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''chartRegionId'',  p_region.static_id || ''_chart'') ||',
'                apex_javascript.add_attribute(''xAxisTitle'',     c_x_axis_title) || ',
'                apex_javascript.add_attribute(''yAxisTitle'',     c_y_axis_title) || ',
'                apex_javascript.add_attribute(''showTooltip'',    c_show_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipSeries'',  c_series_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipX'',       c_x_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipY'',       c_y_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipCustom'',  c_custom_tooltip) ||',
'                apex_javascript.add_attribute(''responsive'',     c_responsive) || ',
'                apex_javascript.add_attribute(''transitions'',    c_transitions) || ',
'                apex_javascript.add_attribute(''xDataType'',      c_x_data_type) || ',
'                apex_javascript.add_attribute(''display'',        c_display) || ',
'                apex_javascript.add_attribute(''xValueTemplate'', c_x_value_template) || ',
'                apex_javascript.add_attribute(''yValueTemplate'', c_y_value_template) || ',
'                apex_javascript.add_attribute(''xTickInterval'',  c_x_tick_interval) || ',
'                apex_javascript.add_attribute(''showLegend'',     c_show_legend) || ',
'                apex_javascript.add_attribute(''legendPosition'', c_legend_position) || ',
'                apex_javascript.add_attribute(''colors'',         l_colors) || ',
'                apex_javascript.add_attribute(''xGrid'',          c_x_axis_grid) || ',
'                apex_javascript.add_attribute(''yGrid'',          c_y_axis_grid) || ',
'                apex_javascript.add_attribute(''interpolation'',  c_line_interpolation) ||',
'                apex_javascript.add_attribute(''heightMode'',     c_height_mode) ||',
'                apex_javascript.add_attribute(''minHeight'',      c_min_height) || ',
'                apex_javascript.add_attribute(''maxHeight'',      c_max_height) || ',
'                apex_javascript.add_attribute(''threshold'',      c_threshold) || ',
'                apex_javascript.add_attribute(''thresholdOf'',    c_threshold_of) || ',
'                apex_javascript.add_attribute(''minAR'',          c_min_ar) ||',
'                apex_javascript.add_attribute(''maxAR'',          c_max_ar) ||',
'                apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''});'' );',
'    return null;',
'end;',
'',
'function ajax',
'(',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
')',
'return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones, ',
'    -- makes the code more readable. ',
'',
'    -- Column names',
'    c_x_column              constant varchar2(255) := p_region.attribute_01;',
'    c_y_column              constant varchar2(255) := p_region.attribute_02;',
'    c_series_column         constant varchar2(255) := p_region.attribute_23;',
'    c_tooltip_column        constant varchar2(255) := p_region.attribute_15;',
'    c_link_template         constant varchar2(255) := p_region.attribute_19;',
'',
'    -- X Column data type',
'    c_x_data_type           constant varchar2(200)  := p_region.attribute_05;',
'',
'    -- Series name, for single series configuration',
'    c_series_name           constant varchar2(200) := p_region.attribute_24;',
'    c_use_sql_color         constant boolean       := p_region.attribute_13 = ''COLUMN'';',
'',
'    -- Column numbers for fetching',
'    l_x_column_no           pls_integer;',
'    l_y_column_no           pls_integer;',
'    l_series_column_no      pls_integer;',
'    l_tooltip_column_no     pls_integer;',
'    l_column_value_list     apex_plugin_util.t_column_value_list2;',
'',
'    -- Holders for row data',
'    l_x                     number;',
'    l_x_date                varchar2(200);',
'    l_y                     number;',
'    l_series                varchar2(4000);',
'    l_color                 varchar2(4000);',
'    l_tooltip               varchar2(4000);',
'    l_link                  varchar2(4000);',
'',
'begin',
'',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'',
'    apex_json.open_object;',
'',
'    -- First, we must get the color mapping if the color scheme requires it.',
'    if c_use_sql_color then',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'            p_sql_statement     => p_region.attribute_23,',
'            p_min_columns       => 2,',
'            p_max_columns       => 2,',
'            p_component_name    => p_region.name );',
'',
'        apex_json.open_array(''colors'');',
'        for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'            -- Series, optional',
'            l_series := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(1).data_type,',
'                p_value     => l_column_value_list(1).value_list(l_row_num) );',
'            l_color := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(2).data_type,',
'                p_value     => l_column_value_list(2).value_list(l_row_num) );',
'            ',
'            apex_json.open_object;',
'            apex_json.write(''series'', l_series);',
'            apex_json.write(''color'', l_color);',
'            apex_json.close_object();',
'',
'        end loop;',
'        apex_json.close_array;',
'',
'        l_series := null;',
'    end if;',
'',
'    -- Then, we get the actual data points.',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'        p_sql_statement     => p_region.source,',
'        p_min_columns       => 2,',
'        p_max_columns       => 5,',
'        p_component_name    => p_region.name );',
'',
'    -- Get the actual column # for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    IF c_x_data_type = ''NUMBER'' THEN',
'        l_x_column_no := apex_plugin_util.get_column_no (',
'            p_attribute_label       => ''x column'',',
'            p_column_alias          => c_x_column,',
'            p_column_value_list     => l_column_value_list,',
'            p_is_required           => true,',
'            p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'    ELSIF c_x_data_type = ''TIMESTAMP'' THEN',
'        l_x_column_no := apex_plugin_util.get_column_no (',
'            p_attribute_label       => ''x column'',',
'            p_column_alias          => c_x_column,',
'            p_column_value_list     => l_column_value_list,',
'            p_is_required           => true,',
'            p_data_type             => apex_plugin_util.c_data_type_timestamp );',
'    ELSIF c_x_data_type = ''TIMESTAMP_TZ'' THEN',
'        l_x_column_no := apex_plugin_util.get_column_no (',
'            p_attribute_label       => ''x column'',',
'            p_column_alias          => c_x_column,',
'            p_column_value_list     => l_column_value_list,',
'            p_is_required           => true,',
'            p_data_type             => apex_plugin_util.c_data_type_timestamp_tz );',
'    ELSIF c_x_data_type = ''TIMESTAMP_LTZ'' THEN',
'        l_x_column_no := apex_plugin_util.get_column_no (',
'            p_attribute_label       => ''x column'',',
'            p_column_alias          => c_x_column,',
'            p_column_value_list     => l_column_value_list,',
'            p_is_required           => true,',
'            p_data_type             => apex_plugin_util.c_data_type_timestamp_ltz );',
'    ELSE',
'        l_x_column_no := apex_plugin_util.get_column_no (',
'            p_attribute_label       => ''x column'',',
'            p_column_alias          => c_x_column,',
'            p_column_value_list     => l_column_value_list,',
'            p_is_required           => true,',
'            p_data_type             => apex_plugin_util.c_data_type_date );',
'    END IF;',
'',
'    l_y_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''y column'',',
'        p_column_alias          => c_y_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => true,',
'        p_data_type             => apex_plugin_util.c_data_type_number );',
'',
'    l_series_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''series column'',',
'        p_column_alias          => c_series_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_tooltip_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''tooltip column'',',
'        p_column_alias          => c_tooltip_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    --sys.htp.prn(''"data":['');',
'    apex_json.open_array(''data'');',
'',
'    -- Fetch data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num => l_row_num ',
'            );',
'',
'            -- X is a string, number or date required',
'            if l_x_column_no is not null then',
'                ',
'                IF c_x_data_type = ''NUMBER'' THEN',
'                    l_x := l_column_value_list(l_x_column_no).value_list(l_row_num).number_value;',
'                ELSIF c_x_data_type = ''TIMESTAMP'' THEN',
'                    l_x_date := to_char(l_column_value_list(l_x_column_no).value_list(l_row_num).timestamp_value, ''DY MON DD YYYY HH24:MI:SS TZH:TZM''); ',
'                ELSIF c_x_data_type = ''TIMESTAMP_TZ'' THEN',
'                    l_x_date := to_char(l_column_value_list(l_x_column_no).value_list(l_row_num).timestamp_tz_value, ''DY MON DD YYYY HH24:MI:SS TZH:TZM'');',
'                ELSIF c_x_data_type = ''TIMESTAMP_LTZ'' THEN',
'                    l_x_date := to_char(l_column_value_list(l_x_column_no).value_list(l_row_num).timestamp_ltz_value, ''DY MON DD YYYY HH24:MI:SS'');',
'                ELSE',
'                    l_x_date := to_char(l_column_value_list(l_x_column_no).value_list(l_row_num).date_value, ''DY MON DD YYYY HH24:MI:SS'');',
'                END IF;',
'',
'',
'            end if;',
'',
'            -- Y is a number, required',
'            l_y := l_column_value_list(l_y_column_no).value_list(l_row_num).number_value;',
'',
'            -- Series, optional',
'            if l_series_column_no is not null then',
'                l_series := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_series_column_no).data_type,',
'                    p_value     => l_column_value_list(l_series_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Tooltip, optional',
'            if l_tooltip_column_no is not null then',
'                l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_tooltip_column_no).data_type,',
'                    p_value     => l_column_value_list(l_tooltip_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Link, optional',
'            if c_link_template is not null then',
'                l_link := apex_util.prepare_url (',
'                    apex_plugin_util.replace_substitutions (',
'                        p_value  => c_link_template,',
'                        p_escape => false ) );',
'            end if;',
'',
'            apex_json.open_object;',
'            apex_json.write(''series'', nvl(l_series, c_series_name));',
'            apex_json.write(''tooltip'', l_tooltip);',
'            apex_json.write(''link'', l_link);',
'             IF c_x_data_type = ''NUMBER'' THEN',
'                apex_json.write(''x'', l_x);',
'            ELSE',
'                apex_json.write(''x'', l_x_date);',
'            END IF;',
'            apex_json.write(''y'', l_y);',
'            apex_json.close_object;',
'',
'            apex_plugin_util.clear_component_values;',
'',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'',
'    return null;',
'end;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>5
,p_substitute_attributes=>false
,p_reference_id=>34041006659787007504
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Line Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>58
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664444862527398195)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>520
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'3'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664445236490398195)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>510
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A minimum aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664445644328398196)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>550
,p_prompt=>'Responsive Behavior Threshold'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'480'
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the threshold (in pixels) at which the responsive behavior will be activated.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664446032691398196)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>540
,p_prompt=>'Responsive Behavior Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'WINDOW'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the responsive behavior threshold will be compared to the window or the region width.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664446401324398196)
,p_plugin_attribute_id=>wwv_flow_api.id(33664446032691398196)
,p_display_sequence=>10
,p_display_value=>'Window'
,p_return_value=>'WINDOW'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664446941218398197)
,p_plugin_attribute_id=>wwv_flow_api.id(33664446032691398196)
,p_display_sequence=>20
,p_display_value=>'Region'
,p_return_value=>'REGION'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664447467594398197)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>530
,p_prompt=>'Responsive Behavior'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether responsive behavior is enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664447837348398197)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>560
,p_prompt=>'Enable Transitions'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether transitions are enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664448293038398198)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER:DATE:TIMESTAMP'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664448648741398198)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Y Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the Y-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664449041801398198)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>70
,p_prompt=>'X-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Enter the label for the X-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664449470200398199)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>80
,p_prompt=>'Y-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Enter the label for the Y-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664449836671398199)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>90
,p_prompt=>'X-Axis Data Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NUMBER'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the data type for the X-axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664450204126398199)
,p_plugin_attribute_id=>wwv_flow_api.id(33664449836671398199)
,p_display_sequence=>10
,p_display_value=>'Number'
,p_return_value=>'NUMBER'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664450707104398200)
,p_plugin_attribute_id=>wwv_flow_api.id(33664449836671398199)
,p_display_sequence=>20
,p_display_value=>'Date'
,p_return_value=>'DATE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664451263637398200)
,p_plugin_attribute_id=>wwv_flow_api.id(33664449836671398199)
,p_display_sequence=>30
,p_display_value=>'Timestamp'
,p_return_value=>'TIMESTAMP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664451771301398201)
,p_plugin_attribute_id=>wwv_flow_api.id(33664449836671398199)
,p_display_sequence=>40
,p_display_value=>'Timestamp with Time Zone'
,p_return_value=>'TIMESTAMP_TZ'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664452203593398201)
,p_plugin_attribute_id=>wwv_flow_api.id(33664449836671398199)
,p_display_sequence=>50
,p_display_value=>'Timestamp with Local Time Zone'
,p_return_value=>'TIMESTAMP_LTZ'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664452771975398201)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>110
,p_prompt=>'X-Axis Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Custom'
,p_help_text=>'Select the data format mask for the X-axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664453179127398202)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>30
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664453647959398202)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>40
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664454144204398202)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>60
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664454699869398203)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>70
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664455100450398203)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>71
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664455683865398203)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>80
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664456121717398204)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>90
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664456658828398204)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>99
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664457135809398204)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>100
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664457642931398205)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>120
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664458147368398205)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>130
,p_display_value=>'23:45:12'
,p_return_value=>'%X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664458615394398206)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>140
,p_display_value=>'12/24/2000'
,p_return_value=>'%x'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664459130750398206)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>150
,p_display_value=>'Mon Jan 5 23:45:12 2000'
,p_return_value=>'%c'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664459642803398206)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>160
,p_display_value=>'12 Jan 2000'
,p_return_value=>'%e %b %Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664460178172398207)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>170
,p_display_value=>'Day'
,p_return_value=>'%A'
,p_help_text=>'Full weekday name'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664460670634398207)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>180
,p_display_value=>'Month'
,p_return_value=>'%B'
,p_help_text=>'Full month name'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664461144966398207)
,p_plugin_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_display_sequence=>190
,p_display_value=>'Year'
,p_return_value=>'%Y'
,p_help_text=>'Full year'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664461626444398208)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>120
,p_prompt=>'X-Axis Custom Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'FRIENDLY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664452771975398201)
,p_depending_on_condition_type=>'NULL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li><b>,d</b> = 14,435</li>',
'<li><b>d</b> = 14435</li>',
'<li><b>,.2f</b> = 14,435.49</li>',
'<li><b>.2f</b> = 14435.49</li>',
'<li><b>.3s</b> = 14.4k</li>',
'<li><b>$,d</b> = $14,435</li>',
'<li><b>$d</b> = $14435</li>',
'<li><b>$,.2f</b> = $14,435.49</li>',
'<li><b>$.2f</b> = $14435.49</li>',
'<li><b>$.3s</b> = $14.4k</li>',
'<li><b>n" ft."</b> = 14435.49 ft. **</li>',
'<li><b>"[["$.3s"]]"</b> = [[$14.4k]] **</li>',
'<li>Refer to https://github.com/mbostock/d3/wiki/Formatting#d3_format for the full syntax specification</li>',
'</ul>',
'<br/>',
'** You may use leading and trailing double-quoted literals, but this feature is not part of the standard D3 specification'))
,p_help_text=>'Enter the D3 format string used to format the X-axis values on axes, tooltips and legends. Use <pre>FRIENDLY</pre> to utilize sensible formatting defaults for your data.'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664462048533398208)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>220
,p_prompt=>'Line Interpolation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'linear'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the curvature of the line is fitted for the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664462444863398208)
,p_plugin_attribute_id=>wwv_flow_api.id(33664462048533398208)
,p_display_sequence=>10
,p_display_value=>'Linear'
,p_return_value=>'linear'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664462907329398209)
,p_plugin_attribute_id=>wwv_flow_api.id(33664462048533398208)
,p_display_sequence=>20
,p_display_value=>'Step Before'
,p_return_value=>'step-before'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664463491838398209)
,p_plugin_attribute_id=>wwv_flow_api.id(33664462048533398208)
,p_display_sequence=>30
,p_display_value=>'Step After'
,p_return_value=>'step-after'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664463949257398210)
,p_plugin_attribute_id=>wwv_flow_api.id(33664462048533398208)
,p_display_sequence=>40
,p_display_value=>'Cardinal'
,p_return_value=>'cardinal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664464499556398210)
,p_plugin_attribute_id=>wwv_flow_api.id(33664462048533398208)
,p_display_sequence=>50
,p_display_value=>'Monotone'
,p_return_value=>'monotone'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664464951659398210)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>230
,p_prompt=>'Height Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'LINES'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the minimum and maximum height of the chart is calculated.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664465369855398211)
,p_plugin_attribute_id=>wwv_flow_api.id(33664464951659398210)
,p_display_sequence=>10
,p_display_value=>'Chart Lines Only'
,p_return_value=>'LINES'
,p_help_text=>'Applied to the height of the chart lines only.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664465800952398211)
,p_plugin_attribute_id=>wwv_flow_api.id(33664464951659398210)
,p_display_sequence=>20
,p_display_value=>'Include Labels'
,p_return_value=>'CHART'
,p_help_text=>'Applies to the total chart including the labels.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664466320098398212)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>130
,p_prompt=>'Y-Axis Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Custom'
,p_help_text=>'Select the data format mask for the Y-axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664466766632398212)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>10
,p_display_value=>'14,435'
,p_return_value=>',.0f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664467208896398212)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>20
,p_display_value=>'14435'
,p_return_value=>'.0f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664467776980398213)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>30
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664468244489398213)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>40
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664468763618398213)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>50
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664469267475398214)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>60
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664469737220398214)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>70
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664470219510398214)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>80
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664470788339398214)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>90
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664471283882398215)
,p_plugin_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_display_sequence=>100
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664471711459398215)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>140
,p_prompt=>'Y-Axis Custom Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'FRIENDLY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664466320098398212)
,p_depending_on_condition_type=>'NULL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li><b>,d</b> = 14,435</li>',
'<li><b>d</b> = 14435</li>',
'<li><b>,.2f</b> = 14,435.49</li>',
'<li><b>.2f</b> = 14435.49</li>',
'<li><b>.3s</b> = 14.4k</li>',
'<li><b>$,d</b> = $14,435</li>',
'<li><b>$d</b> = $14435</li>',
'<li><b>$,.2f</b> = $14,435.49</li>',
'<li><b>$.2f</b> = $14435.49</li>',
'<li><b>$.3s</b> = $14.4k</li>',
'<li><b>n" ft."</b> = 14435.49 ft. **</li>',
'<li><b>"[["$.3s"]]"</b> = [[$14.4k]] **</li>',
'<li>Refer to https://github.com/mbostock/d3/wiki/Formatting#d3_format for the full syntax specification</li>',
'</ul>',
'<br/>',
'** You may use leading and trailing double-quoted literals, but this feature is not part of the standard D3 specification'))
,p_help_text=>'Enter the D3 format string used to format the Y-axis values on axes, tooltips and legends. Use <pre>FRIENDLY</pre> to utilize sensible formatting defaults for your data.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664472198642398216)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>100
,p_prompt=>'X-Axis Tick Interval'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664449836671398199)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'DATE,TIMESTAMP,TIMESTAMP_TZ,TIMESTAMP_LTZ'
,p_lov_type=>'STATIC'
,p_null_text=>'Auto'
,p_help_text=>'Select the timeframe displayed on the X-axis for date type columns.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664472510434398216)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>10
,p_display_value=>'Second'
,p_return_value=>'SECOND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664473006489398216)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>20
,p_display_value=>'Minute'
,p_return_value=>'MINUTE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664473549662398217)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>30
,p_display_value=>'Hour'
,p_return_value=>'HOUR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664474090867398217)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>40
,p_display_value=>'Day'
,p_return_value=>'DAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664474529473398217)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>50
,p_display_value=>'Week'
,p_return_value=>'WEEK'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664475011181398218)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>60
,p_display_value=>'Sunday'
,p_return_value=>'SUNDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664475408585398218)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>70
,p_display_value=>'Monday'
,p_return_value=>'MONDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664475934050398218)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>80
,p_display_value=>'Tuesday'
,p_return_value=>'TUESDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664476436590398219)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>90
,p_display_value=>'Wednesday'
,p_return_value=>'WEDNESDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664476925268398219)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>100
,p_display_value=>'Thursday'
,p_return_value=>'THURSDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664477440881398219)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>110
,p_display_value=>'Friday'
,p_return_value=>'FRIDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664477911105398220)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>120
,p_display_value=>'Saturday'
,p_return_value=>'SATURDAY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664478465378398220)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>130
,p_display_value=>'Month'
,p_return_value=>'MONTH'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664478948524398220)
,p_plugin_attribute_id=>wwv_flow_api.id(33664472198642398216)
,p_display_sequence=>140
,p_display_value=>'Year'
,p_return_value=>'YEAR'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664479482898398221)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>190
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Theme Default'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664479818381398221)
,p_plugin_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664480369726398222)
,p_plugin_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664480811176398223)
,p_plugin_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664481334453398223)
,p_plugin_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664481860485398224)
,p_plugin_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_display_sequence=>50
,p_display_value=>'SQL Query'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664482332043398224)
,p_plugin_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664482871502398224)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>200
,p_prompt=>'Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>RGB color notation  (red,green,blue)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>RGBA color notation (red,green,blue,alpha)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>'<p>Enter a colon-separated list of color strings for the custom colors to be used in the chart.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664483280909398225)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>160
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664483679701398225)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:X:Y:CUSTOM,SERIES:X:CUSTOM,SERIES:Y:CUSTOM,X:Y:CUSTOM,SERIES:CUSTOM,X:CUSTOM,Y:CUSTOM,CUSTOM'
,p_help_text=>'Enter the column from the region SQL Query that holds the custom tooltip values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664483679701398225)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>150
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664484052384398226)
,p_plugin_attribute_id=>wwv_flow_api.id(33664483679701398225)
,p_display_sequence=>0
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664484559308398226)
,p_plugin_attribute_id=>wwv_flow_api.id(33664483679701398225)
,p_display_sequence=>10
,p_display_value=>'Show X value'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664485085028398226)
,p_plugin_attribute_id=>wwv_flow_api.id(33664483679701398225)
,p_display_sequence=>20
,p_display_value=>'Show Y value'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664485583176398227)
,p_plugin_attribute_id=>wwv_flow_api.id(33664483679701398225)
,p_display_sequence=>30
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664486047347398227)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>240
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664486486050398227)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>250
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'The maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664486860756398228)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664487265925398228)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>40
,p_prompt=>'Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'OVERLAP'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the line chart data is displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664487647581398228)
,p_plugin_attribute_id=>wwv_flow_api.id(33664487265925398228)
,p_display_sequence=>10
,p_display_value=>'Overlap'
,p_return_value=>'OVERLAP'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664488116886398229)
,p_plugin_attribute_id=>wwv_flow_api.id(33664487265925398228)
,p_display_sequence=>20
,p_display_value=>'Stacked'
,p_return_value=>'STACKED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664488652349398229)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>180
,p_prompt=>'Show Grid Lines'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check the axes to display grid lines for that axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664489073465398230)
,p_plugin_attribute_id=>wwv_flow_api.id(33664488652349398229)
,p_display_sequence=>10
,p_display_value=>'X-Axis'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664489506220398230)
,p_plugin_attribute_id=>wwv_flow_api.id(33664488652349398229)
,p_display_sequence=>20
,p_display_value=>'Y-Axis'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664490037607398230)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>210
,p_prompt=>'Color SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664479482898398221)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>select ''SALES'', rgb(0,255,0)',
'from dual',
'UNION',
'select ''RESEARCH'', rgba(0,25,47,0.5)',
'from dual;</pre>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Enter a SQL Query that maps a series name to an RGB color. The first column must contain the series names (and those values must match the ones returned from the region SQL) and the second column must have the RGB or RGBA color notation for the serie'
||'s. ',
'Both columns must be VARCHAR2.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664490474366398232)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>60
,p_prompt=>'Multiple Series Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that defines the multiple series for the chart. The values from this column will become the labels for the series.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664490872567398232)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>50
,p_prompt=>'Single Series Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(33664490474366398232)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Enter the name of the single data series which is shown on the legend.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664491262295398232)
,p_plugin_id=>wwv_flow_api.id(33664444511364398193)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>170
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select where the legend is displayed on the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664491681920398233)
,p_plugin_attribute_id=>wwv_flow_api.id(33664491262295398232)
,p_display_sequence=>10
,p_display_value=>'Above chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664492190059398233)
,p_plugin_attribute_id=>wwv_flow_api.id(33664491262295398232)
,p_display_sequence=>20
,p_display_value=>'Below chart'
,p_return_value=>'BOTTOM'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_piechart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664495729170398239)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.PIECHART'
,p_display_name=>'D3 Pie Chart'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.PIECHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.piechart/')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- NOTE: THIS IS THE VALUE FOR PLUGIN FILE PREFIX #IMAGE_PREFIX#plugins/com.oracle.apex.d3.piechart/',
'FUNCTION RENDER (',
'    P_REGION IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN IN APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY IN BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT IS',
'    -- Plugin attributes readable names',
'    C_WIDTH CONSTANT NUMBER := TO_NUMBER(APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS(P_REGION.ATTRIBUTE_05));',
'    C_INNER_RADIUS CONSTANT NUMBER := TO_NUMBER(APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS(P_REGION.ATTRIBUTE_06));',
'    C_SHOW_LABELS CONSTANT BOOLEAN := (INSTR('':'' || P_REGION.ATTRIBUTE_07 || '':'', '':LABELS:'')  > 0);',
'    C_SHOW_TOOLTIP CONSTANT BOOLEAN := (INSTR('':'' || P_REGION.ATTRIBUTE_07 || '':'', '':TOOLTIP:'') > 0);',
'    C_SHOW_PERCENTAGES CONSTANT BOOLEAN := (INSTR('':'' || P_REGION.ATTRIBUTE_07 || '':'', '':PERCENTAGES:'')  > 0);',
'    C_COLOR_SCHEME CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_08;',
'    C_VALUE_FORMATTING CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_10;',
'    C_CHART_TYPE CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_11;',
'    C_LEGEND_POSITION VARCHAR2(255) := P_REGION.ATTRIBUTE_12;',
'    ',
'    L_COLORS VARCHAR2(2000);',
'    L_OUTER_RADIUS_VALUE NUMBER;',
'    L_OUTER_RADIUS VARCHAR2(255);',
'    L_INNER_RADIUS VARCHAR2(255);',
'',
'    -- Function constants',
'    C_D3_BASE_DIRECTORY CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''libraries/d3/3.5.5/'';',
'    --C_JQUERY_RESIZE_BASE_DIRECTORY CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''libraries/jquery-elementresize/0.5/'';',
'    C_PLUGIN_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3.piechart/'';',
'    C_D3_ORACLE_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3/'';',
'    C_D3_ARY_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3.ary/'';',
'    C_D3_TOOLTIP_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3.tooltip/'';',
'BEGIN',
'    -- Placeholder div for chart',
'    SYS.HTP.P(',
'        ''<div><div id="'' || APEX_ESCAPE.HTML_ATTRIBUTE(P_REGION.STATIC_ID || ''_chart'') || ''" class="a-D3PieChart-container"></div></div>'' ',
'    );',
'    ',
'    -- JavaScript libraries',
'    /*APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''jquery.resize'',',
'        P_DIRECTORY => C_JQUERY_RESIZE_BASE_DIRECTORY ',
'    );*/',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''d3.min'',',
'        P_DIRECTORY => C_D3_BASE_DIRECTORY ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''d3.oracle'',',
'        P_DIRECTORY => C_D3_ORACLE_BASE ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.tooltip'',',
'        P_DIRECTORY => C_D3_TOOLTIP_BASE ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.ary'',',
'        P_DIRECTORY => C_D3_ARY_BASE ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.piechart'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.piechart.labels'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''com.oracle.apex.d3.piechart'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'    ',
'    -- Styles',
'    APEX_CSS.ADD_FILE (',
'        P_NAME => ''d3.oracle.tooltip'',',
'        P_DIRECTORY => C_D3_TOOLTIP_BASE',
'    );',
'    APEX_CSS.ADD_FILE (',
'        P_NAME => ''d3.oracle.ary'',',
'        P_DIRECTORY => C_D3_ARY_BASE',
'    );',
'    APEX_CSS.ADD_FILE (',
'        P_NAME => ''d3.oracle.piechart'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'',
'    -- Color scheme',
'    -- Defaults to NULL',
'    L_COLORS := CASE C_COLOR_SCHEME',
'        WHEN ''MODERN'' THEN',
'            ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC''',
'        WHEN ''MODERN2'' THEN',
'            ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C''',
'        WHEN ''SOLAR'' THEN',
'            ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900''',
'        WHEN ''METRO'' THEN',
'            ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5''',
'        WHEN ''CUSTOM'' THEN',
'            P_REGION.ATTRIBUTE_09',
'    END;',
'    ',
'    L_OUTER_RADIUS_VALUE := C_WIDTH / 2;',
'    IF  L_OUTER_RADIUS_VALUE > 0 AND L_OUTER_RADIUS_VALUE < 1 THEN',
'      L_OUTER_RADIUS := ''0'' || TO_CHAR(L_OUTER_RADIUS_VALUE);',
'    ELSE',
'      L_OUTER_RADIUS := TO_CHAR(L_OUTER_RADIUS_VALUE);',
'    END IF;',
'    ',
'    IF C_CHART_TYPE = ''DONUT'' THEN',
'        L_INNER_RADIUS := TO_CHAR(C_INNER_RADIUS);',
'    ELSE',
'        L_INNER_RADIUS := ''0'';',
'    END IF;',
'',
'    -- Initialize the pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE(',
'        P_CODE => ''com_oracle_apex_d3_pie('' ||',
'            APEX_JAVASCRIPT.ADD_VALUE(P_REGION.STATIC_ID) ||',
'            ''{'' ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''chartRegionId'',  P_REGION.STATIC_ID || ''_chart'') ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''colors'', L_COLORS) || ',
'                ''"outerRadius":'' || L_OUTER_RADIUS || '','' ||',
'                ''"innerRadius":'' || L_INNER_RADIUS || '','' ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''showLabels'', C_SHOW_LABELS) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''legendPosition'', C_LEGEND_POSITION) ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''showTooltip'', C_SHOW_TOOLTIP) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''showPercentages'', C_SHOW_PERCENTAGES) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''valueTemplate'', C_VALUE_FORMATTING) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''transitions'', TRUE) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''noDataFoundMessage'', P_REGION.NO_DATA_FOUND_MESSAGE) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''pageItems'', APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_REGION.AJAX_ITEMS_TO_SUBMIT)) ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''ajaxIdentifier'', APEX_PLUGIN.GET_AJAX_IDENTIFIER, FALSE, FALSE) ||',
'            ''});'' ',
'    );',
'    ',
'    RETURN NULL;',
'END RENDER;',
'',
'FUNCTION AJAX (',
'     P_REGION IN APEX_PLUGIN.T_REGION,',
'     P_PLUGIN IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT IS',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    C_LABEL_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_01;',
'    C_VALUE_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_02;',
'    C_COLOR_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_03;',
'    ',
'    C_LINK_TARGET CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_04;',
'',
'    L_LABEL_COLUMN_NO PLS_INTEGER;',
'    L_VALUE_COLUMN_NO PLS_INTEGER;',
'    L_COLOR_COLUMN_NO PLS_INTEGER;',
'    ',
'    L_COLUMN_VALUE_LIST APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;',
'    ',
'    L_LABEL VARCHAR2(4000);',
'    L_VALUE NUMBER;',
'    L_COLOR VARCHAR2(20);',
'    L_LINK VARCHAR2(4000);',
'BEGIN',
'    APEX_PLUGIN_UTIL.PRINT_JSON_HTTP_HEADER;',
'    ',
'    L_COLUMN_VALUE_LIST := APEX_PLUGIN_UTIL.GET_DATA2(',
'        P_SQL_STATEMENT => P_REGION.SOURCE,',
'        P_MIN_COLUMNS => 2,',
'        P_MAX_COLUMNS => NULL,',
'        P_COMPONENT_NAME => P_REGION.NAME',
'    );',
'    ',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    L_LABEL_COLUMN_NO := APEX_PLUGIN_UTIL.GET_COLUMN_NO(',
'        P_ATTRIBUTE_LABEL => ''Label Column'',',
'        P_COLUMN_ALIAS => C_LABEL_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED => TRUE,',
'        P_DATA_TYPE => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2 ',
'    );                              ',
'    L_VALUE_COLUMN_NO := APEX_PLUGIN_UTIL.GET_COLUMN_NO(',
'        P_ATTRIBUTE_LABEL=> ''Value Column'',',
'        P_COLUMN_ALIAS => C_VALUE_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED => TRUE,',
'        P_DATA_TYPE => APEX_PLUGIN_UTIL.C_DATA_TYPE_NUMBER',
'    );',
'    L_COLOR_COLUMN_NO := APEX_PLUGIN_UTIL.GET_COLUMN_NO(',
'        P_ATTRIBUTE_LABEL => ''Color Column'',',
'        P_COLUMN_ALIAS => C_COLOR_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED => FALSE,',
'        P_DATA_TYPE => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2',
'    );',
'',
'    SYS.HTP.PRN(''['');',
'    -- It''s time to emit the selected rows',
'    FOR L_ROW_NUM IN 1 .. L_COLUMN_VALUE_LIST(1).VALUE_LIST.COUNT LOOP',
'        BEGIN',
'            APEX_PLUGIN_UTIL.SET_COMPONENT_VALUES(',
'                P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'                P_ROW_NUM => L_ROW_NUM',
'            );',
'            ',
'            L_LABEL := APEX_PLUGIN_UTIL.ESCAPE(',
'                APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2(',
'                    P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_LABEL_COLUMN_NO).DATA_TYPE,',
'                    P_VALUE     => L_COLUMN_VALUE_LIST(L_LABEL_COLUMN_NO).VALUE_LIST(L_ROW_NUM)',
'                ),',
'                P_REGION.ESCAPE_OUTPUT',
'            );',
'            L_VALUE := L_COLUMN_VALUE_LIST(L_VALUE_COLUMN_NO).VALUE_LIST(L_ROW_NUM).NUMBER_VALUE;',
'            IF L_COLOR_COLUMN_NO IS NOT NULL THEN',
'                L_COLOR := APEX_PLUGIN_UTIL.ESCAPE(',
'                    APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2(',
'                        P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_COLOR_COLUMN_NO).DATA_TYPE,',
'                        P_VALUE     => L_COLUMN_VALUE_LIST(L_COLOR_COLUMN_NO).VALUE_LIST(L_ROW_NUM)',
'                    ),',
'                    TRUE',
'                );',
'            END IF;',
'',
'            IF C_LINK_TARGET IS NOT NULL THEN',
'                L_LINK := WWV_FLOW_UTILITIES.PREPARE_URL(',
'                    APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                        P_VALUE => C_LINK_TARGET,',
'                        P_ESCAPE => FALSE',
'                    )',
'                );',
'            END IF;',
'            ',
'            -- write the data to our output buffer',
'            SYS.HTP.P(',
'                CASE WHEN L_ROW_NUM > 1 THEN '','' END ||',
'                ''{'' ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''label'', L_LABEL) ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''color'', L_COLOR) ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''link'', L_LINK) ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''value'', L_VALUE, FALSE, FALSE ) ||',
'                ''}'' );',
'',
'            APEX_PLUGIN_UTIL.CLEAR_COMPONENT_VALUES;',
'        EXCEPTION WHEN OTHERS THEN',
'            APEX_PLUGIN_UTIL.CLEAR_COMPONENT_VALUES;',
'            RAISE;',
'        END;',
'    END LOOP;',
'    SYS.HTP.PRN('']'');',
'',
'    RETURN NULL;',
'END AJAX;'))
,p_render_function=>'RENDER'
,p_ajax_function=>'AJAX'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>'SELECT DEPT.DEPTNO, NVL(DEPT.DNAME, ''UNDEFINED'') LABEL, COUNT(1) VALUE FROM EMP LEFT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO GROUP BY DEPT.DEPTNO, DEPT.DNAME;'
,p_substitute_attributes=>false
,p_reference_id=>34041056001872007536
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Pie / Donut Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>28
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664496086577398239)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664496410893398240)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664496807872398240)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>110
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664497258065398241)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664497659877398241)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>30
,p_prompt=>'Width '
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide and 100 pixels in height.</p>',
'<p>Note: If no value is specified, the pie chart will consume all the space of the containing region. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664498022971398242)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Inner Radius '
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664510595878398253)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DONUT'
,p_help_text=>'Enter the radius of the hole inside the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664498431846398242)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Display Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Check which attributes are shown on the pie chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664498851953398242)
,p_plugin_attribute_id=>wwv_flow_api.id(33664498431846398242)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664499352202398243)
,p_plugin_attribute_id=>wwv_flow_api.id(33664498431846398242)
,p_display_sequence=>30
,p_display_value=>'Labels'
,p_return_value=>'LABELS'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664499832080398243)
,p_plugin_attribute_id=>wwv_flow_api.id(33664498431846398242)
,p_display_sequence=>40
,p_display_value=>'Percentages'
,p_return_value=>'PERCENTAGES'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664500383448398244)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>100
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664500707217398244)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>5
,p_display_value=>'Theme'
,p_return_value=>'THEME'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664501226837398244)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664501783356398245)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664502245717398245)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664502794398398245)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664503260091398246)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>50
,p_display_value=>'SQL Column'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664503702400398246)
,p_plugin_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664504257804398247)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>120
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664500383448398244)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664504646891398247)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>90
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the data format mask for the pie slices.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664505046378398247)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>10
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664505536457398249)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>20
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664506008876398249)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>30
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664506562347398250)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>40
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664507076444398250)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>50
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664507596439398250)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>60
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664508070453398251)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>70
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664508582397398251)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>80
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664509061663398252)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>90
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664509565073398252)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>100
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664510016906398252)
,p_plugin_attribute_id=>wwv_flow_api.id(33664504646891398247)
,p_display_sequence=>110
,p_display_value=>'FRIENDLY'
,p_return_value=>'friendly'
,p_help_text=>'Automatically use SI units for thousands and millions'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664510595878398253)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>50
,p_prompt=>'Chart Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'PIE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether to display a pie chart or donut chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664510955804398253)
,p_plugin_attribute_id=>wwv_flow_api.id(33664510595878398253)
,p_display_sequence=>10
,p_display_value=>'Pie'
,p_return_value=>'PIE'
,p_help_text=>'A normal Pie Chart'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664511400775398253)
,p_plugin_attribute_id=>wwv_flow_api.id(33664510595878398253)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
,p_help_text=>'A pie chart with a hole in the middle'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664511942755398254)
,p_plugin_id=>wwv_flow_api.id(33664495729170398239)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>80
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664498431846398242)
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select the position of the legend when it is being displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664512318698398254)
,p_plugin_attribute_id=>wwv_flow_api.id(33664511942755398254)
,p_display_sequence=>10
,p_display_value=>'Above Chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664512891528398254)
,p_plugin_attribute_id=>wwv_flow_api.id(33664511942755398254)
,p_display_sequence=>20
,p_display_value=>'Below Chart'
,p_return_value=>'BOTTOM'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_flot_pie
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664514563038398258)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.FLOT.PIE'
,p_display_name=>'Flot Pie Chart'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.FLOT.PIE'),'#IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/excanvas#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.resize#MIN#.js',
'#PLUGIN_FILES#jquery.flot.pie.js',
'#PLUGIN_FILES#com_oracle_apex_flot_pie.js'))
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_flot_pie.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    -- NOTE: THIS IS THE VALUE FOR PLUGIN FILE PREFIX #IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/',
'',
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- determine plugin attributes and assign readable names',
'    c_color_scheme         constant varchar2(255) := p_region.attribute_15;',
'    l_colors               varchar2(2000);',
'',
'    c_pie_type             constant apex_application_page_regions.attribute_05%type := nvl(p_region.attribute_05, ''STANDARD'');',
'',
'    c_inner_radius         constant number  := apex_plugin_util.get_attribute_as_number(apex_plugin_util.replace_substitutions(nvl(p_region.attribute_14,''-1'')), ''Inner Radius'');',
'',
'    c_show_tooltip         constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':TOOLTIP:'') > 0);',
'    c_show_legend          constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LEGEND:'') > 0);',
'    c_show_label           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LABEL:'')  > 0);',
'    c_show_value           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':VALUE:'')  > 0);',
'    c_pie_width            constant number  := to_number(apex_plugin_util.replace_substitutions(p_region.attribute_06));',
'',
'    c_min_height           constant number  := to_number(nvl(p_region.attribute_17, ''100''));',
'    c_max_height           constant number  := to_number(nvl(p_region.attribute_18, ''400''));',
'',
'    c_min_ar               constant number  := greatest(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_01, ''Min Aspect Ratio''), 0.25);',
'    c_max_ar               constant number  := least(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_02, ''Max Aspect Ratio''), 4);',
'',
'    c_combine_slices       constant boolean := (nvl(p_region.attribute_09, ''N'') = ''Y'');',
'    c_combine_threshold    constant number  := nvl(to_number(p_region.attribute_10), 10);',
'    c_combined_slice_label constant apex_application_page_regions.attribute_11%type := nvl(p_region.attribute_11, ''Other'');',
'    c_combined_slice_link  constant apex_application_page_regions.attribute_12%type := p_region.attribute_12;',
'    c_combined_slice_color constant apex_application_page_regions.attribute_13%type := p_region.attribute_13;',
'begin',
'    -- add placeholder div for chart',
'    sys.htp.p(',
'        ''<div class="flotPieContainer"><div id="'' || apex_escape.html_attribute(p_region.static_id || ''_chart'') || ''" style="width:'' ||',
'        case when c_pie_width is null then ''auto'' else c_pie_width || ''px'' end ||',
'        ''" class="flotPieContainerInner"></div></div>'' );',
'',
'    -- Set the colors to be used, if a non-SQL scheme was selected',
'    case c_color_scheme',
'      when ''MODERN'' then',
'        l_colors := ''#FF3B30,#FF9500,#FFCC00,#4CD964,#34AADC,#007AFF,#5856D6,#FF2D55,#8E8E93,#C7C7CC'';',
'      when ''MODERN2'' then',
'        l_colors := ''#1ABC9C,#2ECC71,#4AA3DF,#9B59B6,#3D566E,#F1C40F,#E67E22,#E74C3C'';',
'      when ''SOLAR'' then',
'        l_colors := ''#B58900,#CB4B16,#DC322F,#D33682,#6C71C4,#268BD2,#2AA198,#859900'';',
'      when ''METRO'' then',
'        l_colors := ''#E61400,#19A2DE,#319A31,#EF9608,#8CBE29,#A500FF,#00AAAD,#FF0094,#9C5100,#E671B5'';',
'      when ''CUSTOM'' then',
'        l_colors := p_region.attribute_16;',
'      when ''SQL'' then',
'        l_colors := null;',
'    end case;',
'',
'    -- Initialize the Flot pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_flot_pie('' ||',
'                  apex_javascript.add_value(p_region.static_id) ||',
'                  ''{'' ||',
'                      apex_javascript.add_attribute(''colors'',           l_colors) || ',
'                      apex_javascript.add_attribute(''type'',             c_pie_type) || ',
'                      apex_javascript.add_attribute(''innerRadius'',      c_inner_radius)||',
'                      apex_javascript.add_attribute(''minAR'',            c_min_ar)||',
'                      apex_javascript.add_attribute(''maxAR'',            c_max_ar)||',
'                      apex_javascript.add_attribute(''minHeight'',        c_min_height) || ',
'                      apex_javascript.add_attribute(''maxHeight'',        c_max_height) || ',
'                      apex_javascript.add_attribute(''showLabel'',        c_show_label) || ',
'                      apex_javascript.add_attribute(''showLegend'',       c_show_legend) ||',
'                      apex_javascript.add_attribute(''showTooltip'',      c_show_tooltip) || ',
'                      apex_javascript.add_attribute(''showValue'',        c_show_value) || ',
'                      apex_javascript.add_attribute(''combineSlices'',    c_combine_slices) || ',
'                      apex_javascript.add_attribute(''combineThreshold'', c_combine_threshold) || ',
'                      apex_javascript.add_attribute(''combineLabel'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_label,',
'                                                                                p_escape => false ),',
'                                                                            p_region.escape_output )) || ',
'                      apex_javascript.add_attribute(''combineUrl'',       wwv_flow_utilities.prepare_url(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_link,',
'                                                                                p_escape => false ))) ||',
'                      apex_javascript.add_attribute(''combineColor'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_color,',
'                                                                                p_escape => false ),',
'                                                                            true )) || ',
'                      apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                      apex_javascript.add_attribute(''pageItems'',        apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                      apex_javascript.add_attribute(''ajaxIdentifier'',   apex_plugin.get_ajax_identifier, false, false) ||',
'                  ''});'' );',
'    apex_javascript.add_onload_code (',
'        p_code => ''setTimeout(function(){$("span.pieLabel").removeAttr("id");},1000);'' );',
'',
'    return null;',
'',
'end render;',
'',
'',
'function ajax (',
'     p_region in apex_plugin.t_region,',
'     p_plugin in apex_plugin.t_plugin )',
'     return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_value_column constant varchar2(255) := p_region.attribute_02;',
'    c_color_column constant varchar2(255) := p_region.attribute_03;',
'    c_link_target  constant varchar2(255) := p_region.attribute_04;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_color_column_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             number;',
'    l_color             varchar2(20);',
'    l_url               varchar2(4000);',
'begin',
'    apex_plugin_util.print_json_http_header;',
'',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Label Column'',',
'                             p_column_alias      => c_label_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Value Column'',',
'                             p_column_alias      => c_value_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'',
'    l_color_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Color Column'',',
'                             p_column_alias      => c_color_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    sys.htp.prn(''['');',
'',
'    -- It''s time to emit the selected rows',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := apex_plugin_util.escape (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) ),',
'                           p_region.escape_output );',
'',
'            -- get the value',
'            l_value := l_column_value_list(l_value_column_no).value_list(l_row_num).number_value;',
'',
'            -- get the color if specified',
'            if l_color_column_no is not null then',
'                l_color := apex_plugin_util.escape (',
'                               apex_plugin_util.get_value_as_varchar2 (',
'                                   p_data_type => l_column_value_list(l_color_column_no).data_type,',
'                                   p_value     => l_column_value_list(l_color_column_no).value_list(l_row_num) ),',
'                               true );',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := wwv_flow_utilities.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'            end if;',
'',
'            -- write the data to our output buffer',
'            sys.htp.p (',
'                case when l_row_num > 1 then '','' end ||',
'                ''{'' ||',
'                apex_javascript.add_attribute(''label'', l_label) ||',
'                apex_javascript.add_attribute(''color'', l_color) ||',
'                apex_javascript.add_attribute(''url'',   l_url) ||',
'                apex_javascript.add_attribute(''data'',  l_value, false, false ) ||',
'                ''}'' );',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    sys.htp.prn('']'');',
'',
'    return null;',
'end ajax;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'  from emp',
' order by sal'))
,p_substitute_attributes=>false
,p_reference_id=>32500324810440363520
,p_subscribe_plugin_settings=>true
,p_help_text=>'Flot Pie Chart is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks and interactive features.'
,p_version_identifier=>'5.02'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>25
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664514836859398259)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664515221186398260)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>520
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.5'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664515611381398260)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664516098722398261)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664516445241398261)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>170
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664516878452398261)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664517272763398262)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>40
,p_prompt=>'Pie Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STANDARD'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of pie chart that should be displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664517646663398262)
,p_plugin_attribute_id=>wwv_flow_api.id(33664517272763398262)
,p_display_sequence=>10
,p_display_value=>'Standard'
,p_return_value=>'STANDARD'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664518148040398263)
,p_plugin_attribute_id=>wwv_flow_api.id(33664517272763398262)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664518678180398263)
,p_plugin_attribute_id=>wwv_flow_api.id(33664517272763398262)
,p_display_sequence=>30
,p_display_value=>'Tilted'
,p_return_value=>'TILTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664519171019398263)
,p_plugin_attribute_id=>wwv_flow_api.id(33664517272763398262)
,p_display_sequence=>40
,p_display_value=>'Rectangular'
,p_return_value=>'RECT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664519646444398264)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide and 100 pixels in height.</p>',
'<p>Note: If no value is specified, the pie chart will consume all the space of the containing region. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664520014791398264)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>60
,p_prompt=>'Display Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'LABEL:VALUE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Check which attributes are shown on the pie chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664520409036398264)
,p_plugin_attribute_id=>wwv_flow_api.id(33664520014791398264)
,p_display_sequence=>5
,p_display_value=>'Legend'
,p_return_value=>'LEGEND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664520919757398264)
,p_plugin_attribute_id=>wwv_flow_api.id(33664520014791398264)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664521481379398265)
,p_plugin_attribute_id=>wwv_flow_api.id(33664520014791398264)
,p_display_sequence=>30
,p_display_value=>'Label'
,p_return_value=>'LABEL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664521928646398265)
,p_plugin_attribute_id=>wwv_flow_api.id(33664520014791398264)
,p_display_sequence=>40
,p_display_value=>'Value'
,p_return_value=>'VALUE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664522437705398266)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Combine Slices'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Select whether slices that are below a given percentage threshold can be combined into a single "other" slice.  For example, if the threshold is set to 10%, then any slice that is below 10% will be grouped into the "other" slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664522873483398266)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Combined Slice Threshold'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'10'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664522437705398266)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'Enter the threshold percentage which determines which slices to group together in an "other" slice.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664523259618398266)
,p_plugin_attribute_id=>wwv_flow_api.id(33664522873483398266)
,p_display_sequence=>10
,p_display_value=>'1%'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664523725315398267)
,p_plugin_attribute_id=>wwv_flow_api.id(33664522873483398266)
,p_display_sequence=>20
,p_display_value=>'2%'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664524226520398267)
,p_plugin_attribute_id=>wwv_flow_api.id(33664522873483398266)
,p_display_sequence=>30
,p_display_value=>'5%'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664524791381398267)
,p_plugin_attribute_id=>wwv_flow_api.id(33664522873483398266)
,p_display_sequence=>40
,p_display_value=>'10%'
,p_return_value=>'10'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664525222338398267)
,p_plugin_attribute_id=>wwv_flow_api.id(33664522873483398266)
,p_display_sequence=>50
,p_display_value=>'15%'
,p_return_value=>'15'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664525766854398269)
,p_plugin_attribute_id=>wwv_flow_api.id(33664522873483398266)
,p_display_sequence=>60
,p_display_value=>'20%'
,p_return_value=>'20'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664526261312398270)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Combined Slice Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Other'
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(33664522437705398266)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Enter the label for the combined slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664526612113398270)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Combined Slice Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664522437705398266)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter a target page to be called when the user clicks the combined slice. </p>',
'<p>Note: Leave the link blank if you do not want to make this clickable. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664527024622398270)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Combined Slice Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the color which should be used for the combined slice. The color can be entered as hex value or as the name of the color.</p>',
'<p>Note: If no color is specified then it will be defaulted to gray.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664527466126398271)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>50
,p_prompt=>'Inner Radius'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664517272763398262)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DONUT'
,p_help_text=>'Enter the radius of the hole inside the donut. Numbers between 0 and 1 are treated as percentages and numbers greater than 1 are treated as pixels'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664527879028398271)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664528283001398271)
,p_plugin_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664528769052398272)
,p_plugin_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664529218093398272)
,p_plugin_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664529762702398272)
,p_plugin_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664530285680398273)
,p_plugin_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_display_sequence=>50
,p_display_value=>'SQL Column'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664530789391398273)
,p_plugin_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664531272938398273)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664527879028398271)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664531630152398274)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664532049569398274)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'Enter the maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664532449263398274)
,p_plugin_id=>wwv_flow_api.id(33664514563038398258)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>80
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the data format mask for the pie slices.'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_html5_bar_chart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664535646609398280)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_display_name=>'HTML 5 Bar Chart'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.HTML5_BAR_CHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.html5_bar_chart/1.0/')
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_html5_bar_chart.js'
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_html5_bar_chart.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'FUNCTION RENDER (',
'    P_REGION IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN IN APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY IN BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT IS',
'BEGIN',
'    HTP.PRN(''<div id="''||APEX_ESCAPE.HTML_ATTRIBUTE(P_REGION.STATIC_ID)||''_chart" class="hbc">'');',
'    HTP.PRN(''</div>'');',
'    ',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE (',
'        P_CODE => ''com_oracle_apex_html5_bar_chart(''||',
'            APEX_JAVASCRIPT.ADD_VALUE(P_REGION.STATIC_ID)||',
'            ''{''||',
'                -- Why is this attribute needed if is not used?',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(',
'                    ''pageItems'', ',
'                    APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_REGION.AJAX_ITEMS_TO_SUBMIT)',
'                )||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(',
'                    ''ajaxIdentifier'', ',
'                    APEX_PLUGIN.GET_AJAX_IDENTIFIER, ',
'                    FALSE, ',
'                    FALSE',
'                )||',
'            ''}''||',
'        '');''',
'    );',
'    ',
'    RETURN NULL;',
'END RENDER;',
'',
'FUNCTION AJAX (',
'    P_REGION IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT IS',
'    -- Map region attributes to function constants',
'    -- MODERN, CLASSIC',
'    C_CHART_TYPE CONSTANT VARCHAR2(7) := P_REGION.ATTRIBUTE_15;',
'    -- MODERN, MODERN_2, SOLAR, METRO, CUSTOM, COLUMN',
'    C_COLOR_SCHEME CONSTANT VARCHAR2(8) := P_REGION.ATTRIBUTE_17;',
'    C_CUSTOM_CHART_COLORS CONSTANT VARCHAR2(4000) := P_REGION.ATTRIBUTE_10;',
'    C_COLOR_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_19;',
'    -- NONE, IMAGE, ICON, INITIALS',
'    C_ICON_TYPE CONSTANT VARCHAR2(8) := case when C_CHART_TYPE = ''ICON'' then P_REGION.ATTRIBUTE_01 end;',
'    C_LABEL_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_02;',
'    C_LABEL_LINK CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_03;',
'    C_VALUE_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_04;',
'    C_VALUE_LINK CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_05;',
'    -- ABOVE, AROUND',
'    C_TEXT_POSITION VARCHAR2(6) := P_REGION.ATTRIBUTE_18;',
'    C_CHART_CSS_CLASSES CONSTANT VARCHAR2(32767) := P_REGION.ATTRIBUTE_06;',
'    C_IMAGE_URL CONSTANT VARCHAR2(4000) := P_REGION.ATTRIBUTE_07;',
'    C_CSS_ICON_CLASS_NAME CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_08;',
'    C_INITIALS_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_09;',
'    -- ABSOLUTE, RELATIVE',
'    C_BAR_WIDTH_CALCULATION CONSTANT VARCHAR2(8) := P_REGION.ATTRIBUTE_16;',
'    C_DISPLAY CONSTANT VARCHAR2(19) := P_REGION.ATTRIBUTE_11;',
'    C_PREFIX_FOR_VALUE CONSTANT VARCHAR2(4000) := P_REGION.ATTRIBUTE_12;',
'    C_POSTFIX_FOR_VALUE CONSTANT VARCHAR2(4000) := P_REGION.ATTRIBUTE_13;',
'    C_MAXIMUM_ROWS CONSTANT NUMBER := P_REGION.ATTRIBUTE_14;',
'    C_MESSAGE_WHEN_NO_DATA_FOUND CONSTANT VARCHAR2(4000) := P_REGION.ATTRIBUTE_20;',
'    ',
'    L_COLOR_COLUMN_NUMBER PLS_INTEGER;',
'    L_LABEL_COLUMN_NUMBER PLS_INTEGER;',
'    L_VALUE_COLUMN_NUMBER PLS_INTEGER;',
'    L_INITIALS_COLUMN_NUMBER PLS_INTEGER;',
'    ',
'    L_COLUMN_VALUE_LIST APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;',
'    ',
'    L_COLOR VARCHAR2(4000) := NULL;',
'    L_LABEL VARCHAR2(4000) := NULL;',
'    L_LABEL_LINK VARCHAR2(4000) := NULL;',
'    L_VALUE VARCHAR2(4000) := NULL;',
'    L_VALUE_LINK VARCHAR2(4000) := NULL;',
'    L_IMAGE_URL VARCHAR2(4000) := NULL;',
'    L_CSS_ICON_CLASS_NAME VARCHAR2(4000) := NULL;',
'    L_INITIALS VARCHAR2(4000) := NULL;',
'    L_MESSAGE_WHEN_NO_DATA_FOUND VARCHAR2(4000) := NULL;',
'',
'    L_CUSTOM_CHART_COLORS_TABLE APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    L_CUSTOM_CHART_COLORS VARCHAR2(32767) := NULL;',
'BEGIN',
'    L_COLUMN_VALUE_LIST := APEX_PLUGIN_UTIL.GET_DATA2(',
'        P_SQL_STATEMENT  => P_REGION.SOURCE,',
'        P_MIN_COLUMNS    => 1,',
'        P_MAX_COLUMNS    => NULL,',
'        P_COMPONENT_NAME => P_REGION.NAME,',
'        P_MAX_ROWS => C_MAXIMUM_ROWS',
'    );',
'',
'    L_COLOR_COLUMN_NUMBER := APEX_PLUGIN_UTIL.GET_COLUMN_NO (',
'        P_ATTRIBUTE_LABEL   => ''Color Column'',',
'        P_COLUMN_ALIAS      => C_COLOR_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED       => C_COLOR_SCHEME = ''COLUMN'',',
'        P_DATA_TYPE         => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2',
'    );',
'    L_LABEL_COLUMN_NUMBER := APEX_PLUGIN_UTIL.GET_COLUMN_NO (',
'        P_ATTRIBUTE_LABEL   => ''Label Column'',',
'        P_COLUMN_ALIAS      => C_LABEL_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED       => TRUE,',
'        P_DATA_TYPE         => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2',
'    );',
'    L_VALUE_COLUMN_NUMBER := APEX_PLUGIN_UTIL.GET_COLUMN_NO (',
'        P_ATTRIBUTE_LABEL   => ''Value Column'',',
'        P_COLUMN_ALIAS      => C_VALUE_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED       => TRUE,',
'        P_DATA_TYPE         => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2',
'    );',
'    if C_ICON_TYPE = ''INITIALS'' then',
'        L_INITIALS_COLUMN_NUMBER := APEX_PLUGIN_UTIL.GET_COLUMN_NO (',
'            P_ATTRIBUTE_LABEL   => ''Initials Column'',',
'            P_COLUMN_ALIAS      => C_INITIALS_COLUMN,',
'            P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'            P_IS_REQUIRED       => true,',
'            P_DATA_TYPE         => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2',
'        );',
'    end if;',
'    -- Begin output as JSON',
'    OWA_UTIL.MIME_HEADER(''application/json'', FALSE);',
'    HTP.P(''Cache-Control: no-cache'');',
'    HTP.P(''Pragma: no-cache'');',
'    OWA_UTIL.HTTP_HEADER_CLOSE;',
'    ',
'    IF C_COLOR_SCHEME = ''CUSTOM'' THEN',
'        L_CUSTOM_CHART_COLORS_TABLE := APEX_UTIL.STRING_TO_TABLE(CASE WHEN C_CUSTOM_CHART_COLORS IS NOT NULL THEN TRIM(BOTH '''''''' FROM APEX_ESCAPE.JS_LITERAL(C_CUSTOM_CHART_COLORS)) END, '':'');',
'        L_CUSTOM_CHART_COLORS := ''"color_scheme":['';',
'        FOR I IN L_CUSTOM_CHART_COLORS_TABLE.FIRST .. L_CUSTOM_CHART_COLORS_TABLE.LAST LOOP',
'            IF I > 1 THEN',
'                L_CUSTOM_CHART_COLORS := L_CUSTOM_CHART_COLORS||'','';',
'            END IF;',
'            L_CUSTOM_CHART_COLORS := L_CUSTOM_CHART_COLORS||''"''||L_CUSTOM_CHART_COLORS_TABLE(I)||''"'';',
'        END LOOP;',
'        L_CUSTOM_CHART_COLORS := L_CUSTOM_CHART_COLORS||''],'';',
'    END IF;',
'',
'    L_MESSAGE_WHEN_NO_DATA_FOUND := APEX_ESCAPE.HTML_WHITELIST(',
'        APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                P_VALUE  => C_MESSAGE_WHEN_NO_DATA_FOUND,',
'                P_ESCAPE => FALSE',
'            )',
'        );',
'',
'    HTP.PRN(',
'        ''{''||',
'            APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                ''chart_type'',',
'                C_CHART_TYPE,',
'                FALSE,',
'                TRUE',
'            )',
'    );',
'    HTP.PRN(',
'        APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'            ''message_when_no_data_found'',',
'            L_MESSAGE_WHEN_NO_DATA_FOUND,',
'            TRUE,',
'            TRUE',
'        )',
'    );',
'    HTP.PRN(',
'        APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'            ''chart_css_class_names'',',
'            C_CHART_CSS_CLASSES,',
'            TRUE,',
'            TRUE',
'        )',
'    );',
'    HTP.PRN(',
'        APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'            ''icon_type'',',
'            C_ICON_TYPE,',
'            TRUE,',
'            TRUE',
'        )',
'    );',
'    IF C_COLOR_SCHEME = ''CUSTOM'' THEN',
'        HTP.PRN(',
'            L_CUSTOM_CHART_COLORS',
'        );',
'    ELSE',
'        HTP.PRN(',
'            APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                ''color_scheme'',',
'                C_COLOR_SCHEME,',
'                TRUE,',
'                TRUE',
'            )',
'        );',
'    END IF;',
'    HTP.PRN(',
'            APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                ''text_position'',',
'                C_TEXT_POSITION,',
'                FALSE,',
'                TRUE',
'            )||',
'            APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                ''bar_width_calculation'',',
'                C_BAR_WIDTH_CALCULATION,',
'                FALSE,',
'                TRUE',
'            )||',
'            APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                ''display'',',
'                C_DISPLAY,',
'                FALSE,',
'                TRUE',
'            )||',
'            CASE ',
'            	WHEN C_DISPLAY IN (''VALUE'') THEN',
'					APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'						''prefix_for_value'',',
'						C_PREFIX_FOR_VALUE,',
'						TRUE,',
'						TRUE',
'					)||',
'					APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'						''postfix_for_value'',',
'						C_POSTFIX_FOR_VALUE,',
'						TRUE,',
'						TRUE',
'					)',
'			END||',
'            ''"items":[''',
'    );',
'    ',
'    --FOR L_ROW_NUMBER IN L_COLUMN_VALUE_LIST(1).VALUE_LIST.FIRST .. L_COLUMN_VALUE_LIST(1).VALUE_LIST.LAST LOOP',
'    FOR L_ROW_NUMBER IN 1 .. L_COLUMN_VALUE_LIST(1).VALUE_LIST.COUNT LOOP',
'        BEGIN',
'            APEX_PLUGIN_UTIL.SET_COMPONENT_VALUES (',
'                P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'                P_ROW_NUM => L_ROW_NUMBER ',
'            );',
'            ',
'            IF L_ROW_NUMBER > 1 THEN',
'            	HTP.PRN('', '');',
'            END IF;',
'            ',
'            HTP.PRN(''{'');',
'            ',
'            L_LABEL := APEX_PLUGIN_UTIL.ESCAPE (',
'                APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2 (',
'                    P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_LABEL_COLUMN_NUMBER).DATA_TYPE,',
'                    P_VALUE => L_COLUMN_VALUE_LIST(L_LABEL_COLUMN_NUMBER).VALUE_LIST(L_ROW_NUMBER)',
'                ),',
'                P_REGION.ESCAPE_OUTPUT',
'            );',
'            HTP.PRN(',
'            	APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                    ''label'',',
'                    L_LABEL,',
'                    FALSE',
'            	)',
'            );',
'            L_LABEL_LINK := ',
'                CASE ',
'                    WHEN C_LABEL_LINK IS NOT NULL THEN ',
'                        APEX_UTIL.PREPARE_URL (',
'                            APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                                P_VALUE  => C_LABEL_LINK,',
'                                P_ESCAPE => FALSE',
'                            )',
'                        )',
'                END;',
'            HTP.PRN(',
'            	APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                    ''label_link'',',
'                    L_LABEL_LINK',
'                )',
'            );',
'            L_VALUE := APEX_PLUGIN_UTIL.ESCAPE (',
'               APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2 (',
'                   P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_VALUE_COLUMN_NUMBER).DATA_TYPE,',
'                   P_VALUE => L_COLUMN_VALUE_LIST(L_VALUE_COLUMN_NUMBER).VALUE_LIST(L_ROW_NUMBER)',
'               ),',
'               P_REGION.ESCAPE_OUTPUT',
'            );',
'            HTP.PRN(',
'            	APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                    ''value'',',
'                    L_VALUE,',
'                    FALSE,',
'                    C_VALUE_LINK IS NOT NULL OR L_COLOR_COLUMN_NUMBER IS NOT NULL OR C_CHART_TYPE = ''ICON''',
'                )',
'            );',
'            L_VALUE_LINK := ',
'                CASE ',
'                    WHEN C_VALUE_LINK IS NOT NULL THEN ',
'                        APEX_UTIL.PREPARE_URL (',
'                            APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                                P_VALUE  => C_VALUE_LINK,',
'                                P_ESCAPE => FALSE',
'                            )',
'                        )',
'                END;',
'             HTP.PRN(',
'            	APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                    ''value_link'',',
'                    L_VALUE_LINK,',
'                    TRUE,',
'                    L_COLOR_COLUMN_NUMBER IS NOT NULL OR C_CHART_TYPE = ''ICON''',
'                )',
'            );',
'            IF L_COLOR_COLUMN_NUMBER IS NOT NULL THEN',
'                L_COLOR := APEX_PLUGIN_UTIL.ESCAPE (',
'                   APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2 (',
'                       P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_COLOR_COLUMN_NUMBER).DATA_TYPE,',
'                       P_VALUE => L_COLUMN_VALUE_LIST(L_COLOR_COLUMN_NUMBER).VALUE_LIST(L_ROW_NUMBER)',
'                   ),',
'                   P_REGION.ESCAPE_OUTPUT',
'                );',
'                HTP.PRN(',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                        ''color'',',
'                        L_COLOR,',
'                        FALSE,',
'                        C_CHART_TYPE = ''ICON''',
'                    )',
'                );',
'            END IF;',
'            IF C_ICON_TYPE = ''IMAGE'' THEN',
'				L_IMAGE_URL := ',
'                    CASE ',
'                        WHEN C_IMAGE_URL IS NOT NULL THEN ',
'                            APEX_UTIL.PREPARE_URL (',
'                                APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                                    P_VALUE  => C_IMAGE_URL,',
'                                    P_ESCAPE => FALSE',
'                                )',
'                            )',
'                    END;',
'				HTP.PRN(',
'					APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'						''image_url'',',
'						L_IMAGE_URL,',
'						FALSE,',
'						FALSE',
'					)',
'				);',
'			ELSIF C_ICON_TYPE = ''ICON'' THEN',
'				L_CSS_ICON_CLASS_NAME := APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                    P_VALUE  => C_CSS_ICON_CLASS_NAME,',
'                    P_ESCAPE => TRUE',
'                );',
'				HTP.PRN(',
'                	APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'						''icon_css_class_name'',',
'						L_CSS_ICON_CLASS_NAME,',
'						FALSE,',
'						FALSE',
'					)',
'				);',
'			ELSIF C_ICON_TYPE = ''INITIALS'' THEN',
'				L_INITIALS := APEX_PLUGIN_UTIL.ESCAPE (',
'					APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2 (',
'						P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_INITIALS_COLUMN_NUMBER).DATA_TYPE,',
'						P_VALUE => L_COLUMN_VALUE_LIST(L_INITIALS_COLUMN_NUMBER).VALUE_LIST(L_ROW_NUMBER)',
'					),',
'					P_REGION.ESCAPE_OUTPUT',
'				);',
'				HTP.PRN(',
'                	APEX_JAVASCRIPT.ADD_ATTRIBUTE (',
'                    	''initials'',',
'	                    L_INITIALS,',
'	                    FALSE,',
'	                    FALSE',
'    	            )',
'    	        );',
'            END IF;',
'            ',
'			HTP.PRN(''}'');',
'            ',
'            APEX_PLUGIN_UTIL.CLEAR_COMPONENT_VALUES;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_PLUGIN_UTIL.CLEAR_COMPONENT_VALUES;',
'                RAISE;',
'        END;',
'    END LOOP;',
'    HTP.PRN(',
'            '']''||',
'        ''}''',
'    );',
'    ',
'    RETURN NULL;',
'END AJAX;'))
,p_render_function=>'RENDER'
,p_ajax_function=>'AJAX'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_substitute_attributes=>false
,p_reference_id=>32481179010886376110
,p_subscribe_plugin_settings=>true
,p_help_text=>'<p>This plugin draws horizontal bar charts containing labels, values and even icons</p>'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>16
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664535920702398283)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>100
,p_prompt=>'Icon Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'INITIALS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664544028569398289)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the icon type to be displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664536324689398283)
,p_plugin_attribute_id=>wwv_flow_api.id(33664535920702398283)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'IMAGE'
,p_help_text=>'Displays an image HTML element on the left side of the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664536898585398283)
,p_plugin_attribute_id=>wwv_flow_api.id(33664535920702398283)
,p_display_sequence=>20
,p_display_value=>'CSS Icon'
,p_return_value=>'ICON'
,p_help_text=>'Displays an icon with the given CSS class.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664537335063398284)
,p_plugin_attribute_id=>wwv_flow_api.id(33664535920702398283)
,p_display_sequence=>30
,p_display_value=>'Initials'
,p_return_value=>'INITIALS'
,p_help_text=>'Displays a colored circle containing the first two initials for each entry.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664537823677398284)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664538237314398284)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Label Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a label.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664538648076398284)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the values for the chart.</p>',
'<p>Note: This value is not displayed on the chart items when the chart has been configured to display the bar width percentage instead.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664539051387398285)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>40
,p_prompt=>'Value Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a value.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664539450041398285)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>190
,p_prompt=>'CSS Class Names'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'<p>Enter CSS class names to be added to the root element of the chart separated with spaces.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664539807198398286)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>120
,p_prompt=>'Image URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664535920702398283)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'IMAGE'
,p_help_text=>'<p>Enter the Image URL to be displayed as the chart icon. This attribute supports Substitution strings, such as query columns, <strong>&amp;IMAGE_URL.</strong>. Notice that substitutions with no value will be replaced with an empty string.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664540235893398286)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>110
,p_prompt=>'Icon CSS Class Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664535920702398283)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_help_text=>'<p>Enter the Icon CSS Class Name.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664540611596398286)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>130
,p_prompt=>'Initials Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664535920702398283)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'INITIALS'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the initials to be displayed as an icon.</p>',
'<p>Note: If the columns has more than two letters than the icon will includes three ellipses (...). Therefore, it is not recommended to use the label column.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664541073995398287)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>170
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664541428871398287)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>50
,p_prompt=>'Value Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'VALUE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select whether to display  the item value or the percentage as the right most text in the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664541883526398287)
,p_plugin_attribute_id=>wwv_flow_api.id(33664541428871398287)
,p_display_sequence=>10
,p_display_value=>'Value'
,p_return_value=>'VALUE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664542359310398288)
,p_plugin_attribute_id=>wwv_flow_api.id(33664541428871398287)
,p_display_sequence=>20
,p_display_value=>'Percentage'
,p_return_value=>'BAR_WIDTH'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664542832397398288)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>60
,p_prompt=>'Value Prefix'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(33664541428871398287)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'VALUE'
,p_help_text=>'<p>Enter the text that prefixes the value.<p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664543201130398288)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>70
,p_prompt=>'Value Suffix'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(33664541428871398287)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'VALUE'
,p_help_text=>'Enter the text that is appended to the value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664543653630398289)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>180
,p_prompt=>'Maximum Rows'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'5'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum number of items to be displayed inside the region.</p>',
'<p>Note: Bar width calculations are based on the number of items displayed.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664544028569398289)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>90
,p_prompt=>'Display Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TEXT'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select how to display the chart information.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664544499643398289)
,p_plugin_attribute_id=>wwv_flow_api.id(33664544028569398289)
,p_display_sequence=>10
,p_display_value=>'Icon Chart'
,p_return_value=>'ICON'
,p_help_text=>'Displays bars with the label and value above and add an icon on the left.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664544969029398290)
,p_plugin_attribute_id=>wwv_flow_api.id(33664544028569398289)
,p_display_sequence=>20
,p_display_value=>'Text Chart'
,p_return_value=>'TEXT'
,p_help_text=>'Displays bars with the label and value either above or inline with the bar.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664545427418398290)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>80
,p_prompt=>'Bar Width Calculation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'ABSOLUTE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select how to calculate the width of the bars in the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664545806287398290)
,p_plugin_attribute_id=>wwv_flow_api.id(33664545427418398290)
,p_display_sequence=>10
,p_display_value=>'Absolute'
,p_return_value=>'ABSOLUTE'
,p_help_text=>'100% bar width is represented by the maximum value displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664546357574398290)
,p_plugin_attribute_id=>wwv_flow_api.id(33664545427418398290)
,p_display_sequence=>20
,p_display_value=>'Relative'
,p_return_value=>'RELATIVE'
,p_help_text=>'100% bar width is represented by the sum of the values of all the displayed chart items.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664546817011398291)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>150
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664547212384398291)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>5
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664547795674398291)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664548200945398292)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN_2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664548727460398292)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664549299031398292)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664549738676398293)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>50
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664550239574398293)
,p_plugin_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_display_sequence=>60
,p_display_value=>'SQL Query Column'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664550725172398294)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>140
,p_prompt=>'Text Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'AROUND'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664544028569398289)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'TEXT'
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select where to display the text within the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664551120113398294)
,p_plugin_attribute_id=>wwv_flow_api.id(33664550725172398294)
,p_display_sequence=>10
,p_display_value=>'Above'
,p_return_value=>'ABOVE'
,p_help_text=>'The label and value are displayed above the bar, to the left and right sides of the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664551685554398295)
,p_plugin_attribute_id=>wwv_flow_api.id(33664550725172398294)
,p_display_sequence=>20
,p_display_value=>'Inline'
,p_return_value=>'AROUND'
,p_help_text=>'The label, bar, and value are all displayed in a single line.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664552196005398295)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>160
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33664546817011398291)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664552575741398295)
,p_plugin_id=>wwv_flow_api.id(33664535646609398280)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_prompt=>'Message When No Data Found'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'No data found.'
,p_is_translatable=>true
,p_help_text=>'<p>Enter the message to be displayed when no data is found.</p>'
);
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_sampleappfooter
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664555693786398300)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_display_name=>'Sample Apps Footer'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.SAMPLEAPPFOOTER'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (   p_region in apex_plugin.t_region,',
'                    p_plugin in apex_plugin.t_plugin,',
'                    p_is_printer_friendly in boolean )',
'        return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<div class="t-SocialFooter">'');',
'    sys.htp.p(''    <div class="row">'');',
'    sys.htp.p(''        <div class="col col-2 alpha">'');',
'    sys.htp.p(''            <a href="https://forums.oracle.com/forums/forum.jspa?forumID=137" target="_blank">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-comments"></span>'');',
'    sys.htp.p(''                        Oracle OTN Forums'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="http://www.linkedin.com/skills/skill/Oracle_Application_Express" target="_blank">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-linkedin-square"></span>'');',
'    sys.htp.p(''                        Connect on LinkedIn'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="http://twitter.com/oracleapexnews" target="_blank">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-twitter"></span>'');',
'    sys.htp.p(''                        Follow us on Twitter'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="https://cloud.oracle.com/" target="_blank">'');',
'    sys.htp.p(''                        <span class="t-Icon fa fa-cloud"></span>'');',
'    sys.htp.p(''                        Oracle Database Cloud Service'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2">'');',
'    sys.htp.p(''            <a href="http://apex.oracle.com/" target="_blank">'');',
'    sys.htp.p(''                        <span class="t-Icon a-Icon sample-apex"></span>'');',
'    sys.htp.p(''                        apex.oracle.com'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''        <div class="col col-2 omega">'');',
'    sys.htp.p(''            <a href="http://www.oracle.com/technetwork/developer-tools/apex/overview/index.html" target="_blank">'');',
'    sys.htp.p(''                        <span class="t-Icon a-Icon sample-otn"></span>'');',
'    sys.htp.p(''                        APEX on OTN'');',
'    sys.htp.p(''            </a>'');',
'    sys.htp.p(''        </div>'');',
'    sys.htp.p(''    </div>'');',
'    sys.htp.p(''</div>'');',
'',
'    return null;',
'end render;'))
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>33487803062009379198
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This region plug-in is used to display a custom footer at the bottom of pages with large icons for navigating to other sites such as twitter and linkedin.</p>',
'<p>Note: This plug-in should be customized to meet your specific requirements, rather than used as is.</p>'))
,p_version_identifier=>'5.0.1'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_slidetooltip
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664555919676398302)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM_ORACLE_APEX_SLIDETOOLTIP'
,p_display_name=>'Slide Tooltip'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM_ORACLE_APEX_SLIDETOOLTIP'),'#IMAGE_PREFIX#plugins/com.oracle.apex.slidetooltip/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#slideTooltipList.js',
'#PLUGIN_FILES#com_oracle_apex_slide_tooltip.js',
''))
,p_css_file_urls=>'#PLUGIN_FILES#a-DetailedContentList.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_slide_tooltip (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    c_slide_tooltip constant varchar2(255) := p_region.attribute_04;',
'begin',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_region (',
'            p_plugin => p_plugin,',
'            p_region => p_region );',
'    end if;',
'',
'    sys.htp.p( ''<div'' || apex_plugin_util.get_html_attr( ''id'', p_region.static_id || ''_slideTooltip'' ) || ''></div>'' );',
'',
'    apex_javascript.add_onload_code (',
'        p_code =>',
'            ''com_oracle_apex_slide_tooltip('' ||',
'            apex_javascript.add_value( p_region.static_id ) ||',
'            ''{'' ||',
'            apex_javascript.add_attribute( ''pageitems'',       apex_plugin_util.page_item_names_to_jquery( p_region.ajax_items_to_submit )) ||',
'            apex_javascript.add_attribute( ''slideTooltipOpt'', c_slide_tooltip ) ||',
'            apex_javascript.add_attribute( ''ajaxIdentifier'',  apex_plugin.get_ajax_identifier, false, false ) ||',
'            ''});'' );',
'',
'    return null;',
'end render_slide_tooltip;',
'',
'function ajax_slide_tooltip (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin )',
'    return apex_plugin.t_region_ajax_result',
'is',
'    c_item_icon  constant varchar2(255) := p_region.attribute_01;',
'    c_item_title constant varchar2(255) := p_region.attribute_02;',
'    c_item_badge constant varchar2(255) := p_region.attribute_03;',
'    c_label_link constant varchar2(255) := p_region.attribute_05;',
'',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    l_link    varchar2(4000);',
'    l_icon    varchar2(4000);',
'    l_title   varchar2(4000);',
'    l_badge   varchar2(4000);',
'    l_content varchar2(4000);',
'begin',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_region (',
'            p_plugin => p_plugin,',
'            p_region => p_region',
'        );',
'    end if;',
'',
'    l_column_value_list := apex_plugin_util.get_data2(',
'                               p_sql_statement => p_region.source,',
'                               p_region        => p_region );',
'',
'    apex_json.initialize_output( p_http_cache => false );',
'    apex_json.open_array;',
'',
'    for l_row_number in 1 .. l_column_value_list( 1 ).value_list.count',
'    loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_number );',
'',
'            l_link :=',
'                case when c_label_link is not null then',
'                    apex_util.prepare_url (',
'                        apex_plugin_util.replace_substitutions (',
'                            p_value  => c_label_link,',
'                            p_escape => false )',
'                        )',
'                end;',
'',
'            l_icon  := apex_escape.html( v( c_item_icon ));',
'            l_title := apex_escape.html( v( c_item_title ));',
'            l_badge := apex_escape.html( v( c_item_badge ));',
'',
'            apex_json.open_object;',
'            apex_json.  write( ''icon'',  l_icon );',
'            apex_json.  write( ''title'', l_title );',
'            apex_json.  write( ''badge'', l_badge );',
'            apex_json.  write( ''link'',  l_link );',
'            apex_json.  open_array( ''content'' );',
'',
'            for l_column_no in 1 .. p_region.region_columns.count',
'            loop',
'                if p_region.region_columns( l_column_no ).is_displayed then',
'                    if p_region.region_columns( l_column_no ).name not in ( c_item_icon, c_item_title, c_item_badge ) then',
'                        l_content := apex_escape.html( v( p_region.region_columns( l_column_no ).name ));',
'                        apex_json.open_object;',
'                        apex_json.  write( ''content'', l_content );',
'                        apex_json.  write( ''label'',   p_region.region_columns( l_column_no ).heading );',
'                        apex_json.close_object;',
'                    end if;',
'                end if;',
'            end loop;',
'',
'            apex_json.  close_array;',
'            apex_json.close_object;',
'            wwv_flow_plugin_util.clear_component_values;',
'        exception when others then',
'            wwv_flow_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_array;',
'',
'    return null;',
'end ajax_slide_tooltip;'))
,p_render_function=>'render_slide_tooltip'
,p_ajax_function=>'ajax_slide_tooltip'
,p_standard_attributes=>'SOURCE_SQL:COLUMNS:COLUMN_HEADING'
,p_sql_min_column_count=>1
,p_substitute_attributes=>false
,p_reference_id=>33215731777496365627
,p_subscribe_plugin_settings=>true
,p_help_text=>'This region plug-in is useful for displaying a report with additional fields either inline or in an expanded tooltip.'
,p_version_identifier=>'5.0.1'
,p_files_version=>352
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664556284091398303)
,p_plugin_id=>wwv_flow_api.id(33664555919676398302)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>2
,p_prompt=>'Icon Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the icon displayed before the title.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664556691729398304)
,p_plugin_id=>wwv_flow_api.id(33664555919676398302)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>3
,p_prompt=>'Title Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ:INTERVAL_Y2M:INTERVAL_D2S:BLOB:CLOB:BFILE:ROWID'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values displayed in the report.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664557088059398304)
,p_plugin_id=>wwv_flow_api.id(33664555919676398302)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>5
,p_prompt=>'Badge Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ:INTERVAL_Y2M:INTERVAL_D2S:BLOB:CLOB:BFILE:ROWID'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the value displayed at the end of each row displayed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664557451967398304)
,p_plugin_id=>wwv_flow_api.id(33664555919676398302)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>1
,p_prompt=>'Mode'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'slide'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the report fields are displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664557833753398305)
,p_plugin_attribute_id=>wwv_flow_api.id(33664557451967398304)
,p_display_sequence=>10
,p_display_value=>'Slide'
,p_return_value=>'slide'
,p_help_text=>'A dropdown indicator is included at end of each record. Pressing this indicator displays the additional fields inline within the report, pushing additional records down.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33664558345649398305)
,p_plugin_attribute_id=>wwv_flow_api.id(33664557451967398304)
,p_display_sequence=>20
,p_display_value=>'Tooltip'
,p_return_value=>'tooltip'
,p_help_text=>'The additional fields are displayed as a tooltip next to the record. The tooltip is displayed when you hover over the record.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664558893420398305)
,p_plugin_id=>wwv_flow_api.id(33664555919676398302)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>4
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>true
,p_default_value=>'#&ENAME.'
,p_is_translatable=>false
,p_help_text=>'<p>Enter a target page to be called when the user clicks a record.</p>'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_tag_cloud
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(33664559263972398308)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TAG_CLOUD'
,p_display_name=>'Tag Cloud'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TAG_CLOUD'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- Constants for the columns of our region source query',
'    c_tag_col   constant pls_integer := 1;',
'    c_count_col constant pls_integer := 2;',
'',
'    -- attributes of the plug-in',
'    l_target_url           varchar2(4000)  := p_region.attribute_01;',
'    l_max_display_tags     number          := p_region.attribute_02;',
'    l_show_count           boolean         := nvl(p_region.attribute_03,''Y'') = ''Y'';',
'    l_no_data_found     varchar2(32767) := p_region.no_data_found_message;',
'',
'    l_valid_data_type_list wwv_flow_global.vc_arr2;',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_printed_records    number := 0;',
'    l_available_records  number := 20;',
'    l_max                number;',
'    l_min                number;',
'    l_total              number := 0;',
'    l_cnts               number;',
'    l_tag                varchar2(4000);',
'',
'    l_class_size         number;',
'    l_class              varchar2(30);',
'',
'begin',
'    -- don''t need to load css file, styles are contained within theme_42',
'    ',
'    -- apex_css.add_file (',
'    --     p_name      => ''tag_cloud'',',
'    --     p_directory => p_plugin.file_prefix,',
'    --     p_version   => null );',
'',
'',
'    -- define the valid column data types for the region query',
'    l_valid_data_type_list(c_tag_col)   := apex_plugin_util.c_data_type_varchar2;',
'    l_valid_data_type_list(c_count_col) := apex_plugin_util.c_data_type_number;',
'',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => 2,',
'                               p_data_type_list => l_valid_data_type_list,',
'                               p_component_name => p_region.name );',
'',
'   l_available_records := l_column_value_list(c_tag_col).value_list.count;',
'',
'   -----------------------------------------------',
'   -- Determine total count and maximum tag counts',
'   --',
'   l_max := 0;',
'   l_min := 1000;',
'   FOR i in 1.. l_column_value_list(c_count_col).value_list.count loop',
'      l_cnts := l_column_value_list(c_count_col).value_list(i).number_value;',
'      l_total := l_total + l_cnts;',
'      if l_cnts > l_max then',
'         l_max := l_cnts;',
'      end if;',
'      if l_cnts < l_min then',
'         l_min := l_cnts;',
'      end if;',
'   end loop;',
'   if l_max = 0 then l_max := 1; end if;',
'',
'',
'   l_class_size := round((l_max-l_min)/6);',
'',
'   ------------------------',
'   -- Generate tag cloud --',
'   --',
'   ',
'   sys.htp.prn(''<ul class="a-TagCloud">'');',
'',
'   for i in 1.. l_column_value_list(c_tag_col).value_list.count loop',
'       l_printed_records := l_printed_records + 1;',
'       l_tag := apex_escape.html(l_column_value_list(c_tag_col).value_list(i).varchar2_value);',
'       l_cnts := l_column_value_list(c_count_col).value_list(i).number_value;',
'       if l_cnts < l_min + l_class_size then',
'          l_class := ''size1'';',
'       elsif l_cnts < l_min + (l_class_size*2) then',
'          l_class := ''size2'';',
'       elsif l_cnts < l_min + (l_class_size*3) then',
'          l_class := ''size3'';',
'       elsif l_cnts < l_min + (l_class_size*4) then',
'          l_class := ''size4'';',
'       elsif l_cnts < l_min + (l_class_size*5) then',
'          l_class := ''size5'';',
'       else l_class := ''size6'';',
'       end if;      ',
'       ',
'        sys.htp.prn(''<li class="a-TagCloud-item">''',
'            ||apex_plugin_util.get_link(',
'                p_url  => replace(l_target_url,''#TAG#'',l_tag),',
'                p_text => l_tag',
'                            ||case when l_show_count then',
'                                '' <span class="a-TagCloud-count">''||l_cnts||''</span>''',
'                            end,',
'                p_escape_text => false,',
'                p_attributes => ''class="a-TagCloud-link a-TagCloud-link--'' ||l_class||''"'')',
'            ||''</li>'');',
'',
'       if  l_printed_records > l_max_display_tags then',
'           exit;',
'       end if;',
'   end loop;',
'',
'   sys.htp.prn(''</ul>'');',
'   if l_printed_records = 0 then',
'       sys.htp.p(''<span class="nodatafound">''||l_no_data_found||''</span>'');',
'   end if;',
'',
'   return null;',
'end render;'))
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'<strong>Example 1: Render tag cloud with all tags.</strong>',
'<pre>',
'select tag, count(*) cnt ',
'  from your_tag_table',
' group by tag',
' order by 1',
'</pre>',
'</p>',
'',
'<p>',
'<b>Example 2: Render tag cloud with tags specific to a content type.</b>',
'<pre>',
'select tag, count(*) cnt ',
'  from your_tag_table',
' where content_type = ''DOCUMENT''',
' group by tag',
' order by 1',
'</pre>',
'</p>',
''))
,p_substitute_attributes=>true
,p_reference_id=>40590887846316571272
,p_subscribe_plugin_settings=>true
,p_help_text=>'<p>Use this region type plug-in to render a tag cloud. The developer supplies a query returning the tag name and count. </p>'
,p_version_identifier=>'5.0.1'
,p_files_version=>5
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664559508239398308)
,p_plugin_id=>wwv_flow_api.id(33664559263972398308)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'f?p=&APP_ID.:69:&APP_SESSION.::::P69_SEARCH:#TAG#'
,p_help_text=>'Enter a target page to be called when the user clicks a tag. Use the #TAG# substitution for the tag that is clicked.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664559913732398309)
,p_plugin_id=>wwv_flow_api.id(33664559263972398308)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Maximum Tags'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>4
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Enter the maximum number of tags to display.'
,p_attribute_comment=>'Enter the maximum number of tags to display in the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33664560300851398310)
,p_plugin_id=>wwv_flow_api.id(33664559263972398308)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Show Count'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether to show the tag count next to the tag.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '092E746167436C6F7564207B7D0A092E746167436C6F756420756C207B0A09096C6973742D7374796C653A206E6F6E653B0A09096D617267696E3A20303B0A090970616464696E673A20303B0A09097D0A09092E746167436C6F7564206C69207B0A0909';
wwv_flow_api.g_varchar2_table(2) := '09646973706C61793A20696E6C696E653B0A0909097D0A0909092E746167436C6F7564206C692061207B0A0909090970616464696E673A2030203570783B0A09090909666F6E743A206E6F726D616C20313270782F3230707820417269616C2C2073616E';
wwv_flow_api.g_varchar2_table(3) := '732D73657269663B0A09090909636F6C6F723A20233030303B0A09090909746578742D736861646F773A20302031707820302072676261283235352C3235352C3235352C2E3735293B0A090909092D6D6F7A2D626F726465722D7261646975733A203370';
wwv_flow_api.g_varchar2_table(4) := '783B0A090909092D7765626B69742D626F726465722D7261646975733A203370783B0A09090909626F726465722D7261646975733A203370783B0A09090909626F726465722D72696768743A2031707820736F6C696420234646463B0A09090909626F72';
wwv_flow_api.g_varchar2_table(5) := '6465722D626F74746F6D3A2031707820736F6C696420234646463B0A09090909746578742D6465636F726174696F6E3A206E6F6E653B0A09090909646973706C61793A20696E6C696E652D626C6F636B3B0A090909096D617267696E3A20302033707820';
wwv_flow_api.g_varchar2_table(6) := '32707820303B0A090909097D0A090909092E746167436C6F7564206C6920613A686F766572207B0A09090909096261636B67726F756E642D636F6C6F723A20234545453B0A0909090909746578742D6465636F726174696F6E3A206E6F6E653B0A090909';
wwv_flow_api.g_varchar2_table(7) := '0909626F726465722D626F74746F6D3A2031707820736F6C696420233939393B0A0909090909626F726465722D72696768743A2031707820736F6C696420233939393B0A09090909097D0A09090909092E746167436C6F7564206C6920613A6163746976';
wwv_flow_api.g_varchar2_table(8) := '65207B0A0909090909096261636B67726F756E642D636F6C6F723A20234444443B0A09090909097D0A0A090909092E746167436C6F7564206C6920612E73697A6531207B666F6E742D73697A653A20313170783B206C696E652D6865696768743A203136';
wwv_flow_api.g_varchar2_table(9) := '70787D0A090909092E746167436C6F7564206C6920612E73697A6532207B666F6E742D73697A653A20313370783B6C696E652D6865696768743A20323070787D0A090909092E746167436C6F7564206C6920612E73697A6533207B666F6E742D73697A65';
wwv_flow_api.g_varchar2_table(10) := '3A20313670783B6C696E652D6865696768743A20323470787D0A090909092E746167436C6F7564206C6920612E73697A6534207B666F6E742D73697A653A20313770783B6C696E652D6865696768743A20323870787D0A090909092E746167436C6F7564';
wwv_flow_api.g_varchar2_table(11) := '206C6920612E73697A6535207B666F6E742D73697A653A20313870783B6C696E652D6865696768743A20333070787D0A090909092E746167436C6F7564206C6920612E73697A6536207B666F6E742D73697A653A20313970783B6C696E652D6865696768';
wwv_flow_api.g_varchar2_table(12) := '743A20333270787D0A0A090909092E746167436C6F7564206C692061207370616E207B0A0909090909646973706C61793A20696E6C696E652D626C6F636B3B0A09090909096D617267696E2D6C6566743A203370783B0A090909090970616464696E673A';
wwv_flow_api.g_varchar2_table(13) := '20303B0A0909090909666F6E742D7765696768743A20626F6C643B0A0909090909636F6C6F723A20233939393B0A09090909097D0A09090909092E746167436C6F7564206C6920613A686F766572207370616E207B0A0909090909097D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33664560768485398311)
,p_plugin_id=>wwv_flow_api.id(33664559263972398308)
,p_file_name=>'tag_cloud.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(64881718487687529441)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Escritorio'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(64881676081755529400)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(64881710672222529432)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(64881718459047529441)
,p_nav_bar_list_template_id=>wwv_flow_api.id(64881710630617529431)
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'RENT'
,p_page_mode=>'NORMAL'
,p_step_title=>'RENT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530024257'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29727744663055052431)
,p_plug_name=>'RENT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881684201164529409)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
''))
,p_region_image=>'#WORKSPACE_IMAGES#logo.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33404812834228482135)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881684201164529409)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p> ',
'</p>',
'<font size=7',
'face="Impact,arial,verdana">',
'',
'BIENVENIDO...</font>',
'</font>',
'',
'<font face="Impact,arial,verdana"><p>     Rent tu mejor opcion!!!</p></font>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33404812937058482136)
,p_plug_name=>'redes'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'        <div class="sample-app-oracle-footer">  ',
'            <div class="row">	 ',
'                <div class="col col-2 alpha"> ',
'                    <a href="https://www.facebook.com/RENT-Tu-mejor-opcion-177163188992279/info/?tab=page_info&edited=category" target="_blank"> ',
'                                <span class="t-Icon fa-facebook-square"></span> ',
'                                Nuestro Facebook	 ',
'                    </a>	 ',
'                </div>	 ',
'                <div class="col col-2"> ',
'                    <a href="https://www.instagram.com/renttumejoropcion.2016/" target="_blank"> ',
'                                <span class="t-Icon fa-instagram"></span> ',
'                                Conectate en instagram	 ',
'                    </a>	 ',
'                </div>	 ',
'                <div class="col col-2"> ',
'                    <a href="https://twitter.com/RENT_2016" target="_blank"> ',
'                                <span class="t-Icon fa-twitter"></span> ',
'                                Siguenos en Twitter	 ',
'                    </a>	 ',
'                </div>	 ',
'            </div> ',
'        </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33404813543667482142)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'CATALOGO'
,p_page_mode=>'NORMAL'
,p_step_title=>'CATALOGO'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530073330'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29432289268448244443)
,p_plug_name=>'CATALOGO DE AUTOS '
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#registro.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29432289345046244444)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881691799175529414)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'select c.Nombre CARRO, tp.DESCRIPCION TIPO, c.PRECIO_POR_HORA "PRECIO HORA", c.capacidad Capacidad,c.disponibilidad DISPONIBLE, c.PLACA placa,c.KILOMETRAJE Km from carro c join tipo_carro tp on c.TIPO_CARRO_ID_TIPO=tp.ID_TIPO'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(29432289453955244445)
,p_max_row_count=>'1000000'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'CAROLINA_CALVACHE'
,p_internal_uid=>29432289453955244445
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496072900999114601)
,p_db_column_name=>'CARRO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Carro'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496031052118081065)
,p_db_column_name=>'TIPO'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29432289730473244448)
,p_db_column_name=>'CAPACIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Capacidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496031798328081066)
,p_db_column_name=>'PRECIO HORA'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Precio Hora'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496073001432114602)
,p_db_column_name=>'KM'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29432289815771244449)
,p_db_column_name=>'PLACA'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Placa'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496075698069114628)
,p_db_column_name=>'DISPONIBLE'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Disponible'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(34589111550458836184)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33406726985645329893)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'334067270'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'CAPACIDAD:PLACA:TIPO:PRECIO HORA:CARRO:KM:DISPONIBLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29727745959547052444)
,p_plug_name=>'VER IMAGENES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64881692287456529415)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29727746245693052447)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'IMAGENES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713213211529435)
,p_button_image_alt=>'Imagenes'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-automobile'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29727746560586052450)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Camaro'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Camaro'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29727746367679052448)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'R8'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Audi R8'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917182624686806)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Mazda_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Mazda 2'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516916804546686803)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Mazda_3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Mazda 3'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516916947971686804)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Sonic'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Sonic'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917040255686805)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Tracker'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Tracker'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516938144208686816)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Spark'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Spark'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917211217686807)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Audi_A3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Audi A3'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516938200752686817)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Mazda_New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Mazda NEW'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516938394369686818)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Audi_Rs'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Audi RS'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917326861686808)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'BMW_I8'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Bmw I8'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917413437686809)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Lamborghini'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Lamborghini'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516938432083686819)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Mazda_CX5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Mazda CX5'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917538368686810)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Peugeot_GTI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Peugeot GTI'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34516917622276686811)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(29727745959547052444)
,p_button_name=>'Twizy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Twizy'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(64882085423619626385)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64882087765083626428)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Historial'
,p_page_mode=>'MODAL'
,p_step_title=>'Historial'
,p_step_sub_title=>'Historial'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530011121'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33780551754306384384)
,p_plug_name=>'Historial'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881691799175529414)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID_SOLICITUD,',
'       NOMBRE,',
'       COLOR,',
'       PLACA,',
'       FECHA_INICIO,',
'       FECHA_ENTREGA',
'  from HISTORIAL_SOLICITUD'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33780551872121384384)
,p_name=>'Historial'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'El recuento máximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el número de registros de la consulta.'
,p_no_data_found_message=>'No se ha encontrado ningún dato.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Editar">'
,p_owner=>'JHONATAN_JURADO'
,p_internal_uid=>33780551872121384384
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33780552233385384391)
,p_db_column_name=>'ID_SOLICITUD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Solicitud'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33780553028992384394)
,p_db_column_name=>'COLOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33780553457114384395)
,p_db_column_name=>'PLACA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Placa'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33780553855765384395)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33780554206455384396)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496075375594114625)
,p_db_column_name=>'NOMBRE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33780573885519388229)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'337805739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID_SOLICITUD:COLOR:PLACA:FECHA_INICIO:FECHA_ENTREGA:NOMBRE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Datos Personales'
,p_page_mode=>'MODAL'
,p_step_title=>'Datos Personales'
,p_step_sub_title=>'Datos Personales'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'350'
,p_dialog_width=>'650'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160518053819'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33662555598536748646)
,p_plug_name=>'Datos Personales'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881691799175529414)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CEDULA,',
'       NOMBRE,',
'       NUMERO_LICENCIA,',
'       TELEFONO,',
'       DIRECCION_ALOJAMIENTO',
'  from INFO_CLIENTE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33662555693415748646)
,p_name=>'Datos Personales'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'El recuento máximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el número de registros de la consulta.'
,p_no_data_found_message=>'No se ha encontrado ningún dato.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Editar">'
,p_owner=>'JHONATAN_JURADO'
,p_internal_uid=>33662555693415748646
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33662556070026748654)
,p_db_column_name=>'CEDULA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cedula'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33662556457851748656)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33662556802820748656)
,p_db_column_name=>'NUMERO_LICENCIA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Numero Licencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33662557241040748656)
,p_db_column_name=>'TELEFONO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Telefono'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33662557644294748657)
,p_db_column_name=>'DIRECCION_ALOJAMIENTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Direccion Alojamiento'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33662558977124751397)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'336625590'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'CEDULA:NOMBRE:NUMERO_LICENCIA:TELEFONO:DIRECCION_ALOJAMIENTO'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Solicitud de renta'
,p_page_mode=>'NORMAL'
,p_step_title=>'Solicitud de renta'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530010323'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33338555007271690261)
,p_plug_name=>'Solicitud de renta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64881692287456529415)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33338555550777690262)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33338555715763690262)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33338555467572690262)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33338555686998690262)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33338557375657690266)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33338557998849690708)
,p_name=>'ID_SOLICITUD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_use_cache_before_default=>'NO'
,p_source=>'ID_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33338558239432690724)
,p_name=>'P5_FECHA_INICIO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Inicio'
,p_source=>'FECHA_INICIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33338558611034690726)
,p_name=>'P5_FECHA_ENTREGA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Entrega'
,p_source=>'FECHA_ENTREGA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33338559000898690726)
,p_name=>'P5_CARRO_ID_CARRO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Carro'
,p_source=>'CARRO_ID_CARRO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NOMBRE||'' ''||COLOR||'' ''||PLACA as display_value, ID_CARRO as return_value ',
'  from CARRO WHERE DISPONIBILIDAD = 1',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Dentro del catalogo de autos usted puede ver los carros disponibles. En esta seccion ud debe seleccionar el carro que desea rentar.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33338559462547690727)
,p_name=>'P5_CLIENTE_CEDULA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33338555007271690261)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Identificacion'
,p_source=>'CLIENTE_CEDULA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33338560681681690730)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SOLICITUD_RENTA'
,p_attribute_02=>'SOLICITUD_RENTA'
,p_attribute_03=>'ID_SOLICITUD'
,p_attribute_04=>'ID_SOLICITUD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Acción procesada.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33338561098281690730)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33338555686998690262)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Chevrolet Camaro'
,p_page_mode=>'MODAL'
,p_step_title=>'Chevrolet Camaro'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530020916'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353563991993052311)
,p_plug_name=>'Chevrolet Camaro'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#camaro2.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Audi R8'
,p_page_mode=>'MODAL'
,p_step_title=>'Audi R8'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530020959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564071868052312)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'	#WORKSPACE_IMAGES#audi.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Mazda 3'
,p_page_mode=>'MODAL'
,p_step_title=>'Mazda 3'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530021308'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564198716052313)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#Mazda3/Mazda 3.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Chevrolet Sonic'
,p_page_mode=>'MODAL'
,p_step_title=>'Chevrolet Sonic'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530021418'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564243759052314)
,p_plug_name=>'Sonic'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#sonic2.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Chevrolet Tracker'
,p_page_mode=>'MODAL'
,p_step_title=>'Chevrolet Tracker'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530021530'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564395311052315)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#trakcer/Tracker.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Mazda 2'
,p_page_mode=>'MODAL'
,p_step_title=>'Mazda 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530024129'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564447223052316)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#azul-metalico.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Devolucion'
,p_page_mode=>'NORMAL'
,p_step_title=>'Devolucion'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'VALENTINA.ALVAREZ.VALLEJO@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160516055759'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33356091574065459683)
,p_plug_name=>'Devolucion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881691799175529414)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT S.CLIENTE_CEDULA CLIENTE ,D.SOLICITUD_RENTA_ID_SOLICITUD SOLICITUD ,D.FECHA_DEVOLUCION,D.KILOMETRAJE_FINAL,D.OBSERVACIONES',
' FROM DEVOLUCION D JOIN SOLICITUD_RENTA S ON D.SOLICITUD_RENTA_ID_SOLICITUD=S.ID_SOLICITUD;',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33356091835409459683)
,p_name=>'Devolucion'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'El recuento máximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el número de registros de la consulta.'
,p_no_data_found_message=>'No se ha encontrado ningún dato.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:14:&APP_SESSION.::::P14_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'VALENTINA.ALVAREZ.VALLEJO@GMAIL.COM'
,p_internal_uid=>33356091835409459683
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33356092705679459689)
,p_db_column_name=>'FECHA_DEVOLUCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Devolucion'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33356093196022459690)
,p_db_column_name=>'KILOMETRAJE_FINAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Kilometraje Final'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33356093943554459691)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33406718759156329004)
,p_db_column_name=>'CLIENTE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Cliente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33406718827307329005)
,p_db_column_name=>'SOLICITUD'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'Solicitud'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33356128662458843449)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'333561287'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ROWID_RENTA_ID_FECHA_DEVOLUCION:KILOMETRAJE_FINAL:OBSERVACIONES:CLIENTE:SOLICITUD'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33356094324453459691)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33356091574065459683)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Pantalla Basada en DEVOLUCION'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pantalla Basada en DEVOLUCION'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(33343037057999089824)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'CRISTIAN_LOPERA'
,p_last_upd_yyyymmddhh24miss=>'20160516235711'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33356053100567459571)
,p_plug_name=>'Pantalla Basada en DEVOLUCION'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64881692287456529415)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33356053627091459572)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P14_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33356053894563459572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33356053570941459572)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P14_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33356053791081459572)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33356055358995459575)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33356055713808459648)
,p_name=>'P14_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64881712797235529434)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33356056118549459661)
,p_name=>'P14_SOLICITUD_RENTA_ID_SOLICIT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Solicitud'
,p_source=>'SOLICITUD_RENTA_ID_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33356056507224459664)
,p_name=>'P14_FECHA_DEVOLUCION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Devolucion'
,p_source=>'FECHA_DEVOLUCION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33356056908286459665)
,p_name=>'P14_KILOMETRAJE_FINAL'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Kilometraje Final'
,p_source=>'KILOMETRAJE_FINAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33356057382879459665)
,p_name=>'P14_ESTADO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BUEN ESTADO;BUEN ESTADO,PARA REPARAR;PARA REPARAR,OBSOLETO;OBSOLETO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(64881713059005529434)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33356057789606459666)
,p_name=>'P14_OBSERVACIONES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33356053100567459571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64881712797235529434)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33356090096179459669)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from DEVOLUCION'
,p_attribute_02=>'DEVOLUCION'
,p_attribute_03=>'P14_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33356090427429459670)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DEVOLUCION'
,p_attribute_02=>'DEVOLUCION'
,p_attribute_03=>'P14_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Acción procesada.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33356090823186459671)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33356053791081459572)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Audi A3'
,p_page_mode=>'MODAL'
,p_step_title=>'Audi A3'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023230'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564570315052317)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#Audi-A3.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Bmw I8'
,p_page_mode=>'MODAL'
,p_step_title=>'Bmw I8'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023530'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564651785052318)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#I8.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'pruebas'
,p_page_mode=>'NORMAL'
,p_step_title=>'pruebas'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160517033200'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33404809771352482104)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(64881692287456529415)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'lower(USERID) || '' - '' || trim(to_char(count(*),''999G999G999G990'')) display_column,',
'trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :app_id and userid is not null and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID)'))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'THE_DAY'
,p_attribute_03=>'DISPLAY_COLUMN'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Lamborghini'
,p_page_mode=>'MODAL'
,p_step_title=>'Lamborghini'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023610'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564739116052319)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#Lamborghini Aventador.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Peugeot GTI'
,p_page_mode=>'MODAL'
,p_step_title=>'Peugeot GTI'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023918'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564842242052320)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#GTI.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Factura'
,p_page_mode=>'NORMAL'
,p_step_title=>'Factura'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530010605'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33715316476436916601)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p> ',
'</p>',
'<font size=6',
'face="Impact,arial,verdana">',
'',
'FACTURA...</font>',
'</font>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33622275697788323602)
,p_name=>'FACTURA CLIENTE'
,p_region_name=>'FACTURA '
,p_parent_plug_id=>wwv_flow_api.id(33715316476436916601)
,p_template=>wwv_flow_api.id(64881695609693529418)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'#REGION_ATTRIBUTES# '
,p_report_attributes=>'RENTAR '
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from (select f.idfactura Codigo, c.cedula, c.nombre, cr.nombre||'' ''||cr.color Carro, (d.fecha_devolucion-sr.fecha_inicio)* 24 Horas, f.total Total ',
'from factura f join devolucion d on f.devolucion_solicitud = d.solicitud_renta_id_solicitud',
'join solicitud_renta sr on d.solicitud_renta_id_solicitud = sr.id_solicitud',
'join cliente c on c.cedula = sr.cliente_cedula',
'join carro cr on cr.id_carro = sr.carro_id_carro where c.cedula = apex_authentication.get_login_username_cookie order by codigo DESC) where rownum = 1 '))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>2
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Imprimir'
,p_prn_output_file_name=>'FACTURA_CLIENTE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'CUSTOM'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>200
,p_prn_height=>120
,p_prn_orientation=>'VERTICAL'
,p_prn_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'RENT',
'Tu mejor opcion!!!',
'NIT: 890.914.526-4',
'ARMENIA',
'Cra 16 # 21 - 47 ',
'',
''))
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'bold'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'GRACIAS POR UTILIZAR NUESTROS SERVICIOS',
'***************************************'))
,p_prn_page_footer_font_color=>'#050005'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'bold'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9BC9DE'
,p_prn_header_font_color=>'#150652'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#EDEDED'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'8'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#171317'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29727745273107052437)
,p_query_column_id=>1
,p_column_alias=>'CODIGO'
,p_column_display_sequence=>1
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33715317032516916607)
,p_query_column_id=>2
,p_column_alias=>'CEDULA'
,p_column_display_sequence=>2
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33715317125672916608)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29727745374827052438)
,p_query_column_id=>4
,p_column_alias=>'CARRO'
,p_column_display_sequence=>4
,p_column_heading=>'Carro'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29727745468882052439)
,p_query_column_id=>5
,p_column_alias=>'HORAS'
,p_column_display_sequence=>5
,p_column_heading=>'Horas'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'16'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29727745590496052440)
,p_query_column_id=>6
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>6
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'16'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Renault Twizy'
,p_page_mode=>'MODAL'
,p_step_title=>'Renault Twizy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023957'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33353564959588052321)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#renault-twizy.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'generar factura'
,p_page_mode=>'NORMAL'
,p_step_title=>'generar factura'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530010528'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34496073428093114606)
,p_plug_name=>'Historial de facturas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64881692287456529415)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select f.idfactura Codigo, c.cedula, c.nombre, cr.nombre||'' ''||cr.color Carro, (d.fecha_devolucion-sr.fecha_inicio)* 24 Horas, f.total Total ',
'from factura f join devolucion d on f.devolucion_solicitud = d.solicitud_renta_id_solicitud',
'join solicitud_renta sr on d.solicitud_renta_id_solicitud = sr.id_solicitud',
'join cliente c on c.cedula = sr.cliente_cedula',
'join carro cr on cr.id_carro = sr.carro_id_carro where c.cedula = apex_authentication.get_login_username_cookie',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(34496074216464114614)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'JHONATAN_JURADO'
,p_internal_uid=>34496074216464114614
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496074396795114615)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496074421874114616)
,p_db_column_name=>'CEDULA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cedula'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496074510713114617)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496074630539114618)
,p_db_column_name=>'CARRO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Carro'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496074794710114619)
,p_db_column_name=>'HORAS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Horas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34496074838262114620)
,p_db_column_name=>'TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(34542074664143817973)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'345420747'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'CODIGO:CEDULA:NOMBRE:CARRO:HORAS:TOTAL'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Chevrolet Spark'
,p_page_mode=>'MODAL'
,p_step_title=>'Chevrolet Spark'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530021815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34577885623825649901)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#Chevrolet-Spark.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Mazda New'
,p_page_mode=>'MODAL'
,p_step_title=>'Mazda New'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023319'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34577885704530649902)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#Maza_new.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Audi RS'
,p_page_mode=>'MODAL'
,p_step_title=>'Audi RS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023430'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34577885889422649903)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_IMAGES#audi_rs.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Mazda CX5'
,p_page_mode=>'MODAL'
,p_step_title=>'Mazda CX5'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No hay ayuda disponible para esta página.'
,p_last_updated_by=>'JHONATAN_JURADO'
,p_last_upd_yyyymmddhh24miss=>'20160530023835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34577885971031649904)
,p_plug_name=>'Imagen'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'	#WORKSPACE_IMAGES#CX_5.jpg'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(64881718487687529441)
,p_name=>'Página de Conexión'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Bienvenido'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' /* Imagen del logo */',
'',
' span.t-Login-logo {',
'',
'background-image: url("#WORKSPACE_IMAGES#logitico.jpg");',
'',
'background-size: cover;',
'',
'width: 70x;',
'',
'height: 42px;',
'',
'}',
'',
'/* Color de fondo del botón LOGIN */',
'',
'.t-Button--hot {',
'',
'background-color: #57BB97',
'',
'}',
'',
'/* Color de fondo de la región Conectar */',
'',
'.t-Login-region {',
'',
'   background-color: #29455C;',
'',
'}',
'',
'',
'',
'',
'/* Color del título Conectar que está debajo del logo */',
'',
'body .t-Login-title {',
'',
'   color: #fff;',
'',
'}',
'',
'.t-Region {',
'    background-color: #4696fc;',
'}',
'',
'/* Imagen de Fondo del cuerpo de la página */',
'',
'.t-PageBody--login .t-Body {',
'',
'background-image: url("#WORKSPACE_IMAGES#AUTOS/AUTOS.jpg");',
'',
'background-size: cover;',
'',
'}'))
,p_step_template=>wwv_flow_api.id(64881678134460529402)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CAROLINA_CALVACHE'
,p_last_upd_yyyymmddhh24miss=>'20160520030418'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31991320684285102230)
,p_plug_name=>'Eres nuevo? Registrate...'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64881692287456529415)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33404810224561482109)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(64881695609693529418)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64881719063763529444)
,p_plug_name=>'Iniciar Sesion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64881692107149529415)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33404810390005482110)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33404810224561482109)
,p_button_name=>'Nuevo'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(64881713213211529435)
,p_button_image_alt=>'Nuevo'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'https://apex.oracle.com/pls/apex/f?p=56624:LOGIN_DESKTOP:100445204675732:::::'
,p_icon_css_classes=>'fa-cogs'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33343339932496492502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31991320684285102230)
,p_button_name=>'Registrar'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713425683529435)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrarse'
,p_button_position=>'BODY'
,p_button_redirect_url=>'https://apex.oracle.com/pls/apex/f?p=72980:3:114602174411192:::::'
,p_icon_css_classes=>'fa-check-square'
,p_grid_new_row=>'Y'
,p_grid_column_span=>8
,p_grid_column=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64881719349070529445)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(64881719063763529444)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(64881713340688529435)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Conectar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64881719103207529444)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64881719063763529444)
,p_placeholder=>'Nombre de Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(64881712797235529434)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64881719210953529445)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64881719063763529444)
,p_placeholder=>'Contraseña'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(64881712797235529434)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64881719493169529445)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Definir Cookie de Nombre de Usuario'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64881719422702529445)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64881719677911529445)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Borrar Caché de Páginas'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64881719606312529445)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtener Cookie de Nombre de Usuario'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(33338606420446705794)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
