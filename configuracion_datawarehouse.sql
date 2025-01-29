CREATE DATABASE nhanes;
USE nhanes;

-- Crear tablas
-- Demografico
CREATE TABLE demografico (
	id_demografico INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente	INT,
    año	INT,
	genero INT,
	edad INT,
	raza_etnicidad INT,
	pais_nacimiento	INT,
	estado_civil INT,
	ingreso_familiar_anual INT,
	estado_embarazo INT,
    nivel_educativo INT
);

-- Dieta
CREATE TABLE vitaminas (
    id_vitaminas INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente	INT,
    año INT,
    tiamina_vit_B1 FLOAT,
    riboflavina_vit_B2 FLOAT,
    niacina_vit_B3 FLOAT,
    vit_B6 FLOAT,
    folato_vit_B9 FLOAT,
    vit_B12 FLOAT,
    vit_C FLOAT
);

CREATE TABLE minerales (
    id_minerales INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente	INT,
    año INT,
    calcio FLOAT,
    fosforo FLOAT,
    magnesio FLOAT,
    hierro FLOAT,
    zinc FLOAT,
    cobre FLOAT,
    sodio FLOAT,
    potasio FLOAT,
    selenio FLOAT
);

CREATE TABLE otros (
    id_otros INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente	INT,
    año INT,
	energia	FLOAT,
	proteinas FLOAT,
	carbohidratos FLOAT,
	total_grasas FLOAT,
    cafeina FLOAT,
    teobromina FLOAT,
    alcohol FLOAT
);

CREATE TABLE ac_grasos (
    id_ac_grasos INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente	INT,
    año INT,
    ac_grasos_saturados FLOAT,
    ac_grasos_monoinsaturados FLOAT,
    ac_grasos_poliinsaturados FLOAT,
    ac_butanoico FLOAT,
    ac_hexanoico FLOAT,
    ac_octanoico FLOAT,
    ac_decanoico FLOAT,
    ac_dodecanoico FLOAT,
    ac_tetradecanoico FLOAT,
    ac_hexadecanoico FLOAT,
    ac_octadecanoico FLOAT,
    ac_hexadecenoico FLOAT,
    ac_octadecenoico FLOAT,
    ac_octadecadienoico FLOAT,
    ac_octadecatrienoico FLOAT,
    ac_octadecatetraenoico FLOAT,
    ac_eicosatetraenoico FLOAT,
    ac_eicosapentaenoico FLOAT,
    ac_docosapentaenoico FLOAT,
    ac_docosahexaenoico FLOAT
);

CREATE TABLE dieta (
	id_dieta INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_vitaminas INT,
    id_minerales INT,
    id_otros INT,
    id_ac_grasos INT,
    año INT,
	FOREIGN KEY (id_vitaminas) REFERENCES vitaminas(id_vitaminas),
    FOREIGN KEY (id_minerales) REFERENCES minerales(id_minerales),
	FOREIGN KEY (id_otros) REFERENCES otros(id_otros),
    FOREIGN KEY (id_ac_grasos) REFERENCES ac_grasos(id_ac_grasos)
);
-- Laboratorio
CREATE TABLE orina (
    id_orina INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    creatinina FLOAT,
    bario FLOAT,
    berilio FLOAT,
    cadmio FLOAT,
    cobalto FLOAT,
    cesio FLOAT,
    molibdeno FLOAT,
    plomo FLOAT,
    platino FLOAT,
    antimonio FLOAT,
    talio FLOAT,
    tungsteno FLOAT,
    ftalato_mono_n_butilo FLOAT,
    ftalato_monociclohexilo FLOAT,
    ftalato_monoetilo FLOAT,
    ftalato_mono_2_etil_hexilo FLOAT,
    ftalato_monoisononilo FLOAT,
    ftalato_mono_n_octilo FLOAT,
    ftalato_monobencilo FLOAT,
    daidzeina FLOAT,
    o_desmetilangolensina FLOAT,
    equol FLOAT,
    enterodiol FLOAT,
    enterolactona FLOAT,
    genisteina FLOAT,
    fluoranteno FLOAT
);

