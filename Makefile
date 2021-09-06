CFLAGS	= -Wall -Werror -Wextra
CC		= gcc

NAME	= libft.a
SRCS	= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_strlen.c ft_strlcpy.c ft_memset.c ft_bzero.c ft_memcpy.c \
			ft_memmove.c
OBJS	= ${SRCS:.c=.o}

.c.o:
	${CC} $(CFLAGS) -g -I . -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

all: $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	
re: fclean all
