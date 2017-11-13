/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tvisenti <tvisenti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/07 16:30:21 by tvisenti          #+#    #+#             */
/*   Updated: 2017/11/13 10:40:06 by tvisenti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

char    *ft_strcat(char *restrict s1, const char *restrict s2);
void    ft_bzero(void *s, size_t n);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int     ft_toupper(int c);
int     ft_tolower(int c);
int     ft_puts(const char *s);

size_t  ft_strlen(const char *s);
void    *ft_memset(void *b, int c, size_t len);
void    *ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char    *ft_strdup(const char *s1);

int     ft_cat(int fd);

/*
** BONUS
*/

int		ft_islower(int c);
int		ft_isupper(int c);

#endif
