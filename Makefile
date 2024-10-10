all: $(TXT_FILES) $(DATA_FILES)

# List of species fasta file names
FASTA_FILES =	Aegilops_tauschii.Aet_v4.0.dna.toplevel.fa.gz \
		Actinidia_chinensis.Red5_PS1_1.69.0.dna.toplevel.fa.gz \
		Amborella_trichopoda.AMTR1.0.dna.toplevel.fa.gz \
		Arabidopsis_thaliana.TAIR10.dna.toplevel.fa.gz \
		Arabidopsis_halleri.Ahal2.2.dna.toplevel.fa.gz \
		Arabidopsis_lyrata.v.1.0.dna.toplevel.fa.gz \
		Arabis_alpina.A_alpina_V4.dna.toplevel.fa.gz \
		Asparagus_officinalis.Aspof.V1.dna.toplevel.fa.gz \
		Beta_vulgaris.RefBeet-1.2.2.dna.toplevel.fa.gz \
		Brachypodium_distachyon.Brachypodium_distachyon_v3.0.dna.toplevel.fa.gz \
		Brassica_napus.AST_PRJEB5043_v1.dna.toplevel.fa.gz \
		Brassica_oleracea.BOL.dna.toplevel.fa.gz \
		Brassica_rapa.Brapa_1.0.dna.toplevel.fa.gz \
		Brassica_rapa_ro18.SCU_BraROA_2.3.dna.toplevel.fa.gz \
		Camelina_sativa.Cs.dna.toplevel.fa.gz \
		Cannabis_sativa_female.cs10.dna.toplevel.fa.gz \
		Capsicum_annuum.ASM51225v2.dna.toplevel.fa.gz \
		Chara_braunii.Cbr_1.0.dna.toplevel.fa.gz \
		Chenopodium_quinoa.ASM168347v1.dna.toplevel.fa.gz \
		Chlamydomonas_reinhardtii.Chlamydomonas_reinhardtii_v5.5.dna.toplevel.fa.gz \
		Chondrus_crispus.ASM35022v2.dna.toplevel.fa.gz \
		Citrullus_lanatus.Cla97_v1.dna.toplevel.fa.gz \
		Citrus_clementina.Citrus_clementina_v1.0.dna.toplevel.fa.gz \
		Coffea_canephora.AUK_PRJEB4211_v1.dna.toplevel.fa.gz \
		Corchorus_capsularis.CCACVL1_1.0.dna.toplevel.fa.gz \
		Corylus_avellana.CavTom2PMs-1.0.dna.toplevel.fa.gz \
		Cucumis_melo.Melonv4.dna.toplevel.fa.gz \
		Cucumis_sativus.ASM407v2.dna.toplevel.fa.gz \
		Cyanidioschyzon_merolae.ASM9120v1.dna.toplevel.fa.gz \
		Cynara_cardunculus.CcrdV1.dna.toplevel.fa.gz \
		Daucus_carota.ASM162521v1.dna.toplevel.fa.gz \
		Dioscorea_rotundata.TDr96_F1_v2_PseudoChromosome.dna.toplevel.fa.gz \
		Eragrostis_curvula.CERZOS_E.curvula1.0.dna.toplevel.fa.gz \
		Eragrostis_tef.ASM97063v1.dna.toplevel.fa.gz \
		Eucalyptus_grandis.Egrandis1_0.dna.toplevel.fa.gz \
		Eutrema_salsugineum.Eutsalg1_0.dna.toplevel.fa.gz \
		Ficus_carica.UNIPI_FiCari_1.0.dna.toplevel.fa.gz \
		Galdieria_sulphuraria.ASM34128v1.dna.toplevel.fa.gz \
		Glycine_max.Glycine_max_v2.1.dna.toplevel.fa.gz \
		Gossypium_raimondii.Graimondii2_0_v6.dna.toplevel.fa.gz \
		Helianthus_annuus.HanXRQr2.0-SUNRISE.dna.toplevel.fa.gz \
		Hordeum_vulgare.MorexV3_pseudomolecules_assembly.dna.toplevel.fa.gz \
		Hordeum_vulgare_goldenpromise.GPv1.dna.toplevel.fa.gz \
		Hordeum_vulgare_tritex.Morex_V2_scaf.dna.toplevel.fa.gz \
		Ipomoea_triloba.ASM357664v1.dna.toplevel.fa.gz \
		Juglans_regia.Walnut_2.0.dna.toplevel.fa.gz \
		Kalanchoe_fedtschenkoi.K_fedtschenkoi_M2_v1.dna.toplevel.fa.gz \
		Lactuca_sativa.Lsat_Salinas_v7.dna.toplevel.fa.gz \
		Leersia_perrieri.Lperr_V1.4.dna.toplevel.fa.gz \
		Lupinus_angustifolius.LupAngTanjil_v1.0.dna.toplevel.fa.gz \
		Malus_domestica_golden.ASM211411v1.dna.toplevel.fa.gz \
		Manihot_esculenta.Manihot_esculenta_v6.dna.toplevel.fa.gz \
		Marchantia_polymorpha.Marchanta_polymorpha_v1.dna.toplevel.fa.gz \
		Medicago_truncatula.MedtrA17_4.0.dna.toplevel.fa.gz \
		Musa_acuminata.musa_acuminata_v2.dna.toplevel.fa.gz \
		Nicotiana_attenuata.NIATTr2.dna.toplevel.fa.gz \
		Nymphaea_colorata.ASM883128v1.dna.toplevel.fa.gz \
		Olea_europaea.OLEA9.dna.toplevel.fa.gz \
		Olea_europaea_sylvestris.O_europaea_v1.dna.toplevel.fa.gz \
		Oryza_barthii.O.barthii_v1.dna.toplevel.fa.gz \
		Oryza_brachyantha.Oryza_brachyantha.v1.4b.dna.toplevel.fa.gz \
		Oryza_glaberrima.Oryza_glaberrima_V1.dna.toplevel.fa.gz \
		Oryza_glumipatula.Oryza_glumaepatula_v1.5.dna.toplevel.fa.gz \
		Oryza_indica.ASM465v1.dna.toplevel.fa.gz \
		Oryza_longistaminata.O_longistaminata_v1.0.dna.toplevel.fa.gz \
		Oryza_meridionalis.Oryza_meridionalis_v1.3.dna.toplevel.fa.gz \
		Oryza_nivara.Oryza_nivara_v1.0.dna.toplevel.fa.gz \
		Oryza_punctata.Oryza_punctata_v1.2.dna.toplevel.fa.gz \
		Oryza_rufipogon.OR_W1943.dna.toplevel.fa.gz \
		Oryza_sativa.IRGSP-1.0.dna.toplevel.fa.gz \
		Ostreococcus_lucimarinus.ASM9206v1.dna.toplevel.fa.gz \
		Panicum_hallii.PhalliiHAL_v2.1.dna.toplevel.fa.gz \
		Panicum_hallii_fil2.PHallii_v3.1.dna.toplevel.fa.gz \
		Papaver_somniferum.ASM357369v1.dna.toplevel.fa.gz \
		Phaseolus_vulgaris.PhaVulg1_0.dna.toplevel.fa.gz \
		Physcomitrium_patens.Phypa_V3.dna.toplevel.fa.gz \
		Pistacia_vera.PisVer_v2.dna.toplevel.fa.gz \
		Populus_trichocarpa.Pop_tri_v3.dna.toplevel.fa.gz \
		Prunus_avium.PAV_r1.0.dna.toplevel.fa.gz \
		Prunus_dulcis.ALMONDv2.dna.toplevel.fa.gz \
		Prunus_persica.Prunus_persica_NCBIv2.dna.toplevel.fa.gz \
		Quercus_lobata.ValleyOak3.0.dna.toplevel.fa.gz \
		Rosa_chinensis.RchiOBHm-V2.dna.toplevel.fa.gz  \
		Saccharum_spontaneum.Sspon.HiC_chr_asm.dna.toplevel.fa.gz \
		Selaginella_moellendorffii.v1.0.dna.toplevel.fa.gz \
		Sesamum_indicum.S_indicum_v1.0.dna.toplevel.fa.gz \
		Setaria_italica.Setaria_italica_v2.0.dna.toplevel.fa.gz \
		Setaria_viridis.Setaria_viridis_v2.0.dna.toplevel.fa.gz \
		Solanum_lycopersicum.SL3.0.dna.toplevel.fa.gz \
		Solanum_tuberosum.SolTub_3.0.dna.toplevel.fa.gz \
		Sorghum_bicolor.Sorghum_bicolor_NCBIv3.dna.toplevel.fa.gz \
		Theobroma_cacao.Theobroma_cacao_20110822.dna.toplevel.fa.gz \
		Theobroma_cacao_criollo.Criollo_cocoa_genome_V2.dna.toplevel.fa.gz \
		Trifolium_pratense.Trpr.dna.toplevel.fa.gz \
		Triticum_aestivum.IWGSC.dna.toplevel.fa.gz \
		Triticum_aestivum_arinalrfor.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_cadenza.EIv1.1.dna.toplevel.fa.gz \
		Triticum_aestivum_claire.EIv1.1.dna.toplevel.fa.gz \
		Triticum_aestivum_jagger.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_julius.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_lancer.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_landmark.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_mace.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_mattis.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_norin61.PGSBv2.1.dna.toplevel.fa.gz \
		Triticum_aestivum_paragon.EIv1.1.dna.toplevel.fa.gz \
		Triticum_aestivum_robigus.EIv1.1.dna.toplevel.fa.gz \
		Triticum_aestivum_stanley.PGSBv2.2.dna.toplevel.fa.gz \
		Triticum_aestivum_weebil.WeebilV1.dna.toplevel.fa.gz \
		Triticum_dicoccoides.WEWSeq_v.1.0.dna.toplevel.fa.gz \
		Triticum_spelta.PGSBv2.0.dna.toplevel.fa.gz \
		Triticum_turgidum.Svevo.v1.dna.toplevel.fa.gz \
		Triticum_urartu.ASM34745v1.dna.toplevel.fa.gz \
		Vigna_angularis.Vigan1.1.dna.toplevel.fa.gz \
		Vigna_radiata.Vradiata_ver6.dna.toplevel.fa.gz \
		Vitis_vinifera.12X.dna.toplevel.fa.gz \
		Zea_mays.Zm-B73-REFERENCE-NAM-5.0.dna.toplevel.fa.gz


