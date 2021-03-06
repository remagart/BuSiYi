import * as React from 'react';
import {View, StyleSheet} from 'react-native';
import Navigator from './navigation/Navigator';

export default function App() {
  return (
    <View style={styles.container}>
      <Navigator />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});
