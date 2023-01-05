#ifndef HELPERS_H
#define HELPERS_H

#include <linux/namei.h>


int is_fifo_file(char *filename)
{
    struct path path;
    struct inode *inode;
    int err;

    if (filename == NULL) {
        err = -EIO;
        goto finally;
    }

    err = kern_path(filename, LOOKUP_OPEN, &path);
    if (err < 0)
        goto finally;
    
    inode = path.dentry->d_inode;
    err = ((inode->i_mode & S_IFMT) == S_IFIFO ? 0 : -EIO);

    path_put(&path);

finally:
    return (err < 0 ? 0 : 1);
}

#endif