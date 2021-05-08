import React, { useState, useEffect } from 'react'
import { Text, View, Platform, StyleSheet, TouchableOpacity } from 'react-native'
import RNDatePicker from "@react-native-community/datetimepicker";
import moment from "moment";

const BREAK = ["30 分鐘", "1 小時"];

export default function App() {
  const [startWorkTime, setstartWorkTime] = useState(new Date());
  const [startClicked, setstartClicked] = useState(false);

  const [breakTime, setbreakTime] = useState(BREAK[0]);

  const [endWorkTime, setendWorkTime] = useState(new Date());
  const [endClicked, setendClicked] = useState(false);

  const [endAWorkTime, setendAWorkTime] = useState(new Date());
  const [endAClicked, setendAClicked] = useState(false);

  const [Result, setResult] = useState(0);

  useEffect(() => {
    let expected = moment(endWorkTime).diff(startWorkTime, "minutes");
    expected = (breakTime === BREAK[0]) ? expected - 30 : expected - 60;
    const act = moment(endAWorkTime).diff(endWorkTime, "minutes");
    let total = expected + act;
    if(total > 0){
      const h = (total / 60).toFixed(0);
      const m = total % 60;
      if(h > 0) setResult(`${h}小時\n${m}分鐘`);
      else setResult(`${m}分鐘`);
    }
    else {
      setResult("你今天不用上班");
    }
  
    
  }, [startWorkTime, breakTime, endWorkTime, endAWorkTime]);

  const onChangeTime = (timestamp) => {
    const hour = moment(timestamp).format("H");
    const minute = moment(timestamp).format("m");
    return moment().hour(hour).minute(minute).toDate();
  }

  const onChangeStart = (event, _date) => {
    if (!event || !event.nativeEvent || !event.nativeEvent.timestamp) {
      setstartClicked(false);
      return;
    }
    const time = onChangeTime(event.nativeEvent.timestamp);
    setstartWorkTime(time);
    setstartClicked(false);
  }

  const onChangeEnd = (event, _date) => {
    if (!event || !event.nativeEvent || !event.nativeEvent.timestamp) {
      setendClicked(false);
      return;
    }
    const time = onChangeTime(event.nativeEvent.timestamp);
    setendWorkTime(time);
    setendClicked(false);
  }

  const onChangeEndA = (event, _date) => {
    if (!event || !event.nativeEvent || !event.nativeEvent.timestamp) {
      setendAClicked(false);
      return;
    }
    const time = onChangeTime(event.nativeEvent.timestamp);
    setendAWorkTime(time);
    setendAClicked(false);
  }

  const onClickedBreak = () => {
    if (breakTime === BREAK[0]) setbreakTime(BREAK[1]);
    else setbreakTime(BREAK[0]);
  };
  
  if (Platform.OS === "ios") {
    return (
      <View style={styles.container}>
        <Text>目前不支援IOS</Text>
      </View>
    );
  }
  return (
    <View style={styles.container}>
      <View style={{ flexDirection: "row", justifyContent: "center", alignItems: "center" }}>
        <Text style={styles.txtBody1}> 上班時間 </Text>
        <TouchableOpacity onPress={()=>setstartClicked(true)}>
          <View style={styles.btn}>
            <Text style={styles.txtBody2}>{moment(startWorkTime).format("HH:mm")}</Text>
          </View>
        </TouchableOpacity>
        {startClicked && 
          <RNDatePicker
            mode={"time"}
            value={startWorkTime}
            is24Hour
            onChange={onChangeStart}
          />}
      </View>
      <View style={{ flexDirection: "row", justifyContent: "center", alignItems: "center" }}>
        <Text style={styles.txtBody1}> 午休時數 </Text>
        <TouchableOpacity onPress={onClickedBreak}>
          <View style={styles.btn}>
            <Text style={styles.txtBody2}>{breakTime}</Text>
          </View>
        </TouchableOpacity>
      </View>
      
      <View style={{ flexDirection: "row", justifyContent: "center", alignItems: "center" }}>
        <Text style={styles.txtBody1}> 預期下班時間 </Text>
        <TouchableOpacity onPress={()=>setendClicked(true)}>
          <View style={styles.btn}>
            <Text style={styles.txtBody2}>{moment(endWorkTime).format("HH:mm")}</Text>
          </View>
        </TouchableOpacity>
        {endClicked && 
          <RNDatePicker
            mode={"time"}
            value={endWorkTime}
            is24Hour
            onChange={onChangeEnd}
          />}
      </View>
      <View style={{ flexDirection: "row", justifyContent: "center", alignItems: "center" }}>
        <Text style={styles.txtBody1}> 實際下班時間 </Text>
        <TouchableOpacity onPress={()=>setendAClicked(true)}>
          <View style={styles.btn}>
            <Text style={styles.txtBody2}>{moment(endAWorkTime).format("HH:mm")}</Text>
          </View>
        </TouchableOpacity>
        {endAClicked && 
          <RNDatePicker
            mode={"time"}
            value={endAWorkTime}
            is24Hour
            onChange={onChangeEndA}
          />}
      </View>

      <View style={{ flex: 1 }} />

      <View style={{ flexDirection: "row", justifyContent: "center", alignItems: "center", backgroundColor: "rgba(233,233,12,0.8)" }}>
        <Text style={styles.txtResult}> 本日工時： </Text>
          <View style={styles.btn}>
            <Text style={styles.txtBody1}>{Result}</Text>
          </View>
      </View>

      <View style={{ flex: 1 }} />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#FFF",
  },
  txtBody1: {
    fontSize: 17,
    lineHeight: 23,
    color: "rgba(0,0,0,0.8)",
  },
  txtBody2: {
    fontSize: 19,
    lineHeight: 25,
    color: "rgba(0,0,0,0.8)",
    fontWeight: "bold",
  },
  txtResult: {
    fontSize: 25,
    lineHeight: 31,
    color: "rgba(0,0,0,0.8)",
    fontWeight: "bold",
  },
  btn: {
    justifyContent: "center",
    alignItems: "center",
    width: 100,
    height: 50,
  },
});
