#include "libft.h"

static char	*ft_strrev_malloc(char *str)
{
	char	*rev;
	int		len;
	int		i;

	len = ft_strlen(str);
	rev = (char *)malloc((len + 1) * sizeof(char));
	if (!rev)
		return (NULL);
	i = -1;
	while (--len >= 0)
		rev[++i] = str[len];
	rev[++i] = '\0';
	return (rev);
}

static char	*ft_malloc_zero(void)
{
	char	*ret;

	ret = (char *)malloc(2 * sizeof(char));
	if (!ret)
		return (NULL);
	ret[0] = '0';
	ret[1] = 0;
	return (ret);
}

char	*ft_itoa(int n)
{
	char		nbr[12];
	int			i;
	int			sign;
	long int	nb;

	if (n == 0)
		return (ft_malloc_zero());
	nb = (long int)n;
	sign = 1;
	if (nb < 0)
	{
		sign *= -1;
		nb = -nb;
	}
	i = 0;
	while (nb)
	{
		nbr[i] = nb % 10 + '0';
		nb /= 10;
		i++;
	}
	if (sign == -1)
		nbr[i++] = '-';
	nbr[i] = 0;
	return (ft_strrev_malloc(nbr));
}
