# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pyago-ra <pyago-ra@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/25 10:56:42 by pyago-ra          #+#    #+#              #
#    Updated: 2021/06/01 17:04:59 by pyago-ra         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

SOURCES	=	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c \
ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c \
ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS	=	${SOURCES:.c=.o}

OBJS_B	=	$(BONUS:.c=.o)

all:	$(NAME)

$(NAME):	${OBJS}
		@ar -rcs $(NAME) ${OBJS}
		@ranlib $(NAME)

.c.o:
		@gcc -Wall -Wextra -Werror -c $< -o ${<:.c=.o} -I./

clean:
		@rm -f ${OBJS} $(OBJS_B)

fclean:	clean
		@rm -f $(NAME)

re:	fclean all

bonus:	$(NAME) $(OBJS_B)
		@ar -rcs $(NAME) $(OBJS_B)