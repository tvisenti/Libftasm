/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tvisenti <tvisenti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/07 17:32:19 by tvisenti          #+#    #+#             */
/*   Updated: 2017/11/09 17:26:19 by tvisenti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "./libftasm.h"

char *ft_display_bzero(int i)
{
	char s[101] = "salut toi !";
	char *s2;

	ft_bzero(s, i);
	s2 = strdup(s);
	return (s2);
}

int			main(void)
{
	printf("\n---------------------\n");
	printf("ft_isalpha:\n");
	printf("'\\n' => %d\n", ft_isalpha(10));
	printf("'@' => %d\n", ft_isalpha(64));
	printf("'A' => %d\n", ft_isalpha(65));
	printf("']' => %d\n", ft_isalpha(93));
	printf("'s' => %d\n", ft_isalpha(115));
	printf("130 => %d\n", ft_isalpha(130));

	printf("\n---------------------\n");
	printf("ft_isdigit:\n");
	printf("'\\n' => %d\n", ft_isdigit(10));
	printf("'/' => %d\n", ft_isdigit(47));
	printf("'0' => %d\n", ft_isdigit(48));
	printf("'9' => %d\n", ft_isdigit(57));
	printf("':' => %d\n", ft_isdigit(58));
	printf("'A' => %d\n", ft_isdigit('A'));

	printf("\n---------------------\n");
	printf("ft_isalnum:\n");
	printf("'1' => %d\n", ft_isalnum(49));
	printf("'@' => %d\n", ft_isalnum(64));
	printf("'A' => %d\n", ft_isalnum(65));
	printf("']' => %d\n", ft_isalnum(93));
	printf("'s' => %d\n", ft_isalnum(115));
	printf("1300 => %d\n", ft_isalnum(1300));

	printf("\n---------------------\n");
	printf("ft_isascii:\n");
	printf("'1' => %d\n", ft_isascii(49));
	printf("'@' => %d\n", ft_isascii(64));
	printf("'A' => %d\n", ft_isascii(65));
	printf("']' => %d\n", ft_isascii(93));
	printf("'s' => %d\n", ft_isascii(115));
	printf("1300 => %d\n", ft_isascii(1300));

	printf("\n---------------------\n");
	printf("ft_isprint:\n");
	printf("1 => %d\n", ft_isprint(1));
	printf("'@' => %d\n", ft_isprint(64));
	printf("'A' => %d\n", ft_isprint(65));
	printf("']' => %d\n", ft_isprint(93));
	printf("127 => %d\n", ft_isprint(127));
	printf("1300 => %d\n", ft_isprint(1300));

	printf("\n---------------------\n");
	printf("ft_tolower:\n");
	printf("'a' => %c\n", ft_tolower('a'));
	printf("'A' => %c\n", ft_tolower('A'));
	printf("'Z' => %c\n", ft_tolower('Z'));
	printf("'z' => %c\n", ft_tolower('z'));
	printf("'1' => %c\n", ft_tolower('1'));
	printf("'$' => %c\n", ft_tolower('$'));

	printf("\n---------------------\n");
	printf("ft_toupper:\n");
	printf("'a' => %c\n", ft_toupper('a'));
	printf("'A' => %c\n", ft_toupper('A'));
	printf("'Z' => %c\n", ft_toupper('Z'));
	printf("'z' => %c\n", ft_toupper('z'));
	printf("'1' => %c\n", ft_toupper('1'));
	printf("'$' => %c\n", ft_toupper('$'));
	
	printf("\n---------------------\n");
	printf("ft_bzero:\n");
	printf("'2' => %s\n", ft_display_bzero(2));
	printf("'11' => %s\n", ft_display_bzero(11));
	printf("'100' => %s\n", ft_display_bzero(100));
	printf("'12' => %s\n", ft_display_bzero(12));
	printf("'10' => %s\n", ft_display_bzero(10));

		
	printf("\n---------------------\n");
	printf("ft_strcat:\n");
	char str[50];
	str[0] = '\0';
	printf("'je ' => %s\n", ft_strcat(str, "je "));
	printf("'suis ' => %s\n", ft_strcat(str, "suis "));
	printf("'' => %s\n", ft_strcat(str, ""));
	printf("'un ' => %s\n", ft_strcat(str, "un "));
	printf("'TEST!' => %s\n", ft_strcat(str, "TEST!"));

	printf("\n---------------------\n");
	printf("ft_puts:\n");
	ft_puts("je");
	ft_puts("suis");
	ft_puts("");
	ft_puts("un");
	ft_puts("TEST!");
	ft_puts(NULL);
	
	return (0);
}