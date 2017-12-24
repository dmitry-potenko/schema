use mx_master_moneyman;

CREATE TABLE bdc_ar (
  id                        BIGINT NOT NULL AUTO_INCREMENT,
  clave_opassword_erroneo   VARCHAR(255),
  error_sistema         VARCHAR(255),
  etiqueta_segmento_erronea VARCHAR(255),
  falta_campo_requerido     VARCHAR(255),
  referencia_operador       VARCHAR(255),
  sujeto_no_autenticado     VARCHAR(255),
  error_id                  BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_ur (
  id                                  BIGINT NOT NULL AUTO_INCREMENT,
  error_reporte_bloqueado             VARCHAR(255),
  error_sistema_buro_credito          VARCHAR(255),
  etiqueta_segmento_erronea           VARCHAR(255),
  falta_campo_requerido               VARCHAR(255),
  informacion_erronea_para_consulta   VARCHAR(255),
  numero_erroneo_segmentos            VARCHAR(255),
  numero_referencia_operador          VARCHAR(255),
  orden_erroneo_segmento              VARCHAR(255),
  password_oclave_erronea             VARCHAR(255),
  producto_solicitado_erroneo         VARCHAR(255),
  segmento_requerido_no_proporcionado VARCHAR(255),
  solicitud_cliente_erronea           VARCHAR(255),
  ultima_informacion_valida_cliente   VARCHAR(255),
  valor_erroneo_campo_relacionado     VARCHAR(255),
  version_proporcionada_erronea       VARCHAR(255),
  error_id                            BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_caracteristicas(
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  codigo_error           VARCHAR(255),
  id_caracteristica      VARCHAR(255),
  numero_caracteristica  VARCHAR(255),
  plantilla              VARCHAR(255),
  valor                  VARCHAR(255),
  bdc_persona_id BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_consulta_efectuada (
  id                             BIGINT NOT NULL AUTO_INCREMENT,
  clave_otorgante                VARCHAR(255),
  clave_unidad_monetaria         VARCHAR(255),
  consumidor_nuevo               VARCHAR(255),
  fecha_consulta                 VARCHAR(255),
  identificacion_buro            VARCHAR(255),
  identificador_origen_consulta  VARCHAR(255),
  importe_contrato               VARCHAR(255),
  indicador_tipo_responsabilidad VARCHAR(255),
  nombre_otorgante               VARCHAR(255),
  resultado_final                VARCHAR(255),
  telefono_otorgante             VARCHAR(255),
  tipo_contrato                  VARCHAR(255),
  bdc_persona_id         BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_response (
  id BIGINT NOT NULL AUTO_INCREMENT,
  credit_id BIGINT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_cuentas (
  id                                            BIGINT NOT NULL AUTO_INCREMENT,
  clave_observacion                             VARCHAR(255),
  clave_otorgante                               VARCHAR(255),
  clave_unidad_monetaria                        VARCHAR(255),
  credito_maximo                                VARCHAR(255),
  fecha_actualizacion                           VARCHAR(255),
  fecha_apertura_cuenta                         VARCHAR(255),
  fecha_cierre_cuenta                           VARCHAR(255),
  fecha_historica_morosidad_mas_grave           VARCHAR(255),
  fecha_inicio_reestructura                     VARCHAR(255),
  fecha_mas_antigua_historico_pagos             VARCHAR(255),
  fecha_mas_reciente_historico_pagos            VARCHAR(255),
  fecha_reporte                                 VARCHAR(255),
  fecha_ultima_compra                           VARCHAR(255),
  fecha_ultimo_pago                             VARCHAR(255),
  forma_pago_actual                             VARCHAR(255),
  frecuencia_pagos                              VARCHAR(255),
  garantia                                      VARCHAR(255),
  historico_pagos                               VARCHAR(255),
  identificador_sociedad_informacion_crediticia VARCHAR(255),
  importe_saldo_morosidad_hist_mas_grave        VARCHAR(255),
  indicador_tipo_responsabilidad                VARCHAR(255),
  limite_credito                                VARCHAR(255),
  modo_reportar                                 VARCHAR(255),
  monto_pagar                                   VARCHAR(255),
  monto_ultimo_pago                             VARCHAR(255),
  mop_historico_morosidad_mas_grave             VARCHAR(255),
  nombre_otorgante                              VARCHAR(255),
  numero_cuenta_actual                          VARCHAR(255),
  numero_pagos                                  VARCHAR(255),
  numero_pagos_vencidos                         VARCHAR(255),
  numero_telefono_otorgante                     VARCHAR(255),
  registro_impugnado                            VARCHAR(255),
  saldo_actual                                  VARCHAR(255),
  saldo_vencido                                 VARCHAR(255),
  tipo_contrato                                 VARCHAR(255),
  tipo_cuenta                                   VARCHAR(255),
  total_pagos_calificados_mop_2                 VARCHAR(255),
  total_pagos_calificados_mop_3                 VARCHAR(255),
  total_pagos_calificados_mop_4                 VARCHAR(255),
  total_pagos_calificados_mop_5                 VARCHAR(255),
  total_pagos_reportados                        VARCHAR(255),
  ultima_fecha_saldo_cero                       VARCHAR(255),
  valor_activo_valuacion                        VARCHAR(255),
  bdc_persona_id                                BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_declaraciones_cliente (
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  declaracion_consumidor VARCHAR(255),
  bdc_persona_id BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_direccion (
  id                           BIGINT NOT NULL AUTO_INCREMENT,
  cp                           VARCHAR(255),
  ciudad                       VARCHAR(255),
  cod_pais                     VARCHAR(255),
  colonia_poblacion            VARCHAR(255),
  delegacion_municipio         VARCHAR(255),
  direccion_1                  VARCHAR(255),
  direccion_2                  VARCHAR(255),
  estado                       VARCHAR(255),
  extension                    VARCHAR(255),
  fax                          VARCHAR(255),
  fecha_residencia             VARCHAR(255),
  indicador_especial_domicilio VARCHAR(255),
  numero_telefono              VARCHAR(255),
  tipo_domicilio               VARCHAR(255),
  fecha_reporte_direccion      VARCHAR(255),
  bdc_persona_id       BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_empleo(
  id                      BIGINT NOT NULL AUTO_INCREMENT,
  cp                      VARCHAR(255),
  base_salarial           VARCHAR(255),
  cargo                   VARCHAR(255),
  ciudad                  VARCHAR(255),
  clave_moneda_salario    VARCHAR(255),
  cod_pais                VARCHAR(255),
  colonia_poblacion       VARCHAR(255),
  delegacion_municipio    VARCHAR(255),
  direccion_1             VARCHAR(255),
  direccion_2             VARCHAR(255),
  estado                  VARCHAR(255),
  extension               VARCHAR(255),
  fax                     VARCHAR(255),
  fecha_contratacion      VARCHAR(255),
  fecha_ultimo_dia_empleo VARCHAR(255),
  nombre_empresa          VARCHAR(255),
  numero_empleado         VARCHAR(255),
  numero_telefono         VARCHAR(255),
  salario                 VARCHAR(255),
  fecha_reporto_empleo    VARCHAR(255),
  fecha_verificacion      VARCHAR(255),
  modo_verificacion       VARCHAR(255),
  bdc_persona_id  BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_encabezado(
  id                                  BIGINT NOT NULL AUTO_INCREMENT,
  clave_pais                          VARCHAR(255),
  clave_unidad_monetaria              VARCHAR(255),
  clave_usuario                       VARCHAR(255),
  identificador_buro                  VARCHAR(255),
  idioma                              VARCHAR(255),
  importe_contrato                    VARCHAR(255),
  numero_referencia_operador          VARCHAR(255),
  password_                           VARCHAR(255),
  producto_requerido                  VARCHAR(255),
  tipo_consulta                       VARCHAR(255),
  tipo_contrato                       VARCHAR(255),
  tipo_salida                         VARCHAR(255),
  version_                            VARCHAR(255),
  clave_otorgante                     VARCHAR(255),
  clave_retorno_consumidor_principal  VARCHAR(255),
  clave_retorno_consumidor_secundario VARCHAR(255),
  numero_control_consulta             VARCHAR(255),
  bdc_persona_id              BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_error (
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  bdc_persona_id BIGINT,
  report_pdf_id          BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_fr (
  id                        BIGINT NOT NULL AUTO_INCREMENT,
  leyenda_reporte_bloqueado VARCHAR(255),
  bdc_persona_id    BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_hawk_alert_bdresp(
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  codigo_clave           VARCHAR(255),
  fecha_reporte          VARCHAR(255),
  mensaje                VARCHAR(255),
  tipo_institucion       VARCHAR(255),
  bdc_persona_id BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_hawk_alert_consulta (
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  codigo_clave           VARCHAR(255),
  fecha_reporte          VARCHAR(255),
  mensaje                VARCHAR(255),
  tipo_institucion       VARCHAR(255),
  bdc_persona_id BIGINT,
  PRIMARY KEY (id)
);


CREATE TABLE bdc_nombre(
  id                                       BIGINT NOT NULL AUTO_INCREMENT,
  rfc                                      VARCHAR(255),
  apellido_adicional                       VARCHAR(255),
  apellido_materno                         VARCHAR(255),
  apellido_paterno                         VARCHAR(255),
  clave_impuestos_otro_pais                VARCHAR(255),
  clave_otro_pais                          VARCHAR(255),
  edades_dependientes                      VARCHAR(255),
  estado_civil                             VARCHAR(255),
  fecha_nacimiento                         VARCHAR(255),
  nacionalidad                             VARCHAR(255),
  numero_cedula_profesional                VARCHAR(255),
  numero_dependientes                      VARCHAR(255),
  numero_licencia_conducir                 VARCHAR(255),
  numero_registro_electoral                VARCHAR(255),
  prefijo                                  VARCHAR(255),
  primer_nombre                            VARCHAR(255),
  residencia                               VARCHAR(255),
  segundo_nombre                           VARCHAR(255),
  sexo                                     VARCHAR(255),
  sufijo                                   VARCHAR(255),
  fecha_defuncion                          VARCHAR(255),
  fecha_recepcion_informacion_dependientes VARCHAR(255),
  bdc_persona_id                   BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_persona (
  id              BIGINT NOT NULL AUTO_INCREMENT,
  reporte_impreso VARCHAR(255),
  response_id     BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_reporte_pdf (
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  reporte                LONGBLOB,
  bdc_persona_id BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_resumen_reporte (
  id                                                   BIGINT NOT NULL AUTO_INCREMENT,
  cuentas_cerradas                                     VARCHAR(255),
  cuentas_claves_historia_negativa                     VARCHAR(255),
  cuentas_disputa                                      VARCHAR(255),
  cuentas_negativas_actuales                           VARCHAR(255),
  cuentas_pagos_fijos_hipotecas                        VARCHAR(255),
  cuentas_revolventes_abiertas                         VARCHAR(255),
  existencia_declaraciones_consumidor                  VARCHAR(255),
  fecha_apertura_cuenta_mas_antigua                    VARCHAR(255),
  fecha_apertura_cuenta_mas_reciente                   VARCHAR(255),
  fecha_apertura_cuenta_mas_reciente_despacho_cobranza VARCHAR(255),
  fecha_ingreso_bd                                     VARCHAR(255),
  fecha_solicitud_mas_reciente_despacho_cobranza       VARCHAR(255),
  fecha_solicitud_reporte_mas_reciente                 VARCHAR(255),
  mensajes_alerta                                      VARCHAR(255),
  nueva_direccion_reportada_ultimos_60dias             VARCHAR(255),
  numero_cuentas                                       VARCHAR(255),
  numero_mop_0                                         VARCHAR(255),
  numero_mop_1                                         VARCHAR(255),
  numero_mop_2                                         VARCHAR(255),
  numero_mop_3                                         VARCHAR(255),
  numero_mop_4                                         VARCHAR(255),
  numero_mop_5                                         VARCHAR(255),
  numero_mop_6                                         VARCHAR(255),
  numero_mop_7                                         VARCHAR(255),
  numero_mop_96                                        VARCHAR(255),
  numero_mop_97                                        VARCHAR(255),
  numero_mop_99                                        VARCHAR(255),
  numero_mopur                                         VARCHAR(255),
  numero_solicitudes_ultimos_6meses                    VARCHAR(255),
  numero_total_cuentas_despacho_cobranza               VARCHAR(255),
  numero_total_solicitudes_despachos_cobranza          VARCHAR(255),
  pct_limite_credito_utilizado_revolventes             VARCHAR(255),
  tipo_moneda                                          VARCHAR(255),
  total_creditos_maximos_pagos_fijos                   VARCHAR(255),
  total_creditos_maximos_revolventes                   VARCHAR(255),
  total_limites_credito_revolventes                    VARCHAR(255),
  total_pagos_pagos_fijos                              VARCHAR(255),
  total_pagos_revolventes                              VARCHAR(255),
  total_saldos_actuales_pagos_fijos                    VARCHAR(255),
  total_saldos_actuales_revolventes                    VARCHAR(255),
  total_saldos_vencidos_pagos_fijos                    VARCHAR(255),
  total_saldos_vencidos_revolventes                    VARCHAR(255),
  total_solicitudes_reporte                            VARCHAR(255),
  bdc_persona_id                               BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_score_buro_credito (
  id                     BIGINT NOT NULL AUTO_INCREMENT,
  codigo_error           VARCHAR(255),
  codigo_score           VARCHAR(255),
  nombre_score           VARCHAR(255),
  valor_score            VARCHAR(255),
  bdc_persona_id BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE bdc_codigo_razon_item (
  id                            BIGINT NOT NULL AUTO_INCREMENT,
  item                          VARCHAR(255),
  score_buro_credito_id BIGINT,
  PRIMARY KEY (id)
);


ALTER TABLE bdc_ar
  ADD CONSTRAINT fk_53cddejh8qdr21ha4rme39see
FOREIGN KEY (error_id)
REFERENCES bdc_error (id);

ALTER TABLE bdc_ur
  ADD CONSTRAINT fk_53cddejh8qdr11ha4rme39see
FOREIGN KEY (error_id)
REFERENCES bdc_error (id);

ALTER TABLE bdc_caracteristicas
  ADD CONSTRAINT fk_53ctvejh8qdr11ha4rme39see
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_consulta_efectuada
  ADD CONSTRAINT fk_scn0rswf1noj74lu4by16m8pk
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_cuentas
  ADD CONSTRAINT fk_ombn3feqc68icefg94b55cvbf
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);


ALTER TABLE bdc_declaraciones_cliente
  ADD CONSTRAINT fk_ombn3feqc68icefg21b55cvbf
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_direccion
  ADD CONSTRAINT fk_cgp0i3v381m3o96ik9sgm6phg
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_empleo
  ADD CONSTRAINT fk_tm0a1r1vcqh2ut10truu5c36e
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_encabezado
  ADD CONSTRAINT fk_6a0ddyq6ks4alyypy4aycu4i1
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_error
  ADD CONSTRAINT fk_lzymi32iew217a1cog8vronnh
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_error
  ADD CONSTRAINT fk_lcymi32iew217a1cog8vronnh
FOREIGN KEY (report_pdf_id)
REFERENCES bdc_reporte_pdf (id);

ALTER TABLE bdc_fr
  ADD CONSTRAINT fk_lwymi32iew217a1cog8vronnh
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_hawk_alert_bdresp
  ADD CONSTRAINT fk_kgblyopnrrviotim5yfwtinwo
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_hawk_alert_consulta
  ADD CONSTRAINT fk_dj6q888b8oo8xvcqlr0kq0hvs
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_nombre
  ADD CONSTRAINT fk_t7128xjpc91bo4al0t85hwh08
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_persona
  ADD CONSTRAINT fk_fpy4cmhn07a6dkgvxeckvirmj
FOREIGN KEY (response_id)
REFERENCES bdc_response (id);

ALTER TABLE bdc_reporte_pdf
  ADD CONSTRAINT fk_q4cbn6nr78gv8cmsg3vtb8075
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);


ALTER TABLE bdc_resumen_reporte
  ADD CONSTRAINT fk_avt6q7alfib8bexih42cyddwu
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_score_buro_credito
  ADD CONSTRAINT fk_2sbg19hippotmcl0k6icqrdhk
FOREIGN KEY (bdc_persona_id)
REFERENCES bdc_persona (id);

ALTER TABLE bdc_codigo_razon_item
  ADD CONSTRAINT fk_2tbg19hippotmcl0k6icqrdhk
FOREIGN KEY (score_buro_credito_id)
REFERENCES bdc_score_buro_credito (id);

ALTER TABLE bdc_response
  ADD CONSTRAINT fk_fpy4cmhn07a6dkgtxeckvirmj
FOREIGN KEY (credit_id)
REFERENCES credit (id);

