/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_cat.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tvisenti <tvisenti@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/14 11:14:04 by tvisenti          #+#    #+#             */
/*   Updated: 2017/11/14 11:42:57 by tvisenti         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <assert.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "libftasm.h"

void    ft_cat(int fd);

int     main(int ac, const char **av)
{
    ft_cat(0);
    ft_cat(open(__FILE__, O_RDONLY));
    ft_cat(open(av[0], O_RDONLY));
    ft_cat(-42);
    (void)ac;
    return (0);
}