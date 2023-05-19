#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define BUFF_SIZE 0x42

void putstr(const char *str)
{
	char	*ptr;

	if (!str)
		return ;
	ptr = (char *)str;
	while (*ptr)
		ptr++;
	write(1, str, ptr - str);
}

void	read_flag(void)
{
	int		fd;
	int		readed;
	char	buff[BUFF_SIZE];

	fd = open("./flag.txt", O_RDONLY);
	if (fd < 0)
	{
		putstr("Error opening flag.txt");
		return ;
	}
	readed = read(fd, buff, BUFF_SIZE);
	buff[readed] = 0;
	printf("flag : %s\n", buff);
}

int main(void)
{
	putstr("Hello World\n");
	return (0);
}
