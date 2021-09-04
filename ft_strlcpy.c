#include "libft.h"

int	ft_strlcpy(char *dest, char *src, int n)
{
	int	i;

	i = 0;
	while (src[i] && i < n)
	{
		if (src[i] != '\0')
			dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
	return (i);
}
