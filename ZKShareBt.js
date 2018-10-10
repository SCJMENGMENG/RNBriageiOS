/**
 * Created by scj on 2018/9/1.
 */
import React, { Component } from 'react';
import { requireNativeComponent,View,Text} from 'react-native';

import PropTypes from 'prop-types'


var ShareBt = requireNativeComponent('shareBt', ZKShareBt);

//参考：https://www.jianshu.com/p/082b469b073c

export default class ZKShareBt extends Component {
    static propTypes = {
        /**
         *
         * 定义组件需要传到原生端的属性
         * 使用React.PropTypes来进行校验
         */

        //按钮点击事件
        onButtonClicked:PropTypes.func,
    };
    render() {
        return (
            <View style={{backgroundColor:'yellow',height:100,justifyContent:'space-between'}}>
                <Text>11sdf11</Text>
                <ShareBt {...this.props}/>
            </View>
        );
    }
}