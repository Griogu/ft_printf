# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mpendilh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/05 16:41:32 by mpendilh          #+#    #+#              #
#    Updated: 2024/11/10 15:44:56 by mpendilh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
CC = cc
CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

OBJ = $(SRCS:.c=.o)

SRCS = ft_printf.c \
	   ft_putchar.c \
	   ft_putstr.c \
	   ft_hexa.c \
	   ft_hexaptr.c \
	   ft_putnbr.c \
	   ft_put_un_int.c

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
