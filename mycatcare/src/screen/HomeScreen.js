import * as React from 'react';
import {Text, View, StyleSheet, FlatList, Image} from 'react-native';
import {ScreenWidth} from '../Utils/NavigationHelper';

const FEATURES = [
  {
    icon: 'https://cdn-icons-png.flaticon.com/512/747/747310.png',
    text: '日曆',
    navigateTo: '',
  },
  {
    icon: 'https://cdn-icons-png.flaticon.com/512/2541/2541979.png',
    text: '報告',
    navigateTo: '',
  },
  {
    icon: 'https://cdn-icons-png.flaticon.com/512/453/453897.png',
    text: '圖表',
    navigateTo: '',
  },
  {
    icon: 'https://cdn-icons-png.flaticon.com/512/3524/3524659.png',
    text: '設置',
    navigateTo: '',
  },
];

export default function HomeScreen() {
  function renderDashboard() {
    return (
      <View style={styles.dashboardView}>
        <Text>6天以後</Text>
      </View>
    );
  }

  function renderItem(item) {
    return (
      <View style={styles.itemView}>
        <Image source={{uri: item.icon}} style={{width: 32, height: 32}} />
        <Text>{item.text} > </Text>
      </View>
    );
  }

  function renderFeatureList() {
    return (
      <FlatList
        data={FEATURES}
        renderItem={({ item }) => renderItem(item)}
      />
    );
  }

  function renderPic() {
    return (
      <View style={{ alignItems: "center", marginTop: 16, }}>
        <Image source={{ uri: "https://image.cache.storm.mg/styles/smg-800x533-fp/s3/media/image/2020/01/31/20200131-052418_U17017_M588719_cd2e.jpg?itok=s0SyFjTD" }} style={{ width: 200, height: 100 }} />
      </View>
    );
  }

  return (
    <View style={styles.container}>
      {renderDashboard()}
      {renderPic()}
      {renderFeatureList()}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  dashboardView: {
    width: ScreenWidth - 32,
    height: 100,
    marginHorizontal: 16,
    backgroundColor: "#FF00FF",
    justifyContent: 'center',
    alignItems: "center",
  },
  itemView: {
    marginVertical: 8,
    backgroundColor: "orange",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 32,
    paddingVertical: 16,
  },
});
