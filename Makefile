CFLAGS	= -Wall -Werror -Wextra
CC		= gcc

NAME	= libft.a
SRCS	= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_strlen.c ft_strlcpy.c ft_memset.c ft_bzero.c ft_memcpy.c \
			ft_memmove.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strdup.c \
			ft_atoi.c ft_calloc.c ft_strrchr.c ft_memchr.c ft_memcmp.c \
			ft_strchr.c ft_strncmp.c ft_strnstr.c ft_substr.c ft_strjoin.c \
			ft_strtrim.c ft_itoa.c

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