GTF_FILES =    Actinidia_chinensis.Red5_PS1_1.69.0.52.gtf.gz \
	       Aegilops_tauschii.Aet_v4.0.52.gtf.gz \
	       Amborella_trichopoda.AMTR1.0.52.gtf.gz	\
	       Ananas_comosus.F153.52.gtf.gz	\
	       Arabidopsis_halleri.Ahal2.2.52.gtf.gz	\
	       Arabidopsis_lyrata.v.1.0.52.gtf.gz \
	       Arabidopsis_thaliana.TAIR10.52.gtf.gz	\
               Arabis_alpina.A_alpina_V4.52.gtf.gz \
	       Asparagus_officinalis.Aspof.V1.52.gtf.gz \
	       Beta_vulgaris.RefBeet-1.2.2.52.gtf.gz \
	       Brachypodium_distachyon.Brachypodium_distachyon_v3.0.52.gtf.gz \
	       Brassica_napus.AST_PRJEB5043_v1.52.gtf.gz \
	       Brassica_oleracea.BOL.52.gtf.gz \
	       Brassica_rapa.Brapa_1.0.52.gtf.gz \
	       Brassica_rapa_ro18.SCU_BraROA_2.3.52.gtf.gz \
	       Camelina_sativa.Cs.52.gtf.gz \
	       Cannabis_sativa_female.cs10.52.gtf.gz \
	       Capsicum_annuum.ASM51225v2.52.gtf.gz \
	       Chara_braunii.Cbr_1.0.52.gtf.gz	 \
	       Chenopodium_quinoa.ASM168347v1.52.gtf.gz \
	       Chlamydomonas_reinhardtii.Chlamydomonas_reinhardtii_v5.5.52.gtf.gz \
	       Chondrus_crispus.ASM35022v2.52.gtf.gz \
	       Citrullus_lanatus.Cla97_v1.52.gtf.gz \
	       Citrus_clementina.Citrus_clementina_v1.0.52.gtf.gz\
	       Coffea_canephora.AUK_PRJEB4211_v1.52.gtf.gz \
	       Corchorus_capsularis.CCACVL1_1.0.52.gtf.gz \
	       Corylus_avellana.CavTom2PMs-1.0.52.gtf.gz  \
	       Cucumis_melo.Melonv4.52.gtf.gz  \
	       Cucumis_sativus.ASM407v2.52.gtf.gz  \
	       Cyanidioschyzon_merolae.ASM9120v1.52.gtf.gz	\
	       Cynara_cardunculus.CcrdV1.52.gtf.gz	\
	       Daucus_carota.ASM162521v1.52.gtf.gz \
	       Dioscorea_rotundata.TDr96_F1_v2_PseudoChromosome.52.gtf.gz \
	       Eragrostis_curvula.CERZOS_E.curvula1.0.52.gtf.gz  \
	       Eragrostis_tef.ASM97063v1.52.gtf.gz	\
	       Eucalyptus_grandis.Egrandis1_0.52.gtf.gz	  \
	       Eutrema_salsugineum.Eutsalg1_0.52.gtf.gz	 \
	       Ficus_carica.UNIPI_FiCari_1.0.52.gtf.gz \
	       Galdieria_sulphuraria.ASM34128v1.52.gtf.gz \
	       Glycine_max.Glycine_max_v2.1.52.gtf.gz \
	       Gossypium_raimondii.Graimondii2_0_v6.52.gtf.gz  \
	       Helianthus_annuus.HanXRQr2.0-SUNRISE.52.gtf.gz   \
	       Hordeum_vulgare.MorexV3_pseudomolecules_assembly.52.gtf.gz  \
	       Hordeum_vulgare_tritex.Morex_V2_scaf.52.gtf.gz	\
	       Ipomoea_triloba.ASM357664v1.52.gtf.gz	\
	       Juglans_regia.Walnut_2.0.52.gtf.gz  \
	       Kalanchoe_fedtschenkoi.K_fedtschenkoi_M2_v1.52.gtf.gz	\
	       Lactuca_sativa.Lsat_Salinas_v7.52.gtf.gz  \
	       Leersia_perrieri.Lperr_V1.4.52.gtf.gz	\
	       Lupinus_angustifolius.LupAngTanjil_v1.0.52.gtf.gz  \
	       Manihot_esculenta.Manihot_esculenta_v6.52.gtf.gz \
	       Marchantia_polymorpha.Marchanta_polymorpha_v1.52.gtf.gz \
	       Medicago_truncatula.MedtrA17_4.0.52.gtf.gz  \
	       Musa_acuminata.Musa_acuminata_v2.52.gtf.gz \
	       Nicotiana_attenuata.NIATTr2.52.gtf.gz   \
	       Nymphaea_colorata.ASM883128v1.52.gtf.gz  \
	       Malus_domestica_golden.ASM211411v1.52.gtf.gz   \
	       Olea_europaea.OLEA9.52.gtf.gz  \
	       Olea_europaea_sylvestris.O_europaea_v1.52.gtf.gz  \
	       Oryza_barthii.O.barthii_v1.52.gtf.gz	\
	       Oryza_brachyantha.Oryza_brachyantha.v1.4b.52.gtf.gz\
	       Oryza_glaberrima.Oryza_glaberrima_V1.52.gtf.gz\
	       Oryza_glumipatula.Oryza_glumaepatula_v1.5.52.gtf.gz\
	       Oryza_indica.ASM465v1.52.gtf.gz\
	       Oryza_longistaminata.O_longistaminata_v1.0.52.gtf.gz	\
	       Oryza_meridionalis.Oryza_meridionalis_v1.3.52.gtf.gz\
	       Oryza_nivara.Oryza_nivara_v1.0.52.gtf.gz\
	       Oryza_punctata.Oryza_punctata_v1.2.52.gtf.gz	\
	       Oryza_rufipogon.OR_W1943.52.gtf.gz	\
	       Oryza_sativa.IRGSP-1.0.52.gtf.gz	\
	       Ostreococcus_lucimarinus.ASM9206v1.52.gtf.gz	\
	       Panicum_hallii.PhalliiHAL_v2.1.52.gtf.gz	\
	       Panicum_hallii_fil2.PHallii_v3.1.52.gtf.gz	\
	       Physcomitrium_patens.Phypa_V3.52.gtf.gz  \
	       Pistacia_vera.PisVer_v2.52.gtf.gz\
	       Populus_trichocarpa.Pop_tri_v3.52.gtf.gz\
	       Prunus_avium.PAV_r1.0.52.gtf.gz	 \
	       Prunus_dulcis.ALMONDv2.52.gtf.gz	 \
	       Prunus_persica.Prunus_persica_NCBIv2.52.gtf.gz   \
	       Quercus_lobata.ValleyOak3.0.52.gtf.gz   \
	       Rosa_chinensis.RchiOBHm-V2.52.gtf.gz  \
	       Saccharum_spontaneum.Sspon.HiC_chr_asm.52.gtf.gz  \
	       Selaginella_moellendorffii.v1.0.52.gtf.gz   \
	       Sesamum_indicum.S_indicum_v1.0.52.gtf.gz    \
	       Setaria_italica.Setaria_italica_v2.0.52.gtf.gz  \
	       Setaria_viridis.Setaria_viridis_v2.0.52.gtf.gz   \
	       Solanum_lycopersicum.SL3.0.52.gtf.gz   \
	       Solanum_tuberosum.SolTub_3.0.52.gtf.gz   \
	       Solanum_tuberosum_rh8903916.ASM1418947v1.52.gtf.gz	\
	       Sorghum_bicolor.Sorghum_bicolor_NCBIv3.52.gtf.gz  \
	       Theobroma_cacao.Theobroma_cacao_20110822.52.gtf.gz  \
	       Theobroma_cacao_criollo.Criollo_cocoa_genome_V2.52.gtf.gz \
	       Trifolium_pratense.Trpr.52.gtf.gz \
	       Triticum_aestivum.IWGSC.52.gtf.gz \
	       Triticum_aestivum_arinalrfor.PGSBv2.1.52.gtf.gz   \
	       Triticum_aestivum_cadenza.EIv1.1.52.gtf.gz \
	       Triticum_aestivum_claire.EIv1.1.52.gtf.gz \
	       Triticum_aestivum_jagger.PGSBv2.1.52.gtf.gz  \
	       Triticum_aestivum_julius.PGSBv2.1.52.gtf.gz   \
	       Triticum_aestivum_lancer.PGSBv2.1.52.gtf.gz   \
	       Triticum_aestivum_landmark.PGSBv2.1.52.gtf.gz   \
	       Triticum_aestivum_mace.PGSBv2.1.52.gtf.gz  \
	       Triticum_aestivum_mattis.PGSBv2.1.52.gtf.gz  \
	       Triticum_aestivum_norin61.PGSBv2.1.52.gtf.gz  \
	       Triticum_aestivum_paragon.EIv1.1.52.gtf.gz	\
	       Triticum_aestivum_robigus.EIv1.1.52.gtf.gz  \
	       Triticum_aestivum_stanley.PGSBv2.2.52.gtf.gz \
	       Triticum_aestivum_weebil.WeebilV1.52.gtf.gz  \
	       Triticum_dicoccoides.WEWSeq_v.1.0.52.gtf.gz  \
	       Triticum_spelta.PGSBv2.0.52.gtf.gz	\
	       Triticum_turgidum.Svevo.v1.52.gtf.gz	\
	       Triticum_urartu.ASM34745v1.52.gtf.gz	\
	       Vigna_angularis.Vigan1.1.52.gtf.gz      \
	       Vigna_radiata.Vradiata_ver6.52.gtf.gz    \
	       Vitis_vinifera.12X.52.gtf.gz    \
	       Zea_mays.Zm-B73-REFERENCE-NAM-5.0.52.gtf.gz  \