CREATE TABLE sangre (
    id_sangre INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    trigliceridos FLOAT,
    colesterol_ldl FLOAT,
    colesterol_total FLOAT,
    colesterol_hdl FLOAT,
    peptido_c FLOAT,
    insulina FLOAT,
    glicohemoglobina_porcentaje FLOAT,
    albumina FLOAT,
    alt_superior_inferior FLOAT,
    ast_superior_inferior FLOAT,
    fosfatasa_alcalina FLOAT,
    nitrogeno_ureico FLOAT,
    calcio_total FLOAT,
    bicarbonato FLOAT,
    ggt_superior_inferior FLOAT,
    glucosa FLOAT,
    hierro FLOAT,
    ldh_bajo_bajo FLOAT,
    fosforo FLOAT,
    bilirrubina_total FLOAT,
    proteina_total FLOAT,
    acido_urico FLOAT,
    sodio FLOAT,
    potasio FLOAT,
    cloruro FLOAT,
    osmolalidad FLOAT,
    globulina FLOAT,
    hormona_foliculo_estimulante FLOAT,
    hormona_luteinizante FLOAT,
    proteina_c_reactiva FLOAT,
    helicobacter_pylori FLOAT,
    fibrinogeno FLOAT,
    fosfatasa_alcalina_osea FLOAT
);

CREATE TABLE laboratorio (
	id_laboratorio INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_orina INT,
    id_sangre INT,
	FOREIGN KEY (id_orina) REFERENCES orina(id_orina),
    FOREIGN KEY (id_sangre) REFERENCES sangre(id_sangre)
);

-- examen
CREATE TABLE medidas_corporales (
    id_medidas_corporales INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    pulso_60s INT,
    prom_presion_arterial_sistolica FLOAT,
    prom_presion_arterial_diastolica FLOAT,
    peso_kg FLOAT,
    altura_pie_cm FLOAT,
    longitud_parte_superior_pierna_cm FLOAT,
    circunferencia_pantorrilla_cm FLOAT,
    circunferencia_brazo_cm FLOAT,
    circunferencia_cintura_cm FLOAT,
    circunferencia_muslo_cm FLOAT,
    pliegue_cutaneo_triceps_mm FLOAT,
    pliegue_cutaneo_subescapular_mm FLOAT
);


CREATE TABLE absrayosx_masagrasa (
	id_absrayosx_masagrasa INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    cabeza_g FLOAT,
    brazo_izquierdo_g FLOAT,
    brazo_derecho_g FLOAT,
    pierna_izquierda_g FLOAT,
    pierna_derecha_g FLOAT,
    tronco_g FLOAT,
    subtotal_g FLOAT
);

CREATE TABLE absrayosx_masamagra (
	id_absrayosx_masamagra INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    cabeza_g FLOAT,
    brazo_izquierdo_g FLOAT,
    brazo_derecho_g FLOAT,
    pierna_izquierda_g FLOAT,
    pierna_derecha_g FLOAT,
    tronco_g FLOAT,
    subtotal_g FLOAT
);

CREATE TABLE absrayosx_porcentajegrasa (
	id_absrayosx_porcentajegrasa INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    cabeza FLOAT,
    brazo_izquierdo FLOAT,
    brazo_derecho FLOAT,
    pierna_izquierda FLOAT,
    pierna_derecha FLOAT,
    tronco FLOAT,
    subtotal FLOAT
);

CREATE TABLE absrayosx_densidadosea (
	id_absrayosx_densidadosea INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    cabeza FLOAT,
    brazo_izquierdo FLOAT,
    brazo_derecho FLOAT,
    pierna_izquierda FLOAT,
    pierna_derecha FLOAT,
    costillas_izquierdas FLOAT,
    costillas_derechas FLOAT,
    columna_toracica FLOAT,
    columna_lumbar FLOAT,
    pelvis FLOAT,
    tronco FLOAT,
    subtotal FLOAT
);

