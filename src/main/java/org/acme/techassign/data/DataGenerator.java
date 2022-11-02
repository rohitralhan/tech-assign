package org.acme.techassign.data;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

import javax.enterprise.context.ApplicationScoped;

import org.acme.techassign.domain.TechJobAssign;
import org.acme.techassign.domain.Skill;

@ApplicationScoped
public class DataGenerator {

    private static final AtomicLong NEXT_ID = new AtomicLong(0L);

    private static final HashSet<Skill> SKILLS =
    		new HashSet<Skill>(Arrays.asList(
    				new Skill[] {
    						new Skill("ASSUR - CABLE - Demand - GPON FTTx",5), 
    						new Skill("ASSUR - CABLE - Demand - Fiber",5),
    						new Skill("ASSUR - CABLE - PM - NPP Fiber High",5),
    						new Skill("ASSUR - CABLE - PM - NPP Fiber Low",5),
    						new Skill("ASSUR - CABLE - PM - NPP Fiber Med",5),
    						new Skill("PROV - CABLE - Fiber",5),
    						new Skill("PROV - CABLE - FTTx",5),
    						new Skill("ASSUR - CABLE - Demand - Single/269H/Pattern",3), 
    						new Skill("ASSUR - CO - Frame",3),
    						new Skill("ASSUR - CO - Transport",3),
    						new Skill("ASSUR - FIELD - BUS - FTTB",1),
    						new Skill("ASSUR - FIELD - CON - FTTH",3),
    						new Skill("ASSUR - FIELD - CON - Voice",3),
    						new Skill("PROV - FIELD - BUS - Access and Desktop - FTTB",0),
    						new Skill("PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+", 3),
    						new Skill("PROV - FIELD - CON - Access and Desktop - FTTH", 5),
    						new Skill("ASSUR - FIELD - CON - FTTH",5), 
    						new Skill("ASSUR - FIELD - CON - IPTV - FTTH - MDU",5),
    						new Skill("ASSUR - FIELD - CON - IPTV - FTTH - SFU",5),
    						new Skill("PROV - FIELD - CON - Access and Desktop - FTTH",5),
    						new Skill("PROV - FIELD - CON - Access and Desktop - IPTV - FTTH - MDU",5),
    						new Skill("PROV - FIELD - CON - Access and Desktop - IPTV - FTTH - SFU",5),
    						new Skill("ASSUR - FIELD - RISER - KG10",5),
    						new Skill("ASSUR - FIELD - RISER - FTTx",5),
    						new Skill("ASSUR - FIELD - RISER - Copper",5),
    						new Skill("PROV - FIELD - VRGN - RES INTERNET",5),
    						new Skill("ASSUR - FIELD - VRGN - RES INTERNET",5),
    						new Skill("PROV - FIELD - VRGN - RES INTERNET - FTTH",5),
    						new Skill("ASSUR - FIELD - VRGN - RES INTERNET - FTTH",5),
    						new Skill("ASSUR - FIELD - CON - VDSL2",4), 
    						new Skill("ASSUR - FIELD - CON - EAGLE",4),
    						new Skill("PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+",4),
    						new Skill("ASSUR - FIELD - CON - ADSL/ADSL2+",4),
    						new Skill("PROV - FIELD - CON - Access and Desktop - VDSL2",4),
    						new Skill("ASSUR - FIELD - WHSL - RES - xDSL",4),
    						new Skill("PROV - FIELD - WHSL - Internet",4),
    						new Skill("ASSUR - FIELD - WHSL - Internet",4),
    						new Skill("PROV - FIELD - CON - Voice",4),
    						new Skill("ASSUR - FIELD - CON - Voice",4),
    						new Skill("PROV - FIELD - WHSL - RES - xDSL",4),
    						new Skill("PROV - FIELD - CON/BUS - Connections",4)						
    		}));
    		
   

    public TechJobAssign generateTechJob() {
    	MySqlGetData ms = new MySqlGetData();
    	return new TechJobAssign(SKILLS, ms.getTechs(), ms.getJob());
    }

}
