.class public Lcom/miui/home/library/utils/FileAccessable$DeskFile;
.super Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeskFile"
.end annotation


# instance fields
.field mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;-><init>()V

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createByExtension(Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;
    .locals 3

    .line 241
    new-instance v0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/home/library/utils/FileAccessable$DeskFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createBySubpath(Ljava/lang/String;)Lcom/miui/home/library/utils/FileAccessable;
    .locals 2

    .line 237
    new-instance v0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;

    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/library/utils/FileAccessable$DeskFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 224
    instance-of v0, p1, Lcom/miui/home/library/utils/FileAccessable$DeskFile;

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Lcom/miui/home/library/utils/FileAccessable$DeskFile;

    .line 226
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    iget-object p1, p1, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 212
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/library/utils/FileAccessable;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 203
    aget-object v4, v0, v3

    .line 204
    new-instance v5, Lcom/miui/home/library/utils/FileAccessable$DeskFile;

    iget-object v6, p0, Lcom/miui/home/library/utils/FileAccessable$DeskFile;->mFile:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Lcom/miui/home/library/utils/FileAccessable$DeskFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