# Generate species names from file names
SPECIES_NAMES := $(foreach file,$(GTF_FILES),$(shell echo $(firstword $(subst ., ,$(file))) | tr '[:upper:]' '[:lower:]'))

# Main all target
all: $(TXT_FILES) $(DATA_FILES)

# Create folders for each species
.PHONY: create_species_folders
create_species_folders: $(SPECIES_NAMES)
$(SPECIES_NAMES):
	 mkdir -p $@

# Generate URLs and download files
.PHONY: download_gtf_files
download_files: download_gtf_files download_fasta_files

download_gtf_files:
	@for file in $(GTF_FILES); do \
        	species_name=$$(echo $$file | cut -d. -f1 | tr '[:upper:]' '[:lower:]'); \
        	url="http://ftp.ensemblgenomes.org/pub/release-52/plants/gtf/$$species_name/$$file"; \
        	wget $$url -O $$species_name/$$file; \
    	done

.PHONY: download_fasta_files
download_fasta_files:
	@for file in $(FASTA_FILES); do \
        	species_name=$$(echo $$file | cut -d. -f1 | tr '[:upper:]' '[:lower:]'); \
        	url="http://ftp.ensemblgenomes.org/pub/release-52/plants/fasta/$$species_name/dna/$$file"; \
        	wget $$url -O $$species_name/$$file; \
    	done

