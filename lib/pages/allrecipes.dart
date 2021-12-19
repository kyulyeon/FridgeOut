import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/search.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';
import 'package:fridge_out/pages/egg.dart';


class AllRecipes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: slidingNav(),
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Fridge Out'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
              onPressed: (){
            showSearch(context: context, delegate: Search());
              },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50),
                  Text('All Recipes'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 9.0,
                    fontSize: 50,
                  ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text('scrambled egg'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  letterSpacing: 5.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                                )
                              ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 200),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.timer_rounded,
                                  size: 20,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                Text(
                                  "15 min",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(0.6),
                                  )
                                )
                              ],
                            ),
                          ),
                          Ink.image(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrx5CwY9p6Fp0UKibenu-bohq6U138ocWgWA&usqp=CAU'
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.5), BlendMode.dstATop),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Egg()));
                              }
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text('kimchi fried rice'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    letterSpacing: 5.0,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 200),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.timer_rounded,
                                  size: 20,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                Text(
                                    "25 min",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    )
                                )
                              ],
                            ),
                          ),
                          Ink.image(
                              image: NetworkImage(
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxQUExYUFBQYGBYZGh8dGhoaGRwbIhocIBwfHBwcGiIgIS0iGhwoHxkfJDQkKCwuMTExHyI3PDcwOyswMS4BCwsLDw4PHRERHTAoIikwMC4wLjAwMDAyMDAwMDAyMjAwMDIwMDAuMC4wMDAwMDIwMDA7MDIwMDAwMDAwMDAwMP/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAFBgMEAAIHAf/EAEEQAAIBAgQEBAQDBwMDAwUBAAECEQADBBIhMQUGQVETImFxMoGRoUKx8BQjUmLB0eEHM3IVkvFTotIWgrLC4hf/xAAaAQACAwEBAAAAAAAAAAAAAAACAwEEBQAG/8QAMBEAAgIBBAADBQgDAQAAAAAAAQIAEQMEEiExIkFRE2GBobEUMnGRwdHh8AVC8SP/2gAMAwEAAhEDEQA/AOWrW+Un4QTR/h2Bs3GlhlY9KYbHCkGwEUrfHEVOfZT1qN1p/wAXy2rjRaX+IctXEPlBIrt0ioM4c5UggwQZBrrGDxHjYdX/ABAa1yzA4ZidjvrpXUuVbX7gg9qHfTw2S0iHzailtd6AYC94TydaY+ccOfoaUs5FWTKazrXK+ICYC7cG91wo9VXf/wDaq62zcItpu5PyHUn2Fe4G14eEwydcoJHq2p/rWvEMSmGsOytNy4CpbsDqwX+/eKQ3JqPTgRS4/eTxSLY8qaKT+I9WPeaFXMRIkjWq2K4hmJgdarwx6GPY00CLMuNjoELUdltZqTD8JvEx4TzEwVIMd4PSr9jgl/QeC+ug0rpAlzgePyEdqdcHiVYClE8uYlCAbJBiYzLt9aYuDYW8oGe2R7xUgyCIWzCsNxRrNSLbHWJ9xWl+xptRQZ5zBjfGw/hEz2PqNq5liLRzGelOF92tvDfAftVa5hbd4kAbdaBxu67jMbbe+ovWsEzjQVZTgLGmTB8OyiBr6VUx+cXBHlFVCWEuCjA6cuuTE17e4NlBBB0+9Mdi4QdBmqDGYh2MBNe1RuMnaItYDDNnAgxNN3MeBRMIrt8UgDXqTVFsUtlc7gSPwneqGI4i2NvJC5UXp3PerWLqzKmbuhGTA3gLaddBVhyKpDDEDTpXl03ANTTTEyzmFZVKW7j7V7UToMuYDyxGverfCMQyHLcMjoaP4bhJ3NUOcOGm3aF1BtuPSqzoSJbRxdGWf+rBexqxhcZbugqSATSCOLmvMNxBvFSCZzD86Su4GPZVIjzieEouW3bUQTqaI3k8CyemlWs6hVY6QJoHxHxLj575FqwuxcwW+W9MK7nqK3bUswPx7CZrevak3A8Fu3rqqltiuYBiBoFnUk7bU2cX5pw6eWzbN1v47ghPkv4vnUXK/Gr+KxlvxXhLasxVRlXQQJA3361aLDylQKYY47eKsUH4BA94AFKfNmOGZbKmQgAPv1o/fu+JiGZjltqzMz7CE009ZpJxV0XLrOq5VJOUHUx69ydzSQObjr4qTowC5RbT/ll1+tTjGXAsZvsK8w9vSpBaqS0kLImxV1yXa4xbbNJn0rExN5YIuPp/MamNqiictXWw/wC0KJTqBuB3oS9TiAIFXFXGbMXYt1JJmpXxFxt3f/uP96kWxUos1O6TUrJmGuZp9zUh4teUwtx/rNSNa7VEbWtcGkbYT4ZxhmkX/MvoADQ3FYhc58IuonSd/nFbLYMV5h8LBmp3ztoktvjGJtDMULD+KK8PNxc/vLc+1XW4iU+Hf0oNjEW4x8up3O2tTuscwdtdQg3NJI8luKifmlwIVNf4jQnEcPdRKtPpsaHPebYzPrUhV9JxZvWXMVimusWcyTTDy7fCDQamlFTVvDYhlOho4ozoyY0VBfv5qXcFxKd96LWnJ2ou4PUt+IKyq3hNWV1TrnQeE4CdWaV/OtuLcPR1KawfmKvX2K/AfsI+1CcVxnKf3tsqNs66j59a6gBzJLc8Tn/FeRbviEWoI7zpRLlnkwW2z3HDMup/hT1Y0bxeEe9nZrvhYcCWuKwGnp2NJPNHMviqMPh5TDJoBJm4f4nO59jSCnMsLkJEOcx86WrZyYYC6w0N1h5Qf5B196R8Xjbl1s1x2du7GahANelTUzu+5HeamTkC1lTE3+yhFPqdf7UtXUpswM2MBbEea4xc/wD4p/SoJ4kVZlPmvipKC2NAfKAOiLv82aST6UBwibGpLiNduhVBJ0VQOv6NXbnDrlpitxCpXQ6aA++1CWriGFs3NrJ1q1aX0q/wPl57gW68LaPXq0HWB/Wm9MdaBZbVkF2ECF3Gwn0qpl1SodvZlrHpXcX5RCNuug8h3s2Ee2QIDFZ7SJFU8fy5bt4d3a0zXjr8UAH+UA0R/wBOsO6WbxdCokEZhE+WmpkDxGbEVESF4ZcZiqW2MkxCk9am4hwa7ZAN1Cubbb9Cumcp8PCWwMxJkliffQCveabAuYa8FTOdlA1MzpHsaNQStmKLgNQ6nJDbqPw/Sr2Jw7oxRlKsNCDvU44NeIBCSD2M1G4DuM2kwei1tcsjetymUwdxUwWiuRUHNYJNajh+/eiAtRJ3qQW6mRAYwzAmTVnDcMF0w4BH627USuYGaxAU9KIGQYC4rysbctbYOvVZGZfl1HqKDWrRNPXC8KjF3c+b9bUD4nbtPcOUZX6kDyn3/hNEDFkQVhlYGjnD8STA2NDnsFZB0YVPg7pG4owYBWMef1rKHftorKndI2zp17EgmAw+elVDZDrcuXWyWralmY/YD+KrGNw9plYvAVQWYkRAGpJ9IFc65v5pbExatjLYU+VRpP8AM3c/lRM1SFW4O5k45cxBKKStgHyWxoPQtG56+lCVtVMhrCOtIJlgKJHlrCKkohwbgzYgkK6L3zEiPehZgO4QBPUDCwXcKN2IA+elMXNuNCMLKHS2FT/tEfmT9KKJygcKRibl206pJAQkkkAx070H4HwU4t2uXHAQMZ11JPb9daDJlVV3E0IWPGzvtUSx/p7w798L7xlUHLPVtp+VN+M4l4reAqzmJBiJbTXfrQ/h3CXcsgBFu2MqgHc7TrWnLAFniJtXhDqrZAfxkwVI91BrMN6hxzQ/SaZCadD5n9YXxN69Yspbs2vEAGUMACQNoYUDNnHWHzAEAnzBRmJ6iAOlEuD8VuDG3UvFLaPmuIZgBRMr7gCfkfStcHxFb1y673AiXdSuubwUnKqrv5pZmMfioxpmsk/vAGrVRVfjLpxTXbavdtXEcaeTXXpmA2n1pjWw6Yc2kIN5h+IwASJ1PoKQuWOZMPZu3LguubQi3aW5Oa6InO3RU6A+9PFp3NtLty2vimWAEkKT7b6QJpuDTjGSx7Mq6nUb6UdQjw7DPbs+crnyicpkZo1gwNCao3MX4SWrd0qr3LkQDIk67+1e8K4qLpa3dhHH4ZGvt3FVONcPtYtCsgGPK0DMjDUMp6GrW4FQVlMAbqMI3rNh2BYKWHwsR19DVbGcMM5rbhSTr5TDfTrWvCbN1LAXECSBDHSGjTMI779KkXxVAOHuo4G6XBBPswMT7ioyUw8Q/eGjlTwYrcZ5ZuC4XutoeqjQjt6GqvHbCJbtqimAd4PXuetON3m0IIvWSrDSFM6n0iY9RNQ4jilhlBFsEsNQDB+xiqzUpBDcehBlpcgZeV59QZz6fSt8tE8deS6r+GIyawd4Hr1oVban4coyA15QMuIoQDJlrS8k1KyEfOsVadE1KF6w0GK94Tw4Kcze5mr7Wa8ZemtTcEiDeNMl14CxGgYdPQjqKEXLTKcp3H39qaLGHUdJmo8dYt3Lbq2jqC1tgOo1KnuCPvRAwDFvMayrH/TcR/A3/af7VlFIhvnrms3i1ixK2h5XM63CN5/lkfOlQitA1SoKEm4xRUjFSG2QdQQexEVZ4Rhi9+0q7l1+UGSftTbxzhNt2JM7klh0FJyZQncbjxF+omKtEuDcfSyCjeVc0tG7jt7VvxlWLqi28qKvlA1J7lo61Jyny/4103riBrVoGQYgtGgjrG9KyFMic/KORWxv1POZOOF7PlMC4xyjso3PzMVd5Z4RiPBDLYX0m8ikneY7R+VBMRw+9fxJFrDt4dogQRlUKDJknTXXT1q1xXg2M8YoigkRmysMqgwZP8K60t1x7Vxnqr7hBsg3ZE7uvhGTx8TZORsFdJcCCrqwn3nQVHjuGXbhF9ryWryOAMxiEj+PowJj60Dv8Lx1lSLzgYcjzMl0QOqz7k6AAn2oLhsPbBHjYtWQjzZTemY2Hlj60zFp8a+JREvqMrCnjFztx3C32tKWMW7cNpPnnUdmHrE6UO4bdF5HYNeuyP3iIrfvdIVTl2WR6CARB1oNxPBp4WHdWXXxAwEfhYEeskGZNWOAcSayxsLlu2rpE2yTlzSBnaDIMDSdt4qyREdRh5e4WbNoXGw15rqrmVmUZFedDEsdPYbbUSxP+oJZPLdt5oh1Y3QCQdShjyn0Jjf3oTx/iV9QPDZ7eXMQQddJBI/iEioeCc7s65cTZt3Y/FlUNHc6QT9KrKWZSSPhDz4wjCjYjbjcfaDAOEugifMuo9j09wajTieHRwUuvaPYnMvvrrHzrzB8dwbqGZLduTA8W2i7eu33qdmwznS3auD0VWHyqt1B9n6AwticSL9rzs8f+pZOcEfzJ8X0+tUOFcKZr82MYrqPiRTBB/4tqvzqzwizZPmw+HUMB8SJAE6b7VmJ4M14xetJcI2YEK69grAhgfUGnEhiCRfvkKpW4Y8HK5LnNkELIEhjqflEUj8ycbOGxeV7U2miHO2Y7gEH7b084fhZsYc5Q7sqkr4jF2ZjqFJOumgnoBS5e4Rj3dl8Cy1tt/GcEA+mQk+xprIbBAk2NpFxW4nxiy90PYy22IIeXYq477eVhRblw2C03WUgbCZHue9COKf6cYxWZlW0wkkBbkkDoPMo9qXsFgHGIFq8LlsBwLmmon8/egfGVBINExmPKzlVIsCdRxnGbS5lyqyxA0ER6dqD30t7oZBO3ap1NhkCrZXwVIl9Z7TMz8q9PELFjNbtkP5gSTBInp9qz8OoZGsmx6TUy6dGWlFGUlFbeHUl9gxlYivEFa6PuUNMh0KMRNCnapLbKATpIG/Y1kR0mq9+wW96ZFmWP+sH/wBc/asob/0u93X6VlTciKSr6VKq16i1s0Cohwpy/iLFss91ipA0IEkDqV7tMD01q1iuKG6PDt3GAOxYgFvRoAAmgF63nEDUx+vlQ7DYzpOoO4OnuO9VcuDcd0MZ3Qiuo7pdw9lQLlzNc3LhoVZ6L396YuTLlt1fwgcqRGYRmLakkSCRp+dA+QuF2biteYW3ZiVCsCSrQZEkxqCCAAKceE2sPhU+AW2aAQTLMRpqevv61RARGIJ+J6mo+Q5FBUQdxJbiq7G0U3kgaSRuBqYAre9w5haK22YyQXePMYPTuASY+dRc3cecQrISOio8SN9WlT0+o+dT8G4vbvIWRxkCsOs6AaGTOYGKRQDcXXr/AHqO8QUEgAxIx6FnNm9h7jXiYWCwEbLlVdGMydOntWx5TFhS/wCzPeuEStt1fKsrucikMR2JX508C9ca2M10s0AMYACZukloJidKU+ceGGw9q7auXHVwVZM5mYnTftt9Ku4cwBoX+cRlx+0PkD7hBGNxAs2kN/C2vK5cWcrgEsAnnAAVdFmJnQTNB7HHXS4cvh2kYnN4SICFOgCkjT3EGdaM8I4wwtsl7NctqCVQgGGmSDOpGvWqeL4ObzEBgxck5UWYyH8MHUakSO3vFpc9kqRx6yvk0e0WDZMqpfN68+a4RZuH8TBoYjbM0x5pPSiN7k67bPiWiHQfECQDHcdD9qrcM4VctXhaW1cLvoA4hSNpIP5nYU6cO5VvXLaBSyakXrRPlA1jIZO4A+HvQPkO7w/9nexASnMDcscs3MWPNc8OxbciGWSSdwvSY7nTtrT/AIHlq1bEIjOf4mb7aQPlRzDYNbSquUCAAqgaKPSp7bzrT1wL/tKbZ26B4lXB8IyrlkIDrlQAemp+VXLGGRPhGvc6mvCpPXStWRp3pyoF6ESWJm15WaoktFan8SOtU71wDWaORMZDOpqnxTguHvCLqBux2I9jvVl781o6zFAwBFGSpKmxE/njAeFY0DZdlddBM7OBpNJmE434JZpzaBW8oIEaxMV1rHBGt3FZSQwiDt6/OuWWuGjEeLhkuL5QxtiIzspyyT0aO1Z74lRrHR+U0U1ByYihNH6wxwbjWHuHVQC24Bg+pXpPoaO/sNl2yWrvnicrrln0B2muTXOFYiwTKOCpiYME+h2NWcDzJdRhmJkHqeopwBrwm5SO5DTjidLbCwYIgjvUtvDL22oHwvmwXmW27eYjQx9vnTDYaesU7GbHIkPXlJM/r9zXle/SvaZUCctC1gw6OyBzlTOM57LPmOnpUqJpr8/T39aucHQNiLKsNDdQHbbMJ0+tAQSOI0NRuXeZuEF7NxEeGXKFAURcWYVJ6CSNNp3q5a5Ls2LSlrAv3QoBtqJLMB5zPuf1NWcFznYu5XdCPLmB0ME+nufrQu/x/wARmzYjwQQJFtgHZW0UqTsBOY6zpArMxtmrZ6H5TUfHjHjI7A98cOE2EsWQnhJZJObwywJMIJJiZby7+m9U8TiEuqXzeXMMrz8FydD2IkRB/rW9/FYS2ZKpcMQbhhmPQ5m29IEVmBwVu6hcW1SyTOQAkM4PxEbRpt1j3qnlIZrJ6ljEuxbqrlHDut5HtX7aB5IW5lBIOUnRtcum1BjYuYGWdlZLiNAGjZjlILCY2G4760Y5kx1tIKrlLAKQoCgHUg6e0fQVtZ4bh71jxsYzu9yciKxWBOhkd99enc0eJ77Ph98Y/gAau/KB+KcYy4O1buyvioztlILFh3icogrE9Br1oRhMO5w637991Zm/cjcwoIZzOpWfKO/m7VmG4Al7FeGjubFsBrhbUqCSSikb6KTMbBu1T8wl8ZeNuwgBUQlvMFhFgBVk7gR960ERAv4/L+iZep1LBwid+cuYbgjXbfmu20uNMMAdhJzdmUgTqNj8qL4TgQYu4xQu38ihsoA0HwlddREiNBJ+RD8Iw1yxbRcR4gdzPhorM7IDqu8A76gGAdxTVbkO9vDW8s25bxARlJ0UaCc2/rpVXIxU7R9P1lweIAseZBy9hBhxN12uX7rwin8J2ETtJ/EfkO7zgrPhoBuep/mO5/p7UH5bwNwP+8KNC6sJJk7DUbQCdNJij2JIECr2jTjeRz1M/WZLbaDImcE61vNQtU62u+gq7KPc9a4AKjbEH+E1rcx9tR3/AF9qo47mQLAXXv0qq+twLdsI9NLkbpZYxDMRpQi4lxmg1ewvG1uaHT3q6zIolqYmVMotGsQHxvjNMJXwVgxrRFwqCdKqnGr+Gg/HMY5EKdxTCQogAEmb8TxQLhRGutIuO5YCXmNolbzP4qMzAKFnzKVidCDsdZHSmJlIIB+9LXPuKaxdsvnI8jyPSB/U1Uybmuu5ZxKpIDdf3mCudMdfUhMwNplBkEkE9YnX5UriwW1IMkwJBFF8PeXFeErXAmUkFCD8B1Zg2xOkxM711B8fgLVoeZWUfyzr/TQUCMMa7TQMtv4+Vsicp4XhMjTcnuDt13+1dI4RiTctJcn4hSRxHENi8Q7KMqaBV7KNh29dO9OnLqZbIU9NPanYySbMqZlVRQhGTWV5JrKsStEbH2vKT26/rpVTh2IFu9bc6BXU/IEE/YUbOHkFTqOtUBhrTDdvYio6hHmKM3LTvZ8xKuUECfMDEj33HvRq9gLq4cI1qHzkqxXULAJBI3JOnoBRC/Y8MhpzIcq3DAMBfguAd1EA+gU9GNMycftMqWRb8S+xyhB+Ij8WugUjWZ0APyp6h2VhSzS0oDpyb+VQVyPwC1dsrcYuoGZCrPoXU6kaSBB6H06Gj/EsSlhbVq3cDDUeGGLt1JMRMD51d/8Ap0taFt7gEDaPIpMmATqR8u/yk4fw6xh10hnKrnYwcwJ2UHQDSPzrPyeNiW6ltXCgAG68on4q3cBY3bYLahEMiNdHIOhMH79aGXMJjsjoykJmyhtiCfwp1bfoDvTJzFxFDFwXJbdkYSdTGncelRNcv3bZv2CQ2zDMPgA1yDcMD2HX0NTiPltFeUdlYhN3ynly3+w4IWz/ALt0ZnPWNh7iNBHQMdmpAtYxziFNs+YHTWNaK8yYtmMB3cx+KSfqdzFV+F4LNrbttpqzwM07eWfXp6HTrV8MNu4jymPh07nKXY83HblvjF8eIcQrhUGjMh8rHUgnqsZTPWdzRLA8VU2/Fzli7HRQV2EQxnWIncR60G4Fxu+HFnEaWlR9VQkuoIUkz5Qst00k+tecTwuGXJ4T3GthlzW0Mhsz+aQsQMpAgd6z8i+KuvSaqgHsflOh8s2wLIu6y8tqSeyjf0WfnW91vMTmJPQdq2wTKbKFCuXKIyiBt0HQenSolUlq2cShMaqJhZW3Ox98tYdwBmcE9YHWhnFeJliYJjoPTtRHit3JbAGkilq40zWN/ltQ4IxqeOzL+gwqRvIkOJxbHQVQEk1bezNbJZj1rEDACa4IEjww8wB2O9FGu+XLmJTYTuKHtpWuM4iuQIqxG56k99tqfgyuh3IaP1isuIZOCJfwNzsZFT4g0J4Li80jt/Wir3ACAd69Ngf2iBpg58ZxuVld8C583T1NAf8AUjl5rli3e8p8KczHQlD+EdzoPX8qab1k3MkGFUydf1NBOfeJ5cNdAMAkATB0LAfkd6aaAMHFZYRQu8v2nK3LY8GRoBqsxG26QdfXXrrUOP4xbdEtLbEtGcR9QY66fajfLi2rNlTiHt52EIi6lk0MuNmMEiR0jWrV29ZF1M4y+G+gCfBAIBzQd5JInWst8lMA1mujNnHjAB2ipT4Jy+bKeJlhCwMk65eny1pmsWgNRtVK/wAzJaBRtiYYjSV/vU/BeJW76E2zOUwR1HaflVvS5t5oyhq9OVG7yk8VlTZK9q/M+4r8MuljBOv5j8zVPG4HIx667/OpcOYjod9JojiR4iZhuNx+Y/XpUGoUW74YAkH6GPp+u1F+TsDZsr+2SXulGU20jKhLaEjUqSE9FE7CstYNbiuuzZSQTsIiIHXtrQ7hvAsRh5vHy2rmXMc0LlMFfc6/Qn51M+TcpUGiPnLmnxkMCejCLc23LgbMgSWgy4cjKSBtoD3OtBOLcxtdKrBZlGUMpgHsT37ULxnAC2Le3nyOxdh1BO8A+53/AK1e5ZwP71sNeMOp99vMW9IUkg9arNixqN454uvdL+LKQ2wivfNbWKuG9aLW2IQaqCYnpTK3NFpbgVbb250csoXMwGhy9Xjf4SRHaiVpsLZt3WBKqAWIYBpjXQxP3pTxXHA98NbteLaVNVCODPYmJAJaahCuVfDf0kuxDU0t8cwuzpkMj8Tg5j3AgFR6Gfeh3DWxduL8KUtOrOFOoVSJ06gjrvrMVDwu3dvXltKSiScykhiFmS0mSAJjfeBTzieL2rClLdoKpBlREa6Zv796B8gxMEIu/lJFuPDcl4vjVW0XVBnCkzl0AmYYgaKT060qYTEtcwl5yFW4LnkYCCMoDCP5dSIohxRca9i5cZrRS4hIQZgxUHysPLqSJ09AKEYXh90WEcXUIK+e0AMxAJVQD+JjvEjSKhEoHkXYjARVATseEsBLSINQFAk7nuT6k6n3rLJ1qLBYnNaRtRKg6iCNNZra3qdK2bHFTzxBs3BnMt5pHagxejvGhmYp2Ez69qWLt/KTXmP8ipbOSJv6If8AkBUtLcqXNQ39prDi6oezMuFZYxN2h1++I16bV5iMTNDr9+rGLEZwFQvyniIv67RB+1NuLuIW03pQ5awx1fvRxwV1J3r0OltcdTC1xDZbEu8QvFVAQSZpJ/1KxZFlUAGZnGmmwBJ+8CmLEY/IpZmgASTOw71zLjPE2xN4vrkkqgI7b/PVT6aU4tZuJxJzGLk/EYZQGugm/plVthpIyiNNt6B8X4vca/dtksqh/KAxjQZQY22/OsxuCFhVupdIcmIIzZjoIBAGUAEnX0r3gOIzXWd0LENmy5dMx+Eify9KrFQLfsVNMElgoNGXeaeE+GlqGueIAouAwVnLrkIHRp+UUX/07wrJn0hWA+3/AJoPxnEMzLmMeacsRPcxJiuj8sYVDhw4Gw2Hbufr9jT9MCV5lHWtRqbyayrFZVypQibbsqfl3jtpp9ftVjAnK0dD/X9fatcIxMZjPTfT+2vpU5tg/wB9u36+tARDEy7ZVGYvOUATAJ0zCfhGg6Sap8b46wxFkG0U/hMMMyarqDsp6aUWTjQGdVMsirI2IlTqvpOuv/jXD4uzeuWxcFu7eIlWZQRb6+WZg/4rJzlTkJN/3zmvpwQgNXFh+DYi9dOJX/aUFwzNAYAwwQdWBBnbbeo8beC40eYBzbC7dy0mdtgBr3ozzWl1Wc2WXw4aLZBILyC5mYB30jf3JoQMOo8O/iL5ZdDlRCjPInKxJ+GN9vlXCjxYqqjqPYHnfUq4/EXlthiFVWYAGdT1kAiInStm43ixbm2QshixO+hj8Rg+mh2OnevxzEreuh2zJZGirbIWAImNxI009qi4HhLd1rvjX2UbABlUuNRpmBGw1AimKiqu6uvdIcsxoxj4JwLEWrRuIyObyq7KSQ2Yrm+LWd4g0JwvEMP4tz9q8RrgYr4amFESCNPMT6gij/E8dcRcyCbQUQQZ0GgGmk6bGKDcpcPfEXbwa7cVjLxmcW9SSZy/ik6CRpm7UjDblncAH5xjeBRUvXeKWsZcFnI6hNLaayQBB0Bk6ToSdPtDjLRW5+z4a0RcEHXNJBEkkE+XKJmKMYPBJgXa4GLXUU5v4QphjvJJgTv09DVc8wWDeuYhmAu+HlECSwkwNOhnX066CgVgW4Br9Z1n/Wo2cMZ0sKjsrPbAUlTIPYg+wq1axRAmPrSNyXzEWvXLNwFQ4BTNG6zIPuD9jToykjeSOsjUdI9OlaePcUHrMfUKFyEQVxjiZzsdZoHjcx84pix6AxI+lVP2QVmtozvJJ75l/Dq1VRQiz+0GtWxJo9ieEo34RVRuCr+pqPshlka1DA1+761Jw/BtcI/h70YtcDSZImr5KWx0EU7Hpq+9E5taKpIJscxrZveBdQ2yf9snZxtvtPp+R0rfmPmFLeQs0ASfllOnqSYoVzhxDD3U8MrnY6rH4emaen9aVuJ4U3FDNd8ygDIxmRtmX17zPvV9dv3ZmMG+9ULJx1sXfRFU+EGBKGJYDct6Dt/WKbMRwrD3vCsLlQoGbQNoTGgG86SSekelKXAOVWLeIl5E08syTt1GXaR3piwvBMbEobTEAzcV8sEkGCSASe2hiqOdwz0jfCamFCMfjFfSLXE+FPavBMS7LbXVHTzKATA1jymd5FWMLiMNZ8QrcLllEFgfKwnso3pnwt+6i+HeC+GqkNPmDL3ad4G/z+SDxHCgXHW2wZA8AiACp12knsKch9p4TxFPaWRzMxN9r97xVUgaQpI07xA2rp/JouLYVW3ApS5a4SzspKyoOvp1romGsBFEA/raKuItdTNyuTwZYzev6+lZUc+v3P8AaspsRE3huKz21ck9iJ2PartoyN5/8fr60p8N4t4JlvNbMZ8o+jAd43HppTZh71hkFxLq5TtMx/ihIhqQYH5uwjm2zI7KdMwUkAx1Yde2vYdqGcpcwJba41y4wuMqqqECGOboeh2jWmxwCsbr30+v69KS+aOBZZuWx66dOx06/wCKS+JXBBljFmZP2ja1rxPETEqw1V1K6A6+YAjSYk6Urc38Pu2SrS5tyQpcEE+h0E6CQeo9azC81BQttgWGRVLPBYGNY7SevYUQx+EuOSb95blpRlCJmEsWAUCZOaY+g9RVBEONvF19Zqbw62p/ibcscu2L2FzXQ4LEnMGgjWBEyOk7UMx/LJtMxs3sx+K35fNmQZgp1g7aHv01o1w7juHTCtZFyHSFKv5W06+o0+ROtL9jiOe9Il8oOVQfic6LPYbajXtQ4jn9oxN7b6PyhMMTJyefd6w5wHjt/HFQ5FpVkXLqiZ28sT5ZmZOn5UX4yy4LD+DazFmfVxoSWOjOQdRqBp0jal7GcaW2G8W3ku5QCpHmcmSWJiAQdjrp9aDcT45ibloLcR/DMBGIOqg6QYhjI3oziLtwKF+vcCwoFnn8IT4vzC+gdclkAzbBkXCQNGO+43mT3FAOEYkJDdz3g+47URw3BA5s5y7MzLnBkZAdl16nbXvUf/Tbbm9bYLbW2xysAAd9tdX16dhpT12bdsSyuGsSXiPE9MyyHDKQTG4IPT2p+5d4ob9hbrDKTuJn6eh3+dIGEfAqDaS073GBDu4Ayjrl7QNfhnvR3F8StWFa1Za2v7tfDdixltVY3DqJ0kCN2g7QJBI4APx84jKVbhiL90asVjAsa7kAe52qjc4/bVzbcw46QfqO4pGTm69buZLpS6FOsGB/9pAG3rVDmXjH7Q4dZVEHlDHWTqfn/YUexiYtQBHjFc54dGym5O8wrGI0100ojhuK27ihlIIO0Uh8M5eVlzNdUXCCSjAwQezTuZ7UPOGv2mZUd1CRoGYATrO8EetcChNAwjhYC6nQMdxq4phLZIB1PWP5R/U0Ex/MyHUwW1Atg6yB+MjQCaV8TfuMpa5cLrseo+WuvyqdMGEtF9ArHRSdfkO1SQAOZypfU8Ge5c8RiArHVgYAA1gD7Vj4NHZTmuGesaCDsNIMD1ogtu3bVcp8Tyg/8Cd4G5n6/U16R4lsW7RUDPI1yx0MqBB3oNxuxCXJjvaZBZ4s1gkHM6kHylsuvSCBoJn329a0wvM98XPEDFCBooLQfQ9DM9fStsVwJ5XxHXI07HUx6dB61Zs4e1IAQFRt6etAxxjkiz6yyvtCaB8PpLmN4reuKPG3uAqq6CJESY99t9auci8DtXMTkuZcqSYkgsQYCsNt9TM6SO9LyljfEtqDmWdYHSI7U58vKthhozF92ykAMffU6n8u+k49qsAfOBqAzISvlHjG2sOnltp5urdNtIA7/qaqs3bX9da9TUdKE8f49awqGWz3CDlXrPr2HvWhMeX87/qf71lc4/8ArrGfx2v+z/8AqsrpMt3eGjSRn01ZPXo3fruOg71Hwxhh7htXDFp9VaPhaNCfToZ0p1fBCcwAJ2zIcp+YpZ524kllMnxsTt+7OvqNx/ijZYtWNwhhwoIOUGdjp9j2q1iMKrL+tus/rpSBwPmp0bKYy75Z+uQnUH02pw4bxe3dBKvmA3UiCPcUkjyjwbiTzPwQ2WmdzoBrr71Y5W403jZrq5yiEqdfLsCR/NBid9TTzj+HpeQg6g9e1JN7CXMDfF5VDAHQkTGs/wBKVmx7lI/KWcGXawP5w9zc9l7LPdUBwoZTpm1+ET1E9DSJYsKGFwHKPT8J6H2mruO4ut83fFzZn1Gn4pnvoKBZWUwZ0M+lJ02AohUk/wAR+pzqSCAD+8fjcS9bW1ijFwLNu6OnoAe46H3EbUU4jh0uolvOEW1KiBOXL8MfTvSAMPech0IJJChRoTOgiTrPrTVbvXb3hWCUt+GAHIzH3djpE6mB1O/ZOfEQQQ0dps65PKZxfG3GZbqAgsypcJXKYzQGhttCd+hrzm/B3UVAiEFUTO2waGkOO511+dMqcXsWf3Fm7m6Z7lxgJjYbqxnuN9z1pL4rx3FZ2w13XP5QWAHxHRgRIyifX30oMQJICj8/T+IzI+0EngTzA3g4uYlxEILa6AZyBLsdO+g+Y70r4q+ST3Jk0x8wYtRbWzajw08qkCCf4mPUydfnQPBZH8jCDmzZwJIEaj1Gm1aC0BdTGW8mT8ZctWgVAKqSB1Aqa1hLjAi3aUg7sQND7k9qauFfs98hBat28ttADpLmSHM7bxvrvrVvivAbYt3v3uQqqkBTA6z6DprH11qkc1NU3KG2qoxSxGLUEDNBG0TOlbX+IM9svmUMmk/CSp3Hr3rSxwks1pXPhrDQxA1OYlSSPiB7nfTpRHi3D7Xg5M37xYBaN5/pIMdpNSSikCCA5BoRfXAuyh7c5mcAIBM9iPWRVxLVy05t3LRJAObQQM0AZZ0aTppvOlFeV8Sts3LZCm6qjIR2IOaPXYe3vV63YVlZ7yzAMGSN9Y09YNBk1JVtrDj58wUwitwP984j4+y9u4ykHQjYzEiRJGk1ZwnEhs4k9GBgj59fnVZGeSupEk6AknX4o+9aYlWttBEzqNKv1Y2zMfGPvCHv2dri57rvk0ClYMEyAXka7DQRoZmqty1ctgnMp7CdSPYf3oZbu3HI8xA6DoKP8A5fuXjPTqTS/ZkHk/CPGcBeBB+HwVx2zSQx0EU58r8pXCy3Ll1wAQcuusaiZ0+x/se4Hy/btbiT1J/WgofzBzWqIRbbKuwI0ZjH4esajXenDGD3KzZW8jGHjPEEw9su5A/hXqx7D9etcp5i4s+IvM7GegHRQOgqvxDjDXCSSxb+JjNUFemiIMnzVlQ5qypkTtnMvFbeGtG5cPTyr5C3aV71xTjnEHu3Dcc+YnSdwJkHSjHNPHLmKuteuk+GP9tD/DO2n4qWL1wsZP8A4FETcACpGBRfg3FTadWnzL17jqpocifretsvf7mKEiGDU6fwzmbCFAS5RuqkHT6aRRW4tnEW/KyuuuqkEexiuOhY2+3+aYOBceFsZZFtp+LcH0IHtQkQg0L8V5LOYm3GU9Ox7e1AsXyzdAiI9jTzh+Y7DMLa3ATGriVUnrE6/WipRHGsGdjM/SoqEWnK+B5bd0riEY5RK6wA0iCdRI+o1ozxVhdstiEcqS2Ru2cDQDTQEU1cT5Zt3dQIYDyt2MR8xSdxrgOKsh80G2zAnLIEgZV06ae9V8mIs26WtPnVF2wG5I3YfL/NMXB7CYhcjoYKaNLSzbAL0ksR6d9tV98AxjodzOb5DUAfQmrvBuY7mGzKoHm0LdhIJgHY6b0GXGxXw9j4R6ZwCQ3RkHG8Ey3WCGUD5VzQNOhJ2o/guBLYwrNdtZhddQHB81rfzyJWP5fXX0ofs7YsnyhFklAdcw21102q3heI3sEjowD2ysBHJy+o9Pl8t6As2wL5w1TGrFwOO44YS7Ye5bVEVSiRbkSNB5Qe9I3FMXlzi753LKWB2Yh5cadDlihVrjzCAJ9e89Mp3qbDNbu5tfNvrp/5pOPTHEbaN+0I4pTGHBcZW812866hQbahoCke2+selUsZj82ZdySIE+9A/wBnuBCS0TP5/wCJrzhuI80RJEfON9aZ9nUksPKQNRVKR3LzYJSQbTMLpuZRBiDEk6+kn5RXmM4viCWtXWlVMHQCY3FQ+JcVnIYLn9jC6SNRpsNRWC+FEICz9zrB703bdWL9IkuBZupa4RxC2ktqImZ0k9PlQ/FN4zyFIWSQJkQT9qt8O4PcueUmZ30+etNfBeU1UeaDPQD+vWmKgVrHcr5M25dsV8FgTICiT2ArovL+BNmzmuEJpJOwGn9qqY7iWHwUQge5GiCNP5mPQUjce5ouYh811s8bDov/ABUaD86cFrmVi1xi5m53lWt2DltwVL6hrhOhIjVU7Dr1kaUj4nEZthpVbE3S5JNZZNEZAk7j8h+VYKjJ/KvSdKIRZ7m+asqDNXlTOm+OxRuGBog+Fe3+a0s2p7/LWvLVuTV61ajePm39BUTpGts9fuY+wrAnb7L/AHq0lvt/7Vj7mtHX0+rf2qJ0ga1+mP8ASvI/QFTC2d/yX+prR07/AHaPyrp01zkdY9Jo7y7xTKRFxbYUzldiFc/SF96BMvbQeg/rW1ixJ7/U/wCK6rnXOo4TmaydGuW9tWR86yehOhB9xFF7V63dXQq6kdCGFcgOGE9J+/0FSK9y0QUZh6iV/wA11SQwnT8ZwGzcWMoFLfEOQgZyE0J4bzZiUH+6HA1OcAn2mdqNYX/UAH/ctEeqkH6j/NDQhgmLVvgOIsXpthsy67aH3HWtOKXMRe8t0MdZgAKB8t/rT9hObMK8TcCk/wAakR84irV3jOGABzgg6AqpafaB6/nQlATcNcpUVOS4TBlXnKTEyImJ06VvicChkoWB7Rp/ium28RgyfFUbkjRW1I3ER0mtcXewDCWe2Pcwe+29cVJN3OGUBaqc7wvA7rDTMRRCzyrdaBkgd/1vTgeYsHa8tubh7qAB9WiarX+fsOi627mf+ER/7jP5TU7bglzKWB5PUfF5qL4Llm0v4Prr/ig//wDoJMZLAB6y+h9tKHcxc83bqm2IQHQqpJJ/5H+m3vXbRILExxOJw1lsmaX6W7QzuTvAA+HbcwBS1zHzi5/doosiIIBlz/yb8Pyiky7xElSFkTuZ3Hb2qkaICDCON4lIYLu27Tqfn1mhwrwVJatljA1qanTYVLhbZbQAn2FWcJgS3wrnPU7KPc9aKWsA0ed4A6LoB2k/+K6TcGJwu4egX/kwFSDhLf8AqWv+/wDxRizggNl26nU/fWpGYjt9Ki4JgH/pX89v6t/8a8o947dvtWV1mRUVbG1XsFv869rKKdN8Vv8Ar0rWxuP11NZWUI6neclxPw/OqFvf9d6ysqROPczEfr61dT4f161lZUwTLPD/AOg/M1XxW4rKyukSliuvsKq2fiHvWVlceowQ2dzRXFf7disrKEQjGDCfBZ/4P+YpQ4z/AL7f8RWVlRIgW98VVb+9ZWVIkSW11qudz71lZUidNTWVlZUzp5V/A/CfnWVld5ToxcJ/2l9v/jVttvmPzrKyhnS1c+Gqzda8rK6dMrKysqZ0/9k='
                              ),
                              height: 240,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
                              child: InkWell(
                                  onTap: () {
                                  }
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text('garden salad'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    letterSpacing: 5.0,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 200),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.timer_rounded,
                                  size: 20,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                Text(
                                    "7 min",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    )
                                )
                              ],
                            ),
                          ),
                          Ink.image(
                              image: NetworkImage(
                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFRUXFxgXFRcYFxUXFxgXFRYWGBcYGBUYHSggGBolHRUVITEiJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGy0lICUtLS0tLS0tLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAPsAyQMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAFBgIDBAcBAAj/xABAEAABAwIEBAQCBwYFBAMAAAABAgMRAAQFEiExBkFRYRMicYEykRQjQlKhsfAHYnLB0eEVFjNT8VSCkqIXJEP/xAAaAQACAwEBAAAAAAAAAAAAAAAAAgEDBAUG/8QAMBEAAQQABAMHBAMBAQEAAAAAAQACAxEEEiExQVFxE2GBkbHB8AUiodEj4fEyQhT/2gAMAwEAAhEDEQA/AGZpNa0IqbLNXhIqaTLNlr0Iq8t1IJoQspSa9Sg1tQ2KkWxU2hZcpqxDJNa2mZqxYiotCwqaIqxuvS6K8UsCotSrQKrdtQqs7t+E143iAPOhCEX7RQaZuH3ZRBoReFK6JYUMsUuxUnUIs81rVCm62rGk1QU0yVZyK8Cam8ioMTQhSio1q8GakGRQhZUompeBWqAK8K6ELEq2qvwDW5ZqGahCxlEV9FaF1GKEIclOleAVYK9CaZCqJryrclSCKEKtKorSw3NVttSaIIRAqChRIgVjek1tVWZ6oUrEpmstykit6jWS4qCpSzflc1U0+RRK7RQ51k0myelvwxZWumVDZ0iqOGMHypzKGp1piDYFMAlKmyJTUVJq1s9Ks8OmVSx+HNSDcVsy1FSaFNrKXK88SrHGazqaIoUqRNVrr4zXkUIUc9RKqn4dS8GhC+SK9yV7lryhCHBNexVhFRpkL4Jr7LJr6a3W7OlQULxhmBU1CrCmo71CFnWapWK3KY5qIFZnbxlH7xqCQFNXss3gk7Ca8OGLPKPWoXGPEfCAKF3OLuK+0arMrQrBG4omrAx9pxIqDWHWyDmU7JHpS67dk7k1UXTVJxA4BN2Z5p5TjLCRAV+FRVjjJ6/KktB71uYZkTyqp2LclyBMzeOsjkasHELPf5UtBmoqapP/ALH9yMgTWnHGD9qKuRiLStnE/OkhaazrRUjHHiAjsgujJUDsoH3qtaD0rnYdUnZRHua0MY8+jZZPrrVrca07hQYTzTqpNepFLttxcdnEA9xRa1xm3c+1kPQ1obNG7YpS1w4IgEV9FeoTpIII7V7NWqu1GKjlqZIrzMKEIUTUTUorQ2kCpJTKNrbHc0QQOlRaTpJ0FZ7i9A0T86i1K1OqSn4jQ25xWNEiKw3NzO5oXcXNVF6tbHzWy5vydzWBb87VgurnKMyjArLY3Li1pKUjwp8yi4EkDqBvWCbEtboNT84razDmrOgTFYtpdCgoEKSNDtNLz9yAopJEjvTG842W1FsrVAPLT50L/ZxYW7rHirQlTgdXJVqQQojn2qoSPJ0rXx/SgBgBLrQhV1UmFFe23XlWr9pODuW6vpjKVOoJCXGkgZUAA+YACYpKs+J23hlAKD0mq53zNBpu3HgPC/nNI7KRbU6NONA5VvJB5RTNY3CUtQRnTO4rj9siXRInXQdadGFOrSUqUUIHJOk+9cvEOla4HPw5D9FUNNmqTmy+iIMQfnFWKsAoShQ9DSBcWQ++52OY/wBausMZuLdQOYutjdJ+KOxrPh5ZWbuzcwdD4H/ExB4hHX9Kyqcpgsbm3uwl1I1O4mIP7yetLXEDpRcLSYjSI05Ct3bNOo29+Vb2rI2F+y9VWdQqtFyDzq3wVbwYpzKGjU0oKjlqbbZNFbO3TCVZdToQdvWqb5oScpiszvqLcxY3et+CKWnDi6g+RyOnQ9qMWfEf2Xk67SKF4XBhB251pxHAyhJWlWYbnrH860/S8biJA8k2BXokkY1MbakuCUKCvzqHgnoaTWLhTZlJIoh/mN3qPkK7zMU0j7lT2RGyLtIra20EiVewqVu0EjMfYVnuXZ1NaiUoChdXBPpQq4fq25eigN9echVLnVqVaxpOyld3dCMQxENpKjqeQqVw5lGZR9AN5pcxp7xRkAOY6RXInxZecrdAurHA2Jud6LpBeCVPNZm1pCkqSVadjG1W4dh9u2uW0jXeQo1Lht1y1Qlp1PlOxGsE8iDR23UHFHSABsOZOm3OuX24bo03flvuoH3hzjsFILeKcrCBB0GmmvfpXuEYG7ZMZAS4ta1LOVMDMrU+gopgiFNn6wiPsiddOcHb07VXjXFgbnw21OHYBIJk/wBK1OmYY/5HEE6ADf8AC57pDsAsj+Jutoc8ZKykaEQDoecDYaxrXNOKOD7Jlo3DTrralH6tuJE7wTGgjXennCGrrxnXX23Al4AlIC1Aco6DQCjvEXD7b9r4YSoBUEgaKEagweh5VEb3tOeOwB/0NbI7t82/E9NFDBrlJ38lzXgGy8QFZMkGKcLt8IH+nnA5bc6FcLYabNbjLh2MhfJSTsaL3hBZdWkiYjQyDB5VhxWYyFzedeHsromDQE1rXmttpcoU2pCss75SmQrTQZT9roRQrG8CKGg+yla21fEjKSpHtvl332paRiSkkOfZTovpE6V0vBr0FtK0hxaVAElKgch7pMEj2I0rXh4xJ/G8bDf5+e7VJiozBKWhc84fuPBuUkkpQ5oemblTVxo234IdUIWNlD7Q71dxFw8i6WfBUGljzKUUnKTI1EHesuI4Kp5tLDjurZkkbKjlrWeSMseDe5y6VrX9adVOHJu28NUpYVZuOHNsjqafLEtZO4EGhlxaqSnKkSlI5dBVWG3STpXPnkc/7gNFo7Mkk0irlygqKUSIAPz6VguuZNXt3KEqJMRGvpStd4v4zym2lAidJqIcO6U235/qthwskhIaNvJMeG3gKgNiCKa3LxIQZM6HT2rmeV5kgrAy/eGo+dGHL8kb712ME12HL21vXuq8RhXR1m/Gy9edrP49UvPVRnroBUBq6pcOTQ66ditFy5FBbxzmSEjvpXVllZGLcVmijc801Y724JMDWsK28oJJg8z/ACFe3OIJGiAT1O0+9VsYM/dpkLyI1gjn79K4k2IfO7K1deOJkIzO80CxDFkJJA5day8JvBy5cdX8LY8vSTzpp4h4dtxZEZEh1KdHNlSNQVRoZ1HvSJbcTtuMBCG1JKQEEaGYESCKzOjcWlrRZ0s8gf3spa+OdwaTQu+tJuvMXDvwnblAPPeeVYG8WKIVnKTmO3ICIP50DwcFDanFA+ZXl7gf3moIClqJSgq5wBoO5OwHrVTcO0EjlxWnGM/gpi6LaX2fzOqIR1M51z0A+EetMNhjLZSUttLMDYJA07RXKUYoWoJCVRskkkdZgHet6eJLmc+uXRRSg6AR0TqkRzOlTh+0hJLK17tT4m1wHC07v4gzmyLecAUZylCjlJ0gqg6H+RoLxlxW20lLaFFTgUQDyy5dSdomqrbHUXLzbTSiVqGZ2TqltAnzaSRqBqTqa5VxJehVy5BkBUA+n95rTCx0ryHNoEa761sN9AL9hQXSwOGjJzycKoeaPDiNRc8RaioGRBVOnoeUTtTk6jKx47LgcYKSVIIOZG8kEbie1ceD1MnD3Ey2kKaUM7JCgUzESIJHbtWw4dmWiF2pwyduVoHeKG3sRwPsiGHXQK43SrcciDRfCeJVWboQYLWw01y9D1pLw59OY6wAdJ6dKLquUEAwZ5dqxSQ5H3r/AHz+brh/U2ASXfD0XVsUd8VnxrdQBIzdJgT+utYmZfSFp8kjUH73b3mkdjiJX0RxvMElCTr8JMkQNO+3vTFwvjifozK1q3zIXH35MD3EVklgMjrcONeNcvyVTgyWuJHL3RNasktLdTnjVIJCkz1B3HcUJt7XLnRm3JKSOXSrLy686laKMkBRgkARHmIEAdNa8s75Kj5nkgk/Cj06q51lMDu0LGUOp4+R/wBXZw7H9nmfrfcR+K5dEtcQYg6hpTakkEnLm1iOxpQDx612Jy0LzamylDiTqCT8QCtdNiQQRpqNO1JmPcIDxGxb6eIsJU2o/ASd5P2a7OHb2Tae2r48Pn4WrDTtYC0aePd+PFDrDiBwNKaUM6CCNdxPemPhtp15tASJMRO2g6mm6zw22s2EsENrQo/WZglWZQG6p220q1p5hCSlnwQkapSCEgew3rDiPqLW6ZTd8fXRcvHfUI5mZGto3d8/DhawNYGpHxJlX4CtH0A9U1O/xdplsqUroDlB1J6CgH+dmujn/rVQfPMMwafMLliymG/xKOcml+9uidz7f80Gw7HhcOZEKAGpK1bD+p7U1MfRUAZx4qualbT2SNAK1zB5NvNdflrpdrFEKGvRYcMwdT6S4tZQ1zIgqWdsqenrTzAbaSlAyoCRHIwANDOtCLDEWgAltISE7AAAD2FV3GJFZKQeR9oGtMyRjWfYbv114+ywzSuldZ25IbxHeBaVo5KbJHqJiuTcN4coIzKkZlHKOuv61pzx6/M55BSJB16dulB8OUVK8VX/AGjtGmlED3iM3xqytEMYb/Jx1ACuu3VEpQcysogBOhMbCfsjvVrzSijzQifsNmEjpmVJKvnrXmGK8R1SYBBHmmdutW3riGGlIBEAKCTJO866770u1NHy/nJXT55JMo1A+dEDax5trOjIFq21SCI/iOw5RVdi6pcXCsyG0KgKQICTtodydaWX3IHUnUmtwvli3Q1MJMqI6+bSum7DAD7dydb5caUYaNgdZTZwziaGkvLDuZ5xGRS3nACSoqK5UrRKNEa96SsQt3S/lyeZZkZSCNTvM7dzVQXNdP4PsfKh1TSZIGUAaJSNTqdSrVR35jkIpXObhrfuTp+vAKcXK1rMrNOQHv3Vpz5JOteDLoiVBKe2qj+Gn41F7he5QJyEjsf611FeIhAlLZTBkg8wVQDp13q62xB1zQMb81+VJB2IETBFZzip81kiun92sDcVKzUH8LjdneeEsSIWFHMCNR0BBoxgGKhq5D1yfDacStKVlBKQqJmACFCREcpptxjhD6SslQbC4kBKilWUGCYmSBmQJ7ilXijht7yNqKUo3EAwmTBMDSY5aVfHNG9wLhV73y7tNfJLJN2zSH73Y5eaYG8Lt3FKdRctBt5eQoATCkgDztganzDaBudqGYgu5w19xSEqLGYA+RQQRpGuwVqNZpo4XsPCQhlhrN8KVFexSTJJJ5mSRy12r7iEIt1rQEQFwHWJKQBA8ySDBSdNCPw2yiRr7sW06a6WPQGteey0xMmhORpaeY+anxpc+xLiFb6yokhPJIP6k1ls3VkymTG+UGQPbbSj9zhrJV4jDGeMoS0lCys6SSSFEGI3yjet2CsKcK3n0BluIccKFeIpOic06lQGg7A9K0tcwM/iboOg+dStUn1iWF2XL5n9JeRxMtrQuK+KR5VGD6q68+tMGD8TO3TshC3SB9lHT4cxGw/GnKww2xWyoBbbiB8CgQXCojZYVMJHSfxrRhvDiW4UyoALHLnWbEzMyZGts77g1rWw/Crl+ryyg0Gjw11779kh4peuLcLQzkjQ9AeYJNEMH4bunkEtoSUgkZyvLmI3CZ36dKecL4atWCpbqw8skxI68ymdTvrRJF4gnwkDKEJJTsEmew5aUoYyJuUkXwaCLJ76sAf4uPkB4LnnFOCXDVkVuBMJI3+MSoAnWkH6TXcOIHRc2i2VpMK0Kt8omQY6iNK53/kdr/ec/wDEUsWLwsbaBPPbnv3K5jSBSH3LwJB2jaOVbrPEFNkQqQeskH1BoK6qr03ENEH2rbiYQfuCgHVOzF8mArQfragGP41BVlPLX+dLq+IQ2giZI2A1NBkuO3EnYHlv86qbhS7V+jUGQAovZYgXFDMfId0/e7R/OmJsNKSE+IEgSlStzKd5HIUlWDpYUc2pGvr09KNWWGrfKSoQ3qYnnMyeu5p5oRemg4LU3EDK017H+gtX04IlDEurUfMofDJPXp2oditvqACpbkDOog5SoyfLyCQBt6czRy5Wy3DSVBKjyiToPwqeG2iVoIKjrroY11j86qYcrrH+/wBdw4rQ+V3ZWCLvQb1z8TzOtcrXPTYqmFA6ewrZi6AhtsfraacsZwiG5SB5dppdvQwUgurUCNUwE6ggbya2NnLyCRtyVEDqa+zRoeqXmliddhXebNwN26HNIyhUTpryUR61wy/eYUoJZChMAzBnSDt866VwzjwcskpUdUjKfbQ0uOH2teQR891kc/NKdbRVq9RdOhtIIghThJSRGsJ11ImPTrTvbpbQ3plgAA6jTmJ6VzH9nl80u9X5vKoSmO1dXXZtqRok+35gbe1ZxG8uO11x32tICEEu70JWFNpkHylUbE6kTG3aqMTUhxKs6dNADGknT4q2P2SmSFAwFRCsvSTCgrbn896nc25ft1JWQlQmCOQjQwD3NVtic8ujOh3qtPhTGgLXO7bic2ym2XklKASlDyVEKTmJKQtOxSJjfT2onxr/APYaQ9GdaEjOpEat8nExy2kCYknalPi/DXgonIpbYEFQGk8lRQDA8fXbymCpB8yU/cWNyJ2B5inZhXuaHsOvEXufY79xB6Ks6EpietGMqU53W3kgLQqQUEKTsUxMBXMEVbgWPqSSl0khIIiZ0UIVE7yNp9xyrJbWqsQTkbOVQ8xCEKWkE66QRkJ6bGrv/j29SJQTMfE4pKfk2J/FRpi6MjLI4B3LiPHl85pSHOPNStbVhKi424YEfVLMrMjSFJSE7yD00o7h7y5C3HkIkQlIWUBI7eaSfWkW74JvUySlKo1Jzf1FZWMNuEH/AElH+EZvfy1L4I5dRICfBM1pH/ldpsn2v94KUeczr7UUUtIyLymROVQggj7pPvPWuR2F243GYGO4NdC4YxgkZN0K/A8j86402EEbswNciOffrt6LW+NzNCEaxDE0NQkp0WDGmukaR71iyo/23KzqsjAU+5mdAUUFWQoE7JASBoIG+u9ZvBuf+oa+QqyHDmUfduOnugSRho+031XMlPpB3n8KpxO6kBtOhPxdhVmFqt3CEPhSN/rEEe0pII61lxC1DSljxAVAiP3kECFA+nKvQ1qtOIwGQZmGxxv584Kdjbtg5atCC0+kDQKO3Ksdm55tJ/vRDFVTcMJAkyCapN5qPEH0XOeKbY5qy6w7xbxPJKUhSjyGug9d/lTZc3CUNeGkiOwE6d/ekq6xo/SVIBhIUBIEzoBy5b0UeZU4uEkxBPt/fWs8jJAGhxoUteGEItxs+i+t7dDilL+0SO+h09thRJtxSVAIUDqASRHb1oVbtZPKB79K32lo6Vn4gO5qHXdJ5HNdr37JhxhORkmUqBScpmJ+e1cXvrjOcp1AUqPQ7D86f8Tx3KVM5gSrylJjWdIk7fnSzgXD5eWokHIkmT7mNa1YR3ZMMkuirlw3aSBsJsH9g0gyLYABR0nY/wBKnbYo43KZlKpJE6SRBP4Cj3FODuNNpJSfDBIzaRygnLt70nVvhc2Zl7hY8VCYXBp3pMmC40bZ5t9owUkSBGonUe+o96/RvDWPs3KUqbUDmTmCdlaaKEdjX5RbSeVG8Fx64tVJU0tSYMxOnf50ssFkEHVVAmrrRfqS7U28kRkX5spSVhMGSkweahrpWY4PlO5I2I5kQYmuMYDx4y2suhHhPLI8RWkHWSo6QftDkRm9a6gz+0K0eBLJKlDlB/kPwrG5zf8AqVtEc/2O/gT04q1tk5Wa2qLHAHEPQ5ogZ9ZAzAz39K4dxA60q6c8I5mgtQSoxJ8x10AG5Ow2iujcTcQP4koM2wyBMlSyrURIOSBEGYlXyoAzwEiPrHgk6aplUdoGlVxPgw4IJrW+/WuH+962NbiJnhxaTQA8kvYRxAuyd8VhQgwFJnRQ9K6Nw/8AtMt3p+lBSB5YCQCkdddzNCrDhTD2tFJcfUNTmGkfw7fOh/EuJWaElKLFZ9VJbHsEgmqe1hnfTWG+ZoX4H1NHkUSYV7CXOcG92/8Af4XSWeIcPOqLhrUwQo5Tr2VvVjl5aCYfYQN9VpCYGpKTG/vX53XeIKtWylM6BKpI+YopZ4a2+D4bqyRyIBPuKaX6extF+3S/QrM2WQH7CPOvWl3h8WBRLjzJ03KkhWuuhOvOkt64Q09mt4WhW2k68/ypE/wN7T4jJgAgjpGu3/FNuDWgWGmwvwy2fNmAnMEjKDBjUFXyrJPBGxth1itfm/RaI3OcHCU1Xj5cEc4vxYmxW81HiIAzJIiJIzGPcmuMfTn/ALy/mqutX1g0y+FOIKjcIUxIJLcZVLUD0JyDQztpzoN/hTPQ/MU/0/ERRtIy3dG9OVV4EHzUywlwGU3VjQfOaSpry5dnczAgego7x9gK7K7W2rVCyVtK5KQoz8xsaW7dlTqsqfUk7Ada7QbRsroSYpvZ9R7Ixw8kKVmOyRNUf4l9c7cHZIKWx1O1MmH8JLW2kJdQltRGcnMlRE6hIgjXrPtTNjOC2ly22y7LYb+DwsoA0jYAiI5Vy5MZE2TXUHTTgP2fRcWTcAcFxqyuVJcz6EkyQees/wAq6AxjTSkAIUUrlJInKoEH7Q3j8DRDGOAmW2Cq0T4hKkiFOHMBOpGmvyETzilDEuFrphAU+yW0GQk/EBrH+onQE1re+HFU4Gq6emqRrywUE5W1/bmFHKqNz357UOx/ixlGqSSuIAB/lt70q23DFw4jOgKCDsVKCQfSTrWW2w3w3AXmVrQNwDueWo3HoaSOCEE/fmrhpfTdXNZiHgEMIB40a/AOihh1u5dPiEgkmSMspHPXtT4VW9shKCSco1CTBPcxzoHf4oEJytHw29ghICQepMbn1oTmSs6O6n71ErH4ii77WjgNfMrsYVsWFtt24ppf4st1DwloX4atCFQUmdNYOkSddaTMSwfwXihSvKfMkgEkpO3Qf8VVfWLiDK9E/eGo/XrT1gVkhTaWbpIC1BQZLg+GUDIQojedwKCWYNmeM2DuLvbiOnHqsOJmEziHt1G3uD3Hh5cUAwPBmX1BtKwD0UvLPtGtPeD8LMJUto20hScpcPmBka5SdUmew2oO3w0i3QFrcSHJClrGoATqEIBGuu5Ik9qZMExMlIWSqCfKD0GxI71zMbiHSAmNxLduI15j/PVXYaRhFFoBXP8AiXhBNsfrHxrOUBCiSAdJ5T1ii3BGMot3mjGVooWAopWCpQGpSSIJkRvuaZ+J7QXq2mVNqCZKi6mPLKVDLG/3e1DH7IsWL1sqFFtxS21xunMDmT0MAyOWtaosUZ4AJT93l3A6fNUjIWsmyDQGgdOHXl0W3E+JWlOFYQlMwDAGaB1I50YtkW12j6hzI791StTAE6bz09K5R9MISpMJhUaxqI6HlV1i8pGVwBQAUBmEjzDWAesU7cKwWXC75+y9C6OIgMYctbcR4g7puxS4VbgtwQsfFPI0m4zc5lEjbv6UdxrGUvLLgSo5gCoKP2ikCYB08wnQ0p3xNPhoqK8/9XhdG5p4OF9DxCHOq1qtt4oUCmUqGxSSD7EVrYs1LMRA5mmjALFhIBVBjfqf7aVvknbEOa44jLtEMsbO+fAHiOxGiCtckbfCNPnFOOEYQbVIBgLMpzHKVJXBgBJ8u86kTHOjF/jCWm2FMpRlOadIMJKdJ3jU0QY4itntFMJBX8UypJIBEj7qvSuNisRJIKNBvcFeGsYBlH3Wly+ZdWG1vKIWhySkiM0gpCoEA6KMH+LrVOU1rxe6SFnw0iR5YEkARqSFbH0rN9Ob+6azW4gEBdWLGsNlwrbby9KTWUM4lbfQrk5XBqw7zSqNPUciOYpDs/2f3jL62VwkH4nN0wJgpGmaZ/rRJt+NQYIp34f4jbfSGbmAsaIc09K9HMHvZTCL7+Pzy5jlyrppFX7fOX5QlWEQhKE/CkAAmeQgSedYnMFQAVLdAH7q9adL3C8qhnKik7FJIB9csTUrbCLeNW28p5FI/GdzXnhE/NyPEHSkpFBIzd3bCMrziCDufOkkbSDrR63xpTjfhHwnEAEqUgwI3JW0tMFJ5iijvDVorMktNBJBBy5Uq1G4I1+VLVlgqGXkhhSykkzmVmkJjSOk9anNlH2nU6fPm9KyGOzmdsN/YePpaSL7GitasmjWzaPshI0EAacqaOEbBi8CwoBOVMnkfUdfWkS9sFIedTsMyo9zpAqzCMTdYWFtryqGk6a9QRsRXSbFG2suy9PhcW7EQ5WnK4Dh+D4q7i/CQy6tEEpSZB5lJ1Bmlfw0TrI9pprxDE13CgXCNB5dE5d5gaaiTsZ3qjD+H8/+ocokCDuo6QB86uZIG6Fcz6rC4PDqFka95HHxQlhTpOVJKtNQoaUxWOOKDIQpMrQr7QzAZRoQPvCYorjRZt20tsoGdWhPYbnvVvC2BhX1rh8syB94/wBKzYhzHDUDu6rm/d/ySV5h2EOvj6RdSUDVCT5Z75eSfzpjt7NKhmzcpjSsHEiHHWi2hZSOo2gcvSqLa4yIhR2ETzNcrEAu1B20Arb57LbBDbC4DavG0xsWg8LP9ozHaucYreArcKHysgqSpEQkDbTtpR6+4hyIypPL5UMwnBXX3PKjKDqSQBvrMbneaswjCy3v04Dv9/LzV5c4kudtZPH/ADzScDyNXpBiJ03jlXQuJOGLZaAlBKXUCPEGubqCmkS8aUyShQ/hV1FddsoftvyWnDYpsm+68ZWdJmOcbxziiLGGtKgqfSidgWydPUK/lQVBKjA96IXlo7kbUFJAAUkajMBpoBvOkUOFEa0qvqj+0a0AXWvhoiuIcOPBsrZyPI6oPm90E/lNDsKeC1FHhQsfEDmA05mdqZeFn7YW6VfSVocPxCJB12Uj+YOtU4xaWiyVyhZ5mCJ9Y/mazumaLYQfC1yY4s+oIHVbHS0LZLcAqTOvqZMdppfSog6HnQ/EblkAISpUDXInRM96pbvhG59I5dqlsLqv2QYSQSNgjzlzAJmTFBf8Q9aqdvtDyoX43c1bDh97VdWNE8rc1mpJeoa47r6VJL9dOlXafOHuMFNjwnvrG/xT6Gvsb4ZW6lT9o87cJJzZCuVo9EnQ+mh9aSUO0Rw3FnWVBTayk1RLDHL/ANjbY8QoIsUEpN3SVO5SVWz6VaBRUG1KB0Ckn4FdjpRg47dsOS+DmkkKG0EDkOXenO8u7DEUhN8yEuRAeR5Vj1I/I0Pv+B7htkJYKb+3T8ACgh9CfuiZCh2qibCgkFozDajuOh9vI7BABrKTSRLzHXHlElYJJ3KY+dE8L4Su3WjcDIEchr556VkvBbNGFtvNqBGZtxOum4nv1rt1iWb7DwbfQKR5AnylKk8tNiCIqpxIFRtrqB5LUzPC4Osg388FzHBuFnfECnUhKQecR8qNcQ2zaGiQvzTPl0IjvQfGcZcYbUhZfbf2CVgEHkVBwSCB86XBeOLErWpXMyZrOwOkbn+eH7WjE4p0h+5GcJwo3jn1mYpTBUoEhX8II2mna5ukoGUABIEAdANhArnmCcTljMnKpSFawIkHrW1nE37tcJQI5A6AeqjRKJBpVAcSVlYcxoakoxe4uYJG350r47iSoGWYG8b02rsAE/X+GPRRA/tWSzwG2dWFpK1BCgSJCkk8gZGtY4cRE12dwJ79wu1HC9kRF6lKGBYRdXjvkSUtTqtYITHbmo11B28DA8FBkgAKc5k9B0FU3+JGMqYTGmsA0uKuCTzP4mtEkzZiDW2y5b+0jBa4nVE3nZ1n1rE5bod8jmx2PQ9a9bbdV8LTh/7VVXcYVd8mHe3lNIHCxrr1VbXkbJfxawcZVAIKTsRAkfrlVFq4pWgGnfaizuDXS1J8ZC20H72k/wBqZrKwbbQBAPtVsuLbG2tz3e6qc5zz+0l3Vg8B9XlVpMaj8xS/iLj6TlcBTPyPoa7EhttQ2G1AsXwVt5JKQFAE6encbUuGx4B+9un5CQhwNnVc2YijiscKmPAUhsjQpUEhKkx3GhG/LnQy+w9Ta8qZUCYAjzT0gc6aeH/2dXlwAtaRbN/fd0Mdkbn3iuuBnGYarrxYqMMBJFJSZbKjGp10HejH+Xrn/YX/AONdRwu1sMPTDKfpD3NxYET2rT/nJ/oj5UxiceIHhfuPdcyd7XOtuo8lyh9yNesVQbiPSpXjcxrtWAq5VeqCirD9bULpVF0Wzr8P5f2ovb3cgEGghSCi6V1tsMWdZMtrUn0OlB0O1aF0lJ06p4tafTkvbZt5PUpGajXCIsGFH6K+ppCzKmXDKZ6pJ1SfeuZBVehVQQHCnC1AsCgV1fjThpN02cgC5EjKRmCuRE1x9eCvMylxhxMblSFR89jRe0xd5r4HFJ9zRu048uk6KKXB+8BWZuDjbmyEizdbi+NdVY6VzgAeGl8a7+iTcG4cdeSt1MIAPlBEZu08v70XwtJblJlKxuOYI5aU3scetkQ5bII7R+VRXieFuqzqZWhR3IJ9Ngaomwk0hNubXDhXrahrg3gUNsr5taclyhK0nmRI/wCaYrfD2vDhkBI3ERE1g8DC1bPOpn9cxW+xTZNxkvFR0IEflWQ/TJRppXK05nPM/lELS3bMEtpnqUiaJoZRySkdwBWAYhZ/9QPlU0YzZp//AH/D+1OzAzN0oV1CpL7+FETUyqNaEr4nsh9tR9AazucZ2qfhQtVOMBMDpQ8VF9yJ43ZB9lSR8W6P4hSFhjLi/L4ayQY+E6GjzvHqR/psAepodccaXCvhyoH7oFWu+miTV7vIfv8ASlriOC2McMXEEwlHdaoHrAq9nDbK1SQt6dSShHVRk9eZNKtzijznxuKV6kx8qzitEWAhjvS+p9tAoLiUzHH7dkn6LbISo7rUAVHvNCr7Fnnj9Ysnty+VYUpq1tNbAANAo2XqEVd4dSbTV2WmpLa546J235jrQxSf70SWaqdTIJCdfzpQmQl5E1hbfU0rT4elFfFH3dfWheIJ0nvThVu5hGbK/ChoaItv0kJURqDROzxONFVBapa/mmsLqQXQy3uga1pcpKVgK1BVeg1SFVIKopSrgakDVIVUgqhCuCqmDVAVUwqhFq4KqYNUBVTBoUWrQakDVSTVialFqwVYKrFWJqVCsSKmmq0mppoUK9FXIFZ0qqtd8AYGp6f1oUIs0ANSav8AH7flQFNwSdTI/Krsx/WamUFJKzG+tTS7PbtXjwqAMUidZcQZjzD3oTfHy0ybgg7GlfEQQspPL9TTApHBYoqQTUgKkBTWq6XrLyk7GidrivJWlC4qWWoTA0mdm7B2NaEO0ookagxWpnEFjvS5UwcmkKqYVQFrF+oIrW3iiDzqKTZgioVUwqh6L1J5j51cLkdaKUraFVIKrILgda+FwOtFIW4Kq0Kob9LSNyPnUVYogfaFSotF0qqYXS+5jQGwJqhWKrVtA/GppBKaPHA51kexhA0Tqe23zpcUtStVKJ9/5Va2PQUUltFfpy1zJjtWq0OsztyoSwOXKidoRymilKM24Gs+2v661q8H9TQvJkBX0Bga7VL/ABEf7Y+dK6Rrd1NWlh0a1RcLSgSsx0HM+laLjTbpSgXlKVKiTrzqQLUONIq5iS1mEeUfjWO7czHXWBE9a+tPtfwmvjTJbtVRX2SrDyr5FCVVxUgKtO3661A7UKV4E18U1JqvRzoQohNfBFWV9QpUMlSirOdfGhC8APU/jU8vepNf0r00IUclTSiK+PKrVbUIUUpqxCNainY+lWp+z+udCFYgdq1MoPaqG962CltSFay38v1863NtkQU/rtVdokfhVzKzKdaYKVutU7a+bYjQ/hWrwB9xHyH9apRua0Zz2+QoItQv/9k='
                              ),
                              height: 240,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
                              child: InkWell(
                                  onTap: () {
                                  }
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text('grilled cheese'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    letterSpacing: 5.0,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 200),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.timer_rounded,
                                  size: 20,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                Text(
                                    "10 min",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    )
                                )
                              ],
                            ),
                          ),
                          Ink.image(
                              image: NetworkImage(
                                'data:image/jpeg;base64,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'
                              ),
                              height: 240,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
                              child: InkWell(
                                  onTap: () {
                                  }
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          )
        );
  }
}
