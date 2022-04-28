.class public Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
.super Ljava/lang/Object;
.source "ConfigableGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/ConfigableGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupManager"
.end annotation


# instance fields
.field private final mGadgetId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    return-void
.end method

.method public static synthetic lambda$prepareBackup$0(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 225
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 228
    invoke-static {p3}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockFile(Ljava/io/File;)Z

    move-result p1

    invoke-virtual {p4, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    .line 229
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p5

    .line 234
    invoke-virtual {p5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object p5

    .line 239
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p5

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    .line 243
    new-instance p5, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p5, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string v1, "autoChange"

    .line 244
    invoke-virtual {p5, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    goto :goto_0

    :cond_2
    move p5, v2

    .line 246
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInHome(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    new-instance v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string v3, "enableTime"

    .line 250
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v4, "disableTime"

    .line 251
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "autoChange"

    .line 256
    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v1, :cond_4

    .line 258
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-gtz v1, :cond_4

    .line 259
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_2

    .line 253
    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "startTime == null || endTime == null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    move v1, v2

    .line 261
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canAutoChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasValidFileInHome:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " dst:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_7

    if-eqz v1, :cond_7

    .line 264
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInHome(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/common/Utilities;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_7
    move p1, v2

    :goto_3
    if-nez p1, :cond_b

    .line 267
    invoke-virtual {p4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isDualClock()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 268
    invoke-virtual {p4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockExits(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 269
    invoke-virtual {p4}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getDualClockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/miui/home/launcher/gadget/DualClockUtils;->replaceToDualClock(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_5

    .line 271
    :cond_8
    instance-of p1, p4, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    if-eqz p1, :cond_a

    .line 272
    move-object p1, p4

    check-cast p1, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p5

    if-eqz p5, :cond_9

    .line 273
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p1, p5}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_4

    .line 275
    :cond_9
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;->getContentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p1, p5}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 278
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p1, p5}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    :goto_4
    invoke-virtual {p4, v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    .line 284
    :cond_b
    :goto_5
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x184

    .line 287
    :try_start_0
    invoke-static {p2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 289
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, " ErrnoException when prepareBackup home files"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 292
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 295
    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$prepareBackup$1(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "prepare back up failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    .line 301
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBackupDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBackupName(J)Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBackupNamePrefix()Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s_"

    const/4 v1, 0x2

    .line 169
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 183
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupName(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s"

    const/4 v1, 0x2

    .line 190
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathInHome(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 210
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPathInTheme()Ljava/lang/String;
    .locals 4

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 206
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "/data/system/theme/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeDescript()Ljava/lang/String;
    .locals 4

    .line 133
    iget v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Unknown gadget id %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "3x4"

    return-object v0

    :pswitch_1
    const-string v0, "1x4"

    return-object v0

    :pswitch_2
    const-string v0, "2x4"

    return-object v0

    :cond_0
    const-string v0, "1x2"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSystemGadgetTheme()Ljava/lang/String;
    .locals 5

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/media/theme/.data/content/%s_%s/%s.mrc"

    const/4 v2, 0x3

    .line 218
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 218
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 4

    .line 150
    iget v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Unknown gadget id %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :pswitch_0
    const-string v0, "clock"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareBackup(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Runnable;)V
    .locals 7

    .line 223
    new-instance v6, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$w2ElHeBenY-AAJnM2IShes6GoZ0;-><init>(Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;)V

    new-instance p1, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$emRuKbxPlhtA5cwCJz1GS5hDgLM;

    invoke-direct {p1, p5}, Lcom/miui/home/launcher/gadget/-$$Lambda$ConfigableGadget$BackupManager$emRuKbxPlhtA5cwCJz1GS5hDgLM;-><init>(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-static {v6, p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