# Generate a list of corresponding txt file for each of the gtf 
SUBDIRECTORIES := $(wildcard */)

# Get a list of all *.gtf.gz files in all subdirectories
GTF_FILES := $(foreach dir,$(SUBDIRECTORIES),$(wildcard $(dir)*.gtf.gz))

TXT_FILES := $(patsubst %.gtf.gz, %_1.txt, $(GTF_FILES))

%_1.txt: %.gtf.gz
	python collate_transcript_info.py $< > $@

# Get a list of all *.txt files in all subdirectories
#IN_TXT_FILES := $(foreach dir,$(SUBDIRECTORIES),$(wildcard $(dir)*.txt))
FASTA_FILES := $(foreach dir,$(SUBDIRECTORIES),$(wildcard $(dir)*.fa.gz))

DATA_FILES := $(patsubst %.dna.toplevel.fa.gz, %_1.json, $(FASTA_FILES))

%_1.json: %.dna.toplevel.fa.gz %.52_1.txt 
	# Extract species name from the file path
	species_name=$(shell echo $* | cut -d'/' -f1 | tr '[:upper:]' '[:lower:]'); \
	# Run the Python script with species as an argument
	python get_sequence.py $(word 1,$^) $(word 2,$^) $$species_name > $@

# Concatenate all the JSON files into a single JSON file
combined_data.json: $(DATA_FILES)
	@echo "[" > combined_data.json  # Start the combined JSON file with an opening bracket
	@for file in $(DATA_FILES); do \
	    cat $$file >> combined_data.json; \
	    echo "," >> combined_data.json; \
	done
	@sed -i '$$ s/,$$/]/' combined_data.json  # Replace the last comma with a closing bracket