CREATE TABLE examen (
	id_examen INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_medidas_corporales INT,
    id_absrayosx_masamagra INT,
    id_absrayosx_masagrasa INT,
    id_absrayosx_porcentajegrasa INT,
    id_absrayosx_densidadosea INT,
    FOREIGN KEY (id_medidas_corporales) REFERENCES medidas_corporales(id_medidas_corporales),
    FOREIGN KEY (id_absrayosx_masamagra) REFERENCES absrayosx_masamagra(id_absrayosx_masamagra),
    FOREIGN KEY (id_absrayosx_masagrasa) REFERENCES absrayosx_masagrasa(id_absrayosx_masagrasa),
    FOREIGN KEY (id_absrayosx_porcentajegrasa) REFERENCES absrayosx_porcentajegrasa(id_absrayosx_porcentajegrasa),
    FOREIGN KEY (id_absrayosx_densidadosea) REFERENCES absrayosx_densidadosea(id_absrayosx_densidadosea)
);

-- cuestionario
CREATE TABLE cuestionario (
	id_cuestionario INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    año INT,
    salud_bucal INT,
    tabaquismo INT,
    diabetes INT,
    actividad INT,
    drogas INT
);

-- visita medica
CREATE TABLE visita_medica (
	id_visita_medica INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_demografico INT,
    id_dieta INT,
    id_examen INT,
    id_laboratorio INT,
    id_cuestionario INT,
    cant_visitas INT,
    año INT,
    FOREIGN KEY (id_demografico) REFERENCES demografico(id_demografico),
    FOREIGN KEY (id_dieta) REFERENCES dieta(id_dieta),
    FOREIGN KEY (id_examen) REFERENCES examen(id_examen),
    FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id_laboratorio),
    FOREIGN KEY (id_cuestionario) REFERENCES cuestionario(id_cuestionario)    
);

-- ***********************************************
-- Cargar datos
DELIMITER //

CREATE PROCEDURE insdieta()
BEGIN
    START TRANSACTION;

    INSERT INTO dieta (id_paciente, id_vitaminas, id_minerales, id_otros, id_ac_grasos, año)
    SELECT 
        v.id_paciente,
        v.id_vitaminas,
        m.id_minerales,
        o.id_otros,
        ag.id_ac_grasos,
        v.año
    FROM 
        vitaminas v
    INNER JOIN minerales m ON v.id_paciente = m.id_paciente AND v.año = m.año
    INNER JOIN otros o ON v.id_paciente = o.id_paciente AND v.año = o.año
    INNER JOIN ac_grasos ag ON v.id_paciente = ag.id_paciente AND v.año = ag.año;

    COMMIT;
END //

DELIMITER //
CREATE PROCEDURE inslaboratorio()
BEGIN
    START TRANSACTION;

    INSERT INTO laboratorio (id_paciente, id_orina, id_sangre)
    SELECT 
        o.id_paciente,
        o.id_orina,
        s.id_sangre
    FROM 
        orina o
    INNER JOIN sangre s ON o.id_paciente = s.id_paciente AND o.año = s.año;

    COMMIT;
END //

DELIMITER //

CREATE PROCEDURE insexamen()
BEGIN
    START TRANSACTION;

    INSERT INTO examen (
        id_paciente, 
        id_medidas_corporales, 
        id_absrayosx_masamagra, 
        id_absrayosx_masagrasa, 
        id_absrayosx_porcentajegrasa, 
        id_absrayosx_densidadosea
    )
    SELECT 
        mc.id_paciente,
        mc.id_medidas_corporales,
        am.id_absrayosx_masamagra,
        ag.id_absrayosx_masagrasa,
        ap.id_absrayosx_porcentajegrasa,
        ad.id_absrayosx_densidadosea
    FROM 
        medidas_corporales mc
    INNER JOIN absrayosx_masamagra am ON mc.id_paciente = am.id_paciente AND mc.año = am.año
    INNER JOIN absrayosx_masagrasa ag ON mc.id_paciente = ag.id_paciente AND mc.año = ag.año
    INNER JOIN absrayosx_porcentajegrasa ap ON mc.id_paciente = ap.id_paciente AND mc.año = ap.año
    INNER JOIN absrayosx_densidadosea ad ON mc.id_paciente = ad.id_paciente AND mc.año = ad.año;

    COMMIT;
END //

DELIMITER //

