/* eslint-disable react/react-in-jsx-scope */
import * as React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createNativeStackNavigator} from '@react-navigation/native-stack';
import HomeScreen from '../src/screen/HomeScreen';

export default function Navigator() {
  const Stack = createNativeStackNavigator();

  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="homeScreen" component={HomeScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
