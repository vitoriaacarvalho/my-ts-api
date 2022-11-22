package com.vitoria.utils;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Component
public class ShuffleNumbers {
	
	public Integer shuffle() {
		Integer[] intNumbers= {1,2,3,4,5,6,7,8,9,10};
		List<Integer> intList=Arrays.asList(intNumbers);
		Collections.shuffle(intList);
		intList.toArray(intNumbers);
		return intNumbers[7];
	}
	
}

