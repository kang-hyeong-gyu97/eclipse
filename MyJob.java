package test.BoardDao;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

// 스케줄러 ---> 우리가 지정한 시각에(시간마다) 우리가 지정한 클래스를 실행해줌!
public class MyJob implements Job {
	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		int i;
		for(i = 1; i<=1000; i++) {
			
		}
		System.out.println(i);
	}
}