CREATE PROCEDURE insvisitamedica()
BEGIN
    START TRANSACTION;

    INSERT INTO visita_medica (
        id_paciente,
        id_demografico,
        id_dieta,
        id_examen,
        id_laboratorio,
        id_cuestionario,
        cant_visitas,
        año
    )
    SELECT 
        d.id_paciente,
        d.id_demografico,
        di.id_dieta,
        e.id_examen,
        l.id_laboratorio,
        c.id_cuestionario,
        COUNT(*) AS cant_visitas,
        d.año
    FROM 
        demografico d
    LEFT JOIN dieta di ON d.id_paciente = di.id_paciente AND d.año = di.año
    LEFT JOIN examen e ON d.id_paciente = e.id_paciente
    LEFT JOIN laboratorio l ON d.id_paciente = l.id_paciente
    LEFT JOIN cuestionario c ON d.id_paciente = c.id_paciente AND d.año = c.año
    GROUP BY 
        d.id_paciente, d.año, d.id_demografico, di.id_dieta, e.id_examen, l.id_laboratorio, c.id_cuestionario;

    COMMIT;
END //


CREATE VIEW vista_completa_nhanes AS
SELECT 
    -- Identificación 
    vm.id_visita_medica,
    vm.id_paciente,
    vm.cant_visitas,
    vm.año AS año_visita,

    -- Demográficos
    COALESCE(d.genero, -1) AS genero,
    COALESCE(d.edad, -1) AS edad,
    COALESCE(d.raza_etnicidad, -1) AS raza_etnicidad,
    COALESCE(d.pais_nacimiento, -1) AS pais_nacimiento,
    COALESCE(d.estado_civil, -1) AS estado_civil,
    COALESCE(d.ingreso_familiar_anual, -1) AS ingreso_familiar_anual,
    COALESCE(d.estado_embarazo, -1) AS estado_embarazo,
    COALESCE(d.nivel_educativo, -1) AS nivel_educativo,

    -- Dieta: Vitaminas
    COALESCE(v.tiamina_vit_B1, -1) AS tiamina_vit_B1,
    COALESCE(v.riboflavina_vit_B2, -1) AS riboflavina_vit_B2,
    COALESCE(v.niacina_vit_B3, -1) AS niacina_vit_B3,
    COALESCE(v.vit_B6, -1) AS vit_B6,
    COALESCE(v.folato_vit_B9, -1) AS folato_vit_B9,
    COALESCE(v.vit_B12, -1) AS vit_B12,
    COALESCE(v.vit_C, -1) AS vit_C,

    -- Dieta: Minerales
    COALESCE(m.calcio, -1) AS calcio,
    COALESCE(m.fosforo, -1) AS fosforo,
    COALESCE(m.magnesio, -1) AS magnesio,
    COALESCE(m.hierro, -1) AS hierro,
    COALESCE(m.zinc, -1) AS zinc,
    COALESCE(m.cobre, -1) AS cobre,
    COALESCE(m.sodio, -1) AS sodio,
    COALESCE(m.potasio, -1) AS potasio,
    COALESCE(m.selenio, -1) AS selenio,

    -- Dieta: Otros nutrientes
    COALESCE(ot.energia, -1) AS energia,
    COALESCE(ot.proteinas, -1) AS proteinas,
    COALESCE(ot.carbohidratos, -1) AS carbohidratos,
    COALESCE(ot.total_grasas, -1) AS total_grasas,
    COALESCE(ot.cafeina, -1) AS cafeina,
    COALESCE(ot.teobromina, -1) AS teobromina,
    COALESCE(ot.alcohol, -1) AS alcohol,

    -- Dieta: Ácidos grasos
    COALESCE(ag.ac_grasos_saturados, -1) AS ac_grasos_saturados,
    COALESCE(ag.ac_grasos_monoinsaturados, -1) AS ac_grasos_monoinsaturados,
    COALESCE(ag.ac_grasos_poliinsaturados, -1) AS ac_grasos_poliinsaturados,
    COALESCE(ag.ac_butanoico, -1) AS ac_butanoico,
    COALESCE(ag.ac_hexanoico, -1) AS ac_hexanoico,
    COALESCE(ag.ac_octanoico, -1) AS ac_octanoico,
    COALESCE(ag.ac_decanoico, -1) AS ac_decanoico,
    COALESCE(ag.ac_dodecanoico, -1) AS ac_dodecanoico,
    COALESCE(ag.ac_tetradecanoico, -1) AS ac_tetradecanoico,
    COALESCE(ag.ac_hexadecanoico, -1) AS ac_hexadecanoico,
    COALESCE(ag.ac_octadecanoico, -1) AS ac_octadecanoico,
    COALESCE(ag.ac_hexadecenoico, -1) AS ac_hexadecenoico,
    COALESCE(ag.ac_octadecenoico, -1) AS ac_octadecenoico,
    COALESCE(ag.ac_octadecadienoico, -1) AS ac_octadecadienoico,
    COALESCE(ag.ac_octadecatrienoico, -1) AS ac_octadecatrienoico,
    COALESCE(ag.ac_octadecatetraenoico, -1) AS ac_octadecatetraenoico,
    COALESCE(ag.ac_eicosatetraenoico, -1) AS ac_eicosatetraenoico,
    COALESCE(ag.ac_eicosapentaenoico, -1) AS ac_eicosapentaenoico,
    COALESCE(ag.ac_docosapentaenoico, -1) AS ac_docosapentaenoico,
    COALESCE(ag.ac_docosahexaenoico, -1) AS ac_docosahexaenoico,

    -- Laboratorio: Orina
    COALESCE(o.creatinina, -1) AS orina_creatinina,
    COALESCE(o.bario, -1) AS orina_bario,
    COALESCE(o.berilio, -1) AS orina_berilio,
    COALESCE(o.cadmio, -1) AS orina_cadmio,
    COALESCE(o.cobalto, -1) AS orina_cobalto,
    COALESCE(o.cesio, -1) AS orina_cesio,
    COALESCE(o.molibdeno, -1) AS orina_molibdeno,
    COALESCE(o.plomo, -1) AS orina_plomo,
    COALESCE(o.platino, -1) AS orina_platino,
    COALESCE(o.antimonio, -1) AS orina_antimonio,
    COALESCE(o.talio, -1) AS orina_talio,
    COALESCE(o.tungsteno, -1) AS orina_tungsteno,
    COALESCE(o.ftalato_mono_n_butilo, -1) AS orina_ftalato_mono_n_butilo,
    COALESCE(o.ftalato_monociclohexilo, -1) AS orina_ftalato_monociclohexilo,
    COALESCE(o.ftalato_monoetilo, -1) AS orina_ftalato_monoetilo,
    COALESCE(o.ftalato_mono_2_etil_hexilo, -1) AS orina_ftalato_mono_2_etil_hexilo,
    COALESCE(o.ftalato_monoisononilo, -1) AS orina_ftalato_monoisononilo,
    COALESCE(o.ftalato_mono_n_octilo, -1) AS orina_ftalato_mono_n_octilo,
    COALESCE(o.ftalato_monobencilo, -1) AS orina_ftalato_monobencilo,
    COALESCE(o.daidzeina, -1) AS orina_daidzeina,
    COALESCE(o.o_desmetilangolensina, -1) AS orina_o_desmetilangolensina,
    COALESCE(o.equol, -1) AS orina_equol,
    COALESCE(o.enterodiol, -1) AS orina_enterodiol,
    COALESCE(o.enterolactona, -1) AS orina_enterolactona,
    COALESCE(o.genisteina, -1) AS orina_genisteina,
    COALESCE(o.fluoranteno, -1) AS orina_fluoranteno,

    -- Laboratorio: Sangre
    COALESCE(s.trigliceridos, -1) AS sangre_trigliceridos,
    COALESCE(s.colesterol_ldl, -1) AS sangre_colesterol_ldl,
    COALESCE(s.colesterol_total, -1) AS sangre_colesterol_total,
    COALESCE(s.colesterol_hdl, -1) AS sangre_colesterol_hdl,
    COALESCE(s.peptido_c, -1) AS sangre_peptido_c,
    COALESCE(s.insulina, -1) AS sangre_insulina,
    COALESCE(s.glicohemoglobina_porcentaje, -1) AS sangre_glicohemoglobina,
    COALESCE(s.albumina, -1) AS sangre_albumina,
    COALESCE(s.alt_superior_inferior, -1) AS sangre_alt_superior_inferior,
    COALESCE(s.ast_superior_inferior, -1) AS sangre_ast_superior_inferior,
    COALESCE(s.fosfatasa_alcalina, -1) AS sangre_fosfatasa_alcalina,
    COALESCE(s.nitrogeno_ureico, -1) AS sangre_nitrogeno_ureico,
    COALESCE(s.calcio_total, -1) AS sangre_calcio_total,
    COALESCE(s.bicarbonato, -1) AS sangre_bicarbonato,
    COALESCE(s.ggt_superior_inferior, -1) AS sangre_ggt_superior_inferior,
    COALESCE(s.glucosa, -1) AS sangre_glucosa,
    COALESCE(s.hierro, -1) AS sangre_hierro,
    COALESCE(s.ldh_bajo_bajo, -1) AS sangre_ldh_bajo,
    COALESCE(s.fosforo, -1) AS sangre_fosforo,
    COALESCE(s.bilirrubina_total, -1) AS sangre_bilirrubina_total,
    COALESCE(s.proteina_total, -1) AS sangre_proteina_total,
    COALESCE(s.acido_urico, -1) AS sangre_acido_urico,
    COALESCE(s.sodio, -1) AS sangre_sodio,
    COALESCE(s.potasio, -1) AS sangre_potasio,
    COALESCE(s.cloruro, -1) AS sangre_cloruro,
    COALESCE(s.osmolalidad, -1) AS sangre_osmolalidad,
    COALESCE(s.globulina, -1) AS sangre_globulina,
    COALESCE(s.hormona_foliculo_estimulante, -1) AS sangre_hormona_foliculo_estimulante,
    COALESCE(s.hormona_luteinizante, -1) AS sangre_hormona_luteinizante,
    COALESCE(s.proteina_c_reactiva, -1) AS sangre_proteina_c_reactiva,
    COALESCE(s.helicobacter_pylori, -1) AS sangre_helicobacter_pylori,
    COALESCE(s.fibrinogeno, -1) AS sangre_fibrinogeno,
    COALESCE(s.fosfatasa_alcalina_osea, -1) AS sangre_fosfatasa_alcalina_osea,

    -- Examen: Medidas corporales
    COALESCE(mc.pulso_60s, -1) AS pulso_60s,
    COALESCE(mc.prom_presion_arterial_sistolica, -1) AS prom_presion_arterial_sistolica,
    COALESCE(mc.prom_presion_arterial_diastolica, -1) AS prom_presion_arterial_diastolica,
    COALESCE(mc.peso_kg, -1) AS peso_kg,
    COALESCE(mc.altura_pie_cm, -1) AS altura_pie_cm,
    COALESCE(mc.longitud_parte_superior_pierna_cm, -1) AS longitud_parte_superior_pierna_cm,
    COALESCE(mc.circunferencia_pantorrilla_cm, -1) AS circunferencia_pantorrilla_cm,
    COALESCE(mc.circunferencia_brazo_cm, -1) AS circunferencia_brazo_cm,
    COALESCE(mc.circunferencia_cintura_cm, -1) AS circunferencia_cintura_cm,
    COALESCE(mc.circunferencia_muslo_cm, -1) AS circunferencia_muslo_cm,
    COALESCE(mc.pliegue_cutaneo_triceps_mm, -1) AS pliegue_cutaneo_triceps_mm,
    COALESCE(mc.pliegue_cutaneo_subescapular_mm, -1) AS pliegue_cutaneo_subescapular_mm,

    -- Absorciometría: Masa grasa
    COALESCE(mgrasa.cabeza_g, -1) AS mgrasa_cabeza,
    COALESCE(mgrasa.brazo_izquierdo_g, -1) AS mgrasa_brazo_izquierdo,
    COALESCE(mgrasa.brazo_derecho_g, -1) AS mgrasa_brazo_derecho,
    COALESCE(mgrasa.tronco_g, -1) AS mgrasa_tronco,
    COALESCE(mgrasa.pierna_izquierda_g, -1) AS mgrasa_pierna_izquierda,
    COALESCE(mgrasa.pierna_derecha_g, -1) AS mgrasa_pierna_derecha,
    COALESCE(mgrasa.subtotal_g, -1) AS mgrasa_total,

    -- Absorciometría: Masa magra
    COALESCE(mmagra.cabeza_g, -1) AS mmagra_cabeza,
    COALESCE(mmagra.brazo_izquierdo_g, -1) AS mmagra_brazo_izquierdo,
    COALESCE(mmagra.brazo_derecho_g, -1) AS mmagra_brazo_derecho,
    COALESCE(mmagra.tronco_g, -1) AS mmagra_tronco,
    COALESCE(mmagra.pierna_izquierda_g, -1) AS mmagra_pierna_izquierda,
    COALESCE(mmagra.pierna_derecha_g, -1) AS mmagra_pierna_derecha,
    COALESCE(mmagra.subtotal_g, -1) AS mmagra_total,

    -- Absorciometría: Porcentaje de grasa
    COALESCE(pgrasa.cabeza, -1) AS pgrasa_cabeza,
    COALESCE(pgrasa.brazo_izquierdo, -1) AS pgrasa_brazo_izquierdo,
    COALESCE(pgrasa.brazo_derecho, -1) AS pgrasa_brazo_derecho,
    COALESCE(pgrasa.tronco, -1) AS pgrasa_tronco,
    COALESCE(pgrasa.pierna_izquierda, -1) AS pgrasa_pierna_izquierda,
    COALESCE(pgrasa.pierna_derecha, -1) AS pgrasa_pierna_derecha,
    COALESCE(pgrasa.subtotal, -1) AS pgrasa_total,

    -- Absorciometría: Densidad ósea
    COALESCE(d_osea.cabeza, -1) AS d_osea_cabeza,
    COALESCE(d_osea.brazo_izquierdo, -1) AS d_osea_brazo_izquierdo,
    COALESCE(d_osea.brazo_derecho, -1) AS d_osea_brazo_derecho,
    COALESCE(d_osea.tronco, -1) AS d_osea_tronco,
    COALESCE(d_osea.pierna_izquierda, -1) AS d_osea_pierna_izquierda,
    COALESCE(d_osea.pierna_derecha, -1) AS d_osea_pierna_derecha,
    COALESCE(d_osea.subtotal, -1) AS d_osea_total,

    -- Cuestionario
    COALESCE(c.salud_bucal, -1) AS salud_bucal,
    COALESCE(c.tabaquismo, -1) AS tabaquismo,
    COALESCE(c.diabetes, -1) AS diabetes,
    COALESCE(c.actividad, -1) AS actividad,
    COALESCE(c.drogas, -1) AS drogas

