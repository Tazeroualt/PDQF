import oracledb

def connector_cursor():

    dbtable = "dwhlegma.dw_sinistre"
    user = "B100709176"
    password = "U!4YX3Mu%GCBLEy"
    hostname = "10.73.60.120"
    port = "1521"
    service_name = "MAZOLP_LB_DEFAULT"
    
    con = oracledb.connect(user=user, password=password,
            host=hostname, port=1521, service_name=service_name)
    assert con
    cur = con.cursor()
    return (con,cur)

con, cur = connector_cursor()

sql = """select *
from dwhlegma.dw_sinistre
where rownum <=1
"""
cur.execute(sql)
results = [i[0] for i in cur.description]

with open('D:\DQF\jaffle_shop\models\source\source.yml','a') as f:
    for i in results[103:]:
        string = " "*10 + f"- name: {i}\n"+\
        " "*12 + "tests:\n" +\
        " "*14 + "- not_null:\n" +\
        " "*18 + "class: completeness\n"
        f.write(string)
    
con.close()