# Split combined_data.json into train.json and test.json
train.json test.json: combined_data.json
	@echo "Splitting combined_data.json into train.json and test.json"
	# Use jq to shuffle and split the data into train (80%) and test (20%)
	@total_count=$$(jq length combined_data.json); \
	train_count=$$((total_count * 80 / 100)); \
	jq ".[0:$$train_count]" combined_data.json > train.json; \
	jq ".[$$train_count:]" combined_data.json > test.json

# Create individual files from train.json
train_data: train.json
	@echo "Formatting train.json into individual files in train_data directory"
	# Run the Python script to split train.json into individual files
	python split_data.py $< $@

test_data: test.json
	@echo "Formatting train.json into individual files in train_data directory"
	# Run the Python script to split train.json into individual files
	python split_data.py $< $@

# Create identifiers
train_identifiers.txt: train.json
	python get_identifiers.py train.json

test_identifiers.txt: test.json
	python get_identifiers.py test.json

# Create buckets for the data from train_data - for Memory Efficiency, and Faster Access
define create_buckets
	@mkdir -p $(BUCKETS_DIR)/$@
	python create_buckets.py $(word 1,$^) $(word 2,$^) $(BUCKETS_DIR)/$@
endef

train_buckets: train_data train_identifiers.txt
	$(call create_buckets, train)

test_buckets: test_data test_identifiers.txt
	$(call create_buckets, test)

# Clean up
.PHONY: clean
clean:
	rm -rf $(OUTPUT_DIR) *.json
