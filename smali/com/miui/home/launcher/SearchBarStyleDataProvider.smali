.class public Lcom/miui/home/launcher/SearchBarStyleDataProvider;
.super Landroid/content/ContentProvider;
.source "SearchBarStyleDataProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addResource(Landroid/os/Bundle;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$Mr-xdRSalXzBjYlio_MDp5kx80k;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$Mr-xdRSalXzBjYlio_MDp5kx80k;-><init>(Lcom/miui/home/launcher/SearchBarStyleDataProvider;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkDirectory()Ljava/io/File;
    .locals 2

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/SearchBarResource"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v0
.end method

.method private deleteCache(Landroid/os/Bundle;)V
    .locals 1

    .line 165
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$jBPuz3P_mffoVcWn2gg_7CPe540;-><init>(Lcom/miui/home/launcher/SearchBarStyleDataProvider;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteDirWihtFile(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->deleteDirWihtFile(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private getCacheList()Landroid/os/Bundle;
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->checkDirectory()Ljava/io/File;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cacheList"

    .line 125
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private updateConfig(Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "data"

    .line 116
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarData(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "key_home_screen_search_bar_engine_chain_resource"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private writeFileByIO(Ljava/io/File;[B)V
    .locals 2

    const/4 p0, 0x0

    .line 146
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 156
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 151
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    .line 155
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 156
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p1

    .line 149
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_0

    .line 155
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 156
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz p0, :cond_1

    .line 155
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 156
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :cond_1
    :goto_4
    throw p1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "delete_cache"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_1

    :sswitch_1
    const-string p2, "cacheList"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo p2, "update"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string p2, "clear_cache"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string p2, "addResource"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 85
    :cond_1
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->deleteCache(Landroid/os/Bundle;)V

    goto :goto_2

    .line 81
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$oSK3TjLDBw67mid-tRp5s0EQW9w;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleDataProvider$oSK3TjLDBw67mid-tRp5s0EQW9w;-><init>(Lcom/miui/home/launcher/SearchBarStyleDataProvider;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 77
    :cond_3
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->addResource(Landroid/os/Bundle;)V

    goto :goto_2

    .line 74
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->getCacheList()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 70
    :cond_5
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->updateConfig(Landroid/os/Bundle;)V

    .line 91
    :goto_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4e669031 -> :sswitch_4
        -0x4afde4f0 -> :sswitch_3
        -0x31ffc737 -> :sswitch_2
        -0x2102bcc0 -> :sswitch_1
        -0x19ca9412 -> :sswitch_0
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$addResource$1$SearchBarStyleDataProvider(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "key"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 133
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->checkDirectory()Ljava/io/File;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->writeFileByIO(Ljava/io/File;[B)V

    return-void
.end method

.method public synthetic lambda$call$0$SearchBarStyleDataProvider()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->checkDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->deleteDirWihtFile(Ljava/io/File;)V

    return-void
.end method

.method public synthetic lambda$deleteCache$2$SearchBarStyleDataProvider(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleDataProvider;->checkDirectory()Ljava/io/File;

    move-result-object p0

    .line 168
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
