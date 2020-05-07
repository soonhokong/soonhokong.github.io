include ../nra_ode.mk

all: bcf_4m_bad bcf_4m_good bcf_4m_stim_bad bcf_4m_stim_good bcf_7m_good bcf_7m_stim_tsi_us_good bcf_to1_bad bcf_to2_bad bcf_tso1_tso2_bad \
	fk_4m_stim_bad fk_4m_stim_good fk_7m_stim_tsi_us_bad

bcf_4m_bad: bcf_4m_bad.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_4m_good: bcf_4m_good.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_4m_stim_bad: bcf_4m_stim_bad.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_4m_stim_good: bcf_4m_stim_good.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_7m_good: bcf_7m_good.drh
	time $(DREACH) -k 6 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_to1_bad: bcf_to1_bad.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_to2_bad: bcf_to2_bad.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

bcf_tso1_tso2_bad: bcf_tso1_tso2_bad.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

fk_4m_stim_bad: fk_4m_stim_bad.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

fk_4m_stim_good: fk_4m_stim_good.drh
	time $(DREACH) -k 3 $< --precision=0.0001 --visualize $(DREACH_OPT)

fk_7m_stim_tsi_us_bad: fk_7m_stim_tsi_us_bad.drh
	time $(DREACH) -k 6 $< --precision=0.0001 --visualize $(DREACH_OPT)