FROM
    visita_medica vm
    LEFT JOIN demografico d ON vm.id_demografico = d.id_demografico
    LEFT JOIN dieta dt ON vm.id_dieta = dt.id_dieta
    LEFT JOIN vitaminas v ON dt.id_vitaminas = v.id_vitaminas
    LEFT JOIN minerales m ON dt.id_minerales = m.id_minerales
    LEFT JOIN otros ot ON dt.id_otros = ot.id_otros
    LEFT JOIN ac_grasos ag ON dt.id_ac_grasos = ag.id_ac_grasos
    LEFT JOIN laboratorio lab ON vm.id_laboratorio = lab.id_laboratorio
    LEFT JOIN orina o ON lab.id_orina = o.id_orina
    LEFT JOIN sangre s ON lab.id_sangre = s.id_sangre
    LEFT JOIN examen e ON vm.id_examen = e.id_examen
    LEFT JOIN medidas_corporales mc ON e.id_medidas_corporales = mc.id_medidas_corporales
    LEFT JOIN absrayosx_masagrasa mgrasa ON e.id_absrayosx_masagrasa = mgrasa.id_absrayosx_masagrasa
    LEFT JOIN absrayosx_masamagra mmagra ON e.id_absrayosx_masamagra = mmagra.id_absrayosx_masamagra
    LEFT JOIN absrayosx_porcentajegrasa pgrasa ON e.id_absrayosx_porcentajegrasa = pgrasa.id_absrayosx_porcentajegrasa
    LEFT JOIN absrayosx_densidadosea d_osea ON e.id_absrayosx_densidadosea = d_osea.id_absrayosx_densidadosea
    LEFT JOIN cuestionario c ON vm.id_cuestionario = c.id_cuestionario;
