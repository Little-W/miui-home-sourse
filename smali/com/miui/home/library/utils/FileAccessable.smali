.class public interface abstract Lcom/miui/home/library/utils/FileAccessable;
.super Ljava/lang/Object;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/FileAccessable$Factory;,
        Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;,
        Lcom/miui/home/library/utils/FileAccessable$DeskFile;,
        Lcom/miui/home/library/utils/FileAccessable$ZipInnerFile;
    }
.end annotation


# virtual methods
.method public abstract createByExtension(Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;
.end method

.method public abstract createBySubpath(Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;
.end method

.method public abstract exists()Z
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract list()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/library/utils/FileAccessable;",
            ">;"
        }
    .end annotation
.end method
