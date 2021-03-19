.class public Lcom/miui/home/launcher/gadget/DualClockUtils;
.super Ljava/lang/Object;
.source "DualClockUtils.java"


# static fields
.field private static final CLOCK_GADGET_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/gadget/DualClockUtils;->CLOCK_GADGET_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x8
    .end array-data
.end method

.method private static getClockLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static getDualClockFile(I)Ljava/io/File;
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 144
    new-instance p0, Ljava/io/File;

    const-string v0, "/system/media/theme/.data/content/dual_clock_2x4/dual_clock.mrc"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 146
    new-instance p0, Ljava/io/File;

    const-string v0, "/system/media/theme/.data/content/dual_clock_3x4/dual_clock.mrc"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDualClockLastModifiedTime(Landroid/content/Context;)J
    .locals 3

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "last_change_dual_clock_enable"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDualClockResidentTimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "resident_timezone"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDualClockEnable(Landroid/content/Context;)Z
    .locals 2

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_dual_clock"

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static isDualClockExits(I)Z
    .locals 0

    .line 152
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getDualClockFile(I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isDualClockFile(Ljava/io/File;)Z
    .locals 1

    .line 157
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string p0, "dualClock"

    .line 158
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportDualClock()Z
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static replaceToDualClock(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 123
    invoke-static {p1, p0}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static replaceToThemeClock(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p1}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setDualClockLastModifiedTime(Landroid/content/Context;J)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "last_change_dual_clock_enable"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static shouldUseDualClock()Z
    .locals 6

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockEnable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Launcher.DualClock"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualClockEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getDualClockResidentTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.DualClock"

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",resident:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static updateBackup(Landroid/content/Context;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v1

    .line 85
    sget-object v2, Lcom/miui/home/launcher/gadget/DualClockUtils;->CLOCK_GADGET_TYPE:[I

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget v7, v2, v5

    .line 86
    new-instance v8, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-direct {v8, v7}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    .line 87
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_1

    :goto_1
    move-object/from16 v17, v2

    move/from16 v18, v3

    goto/16 :goto_5

    .line 95
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clock_changed_time_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-static {v0, v10}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getClockLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getDualClockLastModifiedTime(Landroid/content/Context;)J

    move-result-wide v12

    .line 98
    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v14

    .line 99
    array-length v15, v9

    move/from16 v16, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v15, :cond_6

    aget-object v4, v9, v6

    .line 100
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    .line 102
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    cmp-long v0, v17, v12

    if-ltz v0, :cond_2

    cmp-long v0, v17, v10

    if-gez v0, :cond_5

    .line 104
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    new-instance v0, Ljava/io/File;

    move-object/from16 v17, v2

    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 106
    invoke-static {v7}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isDualClockExits(I)Z

    move-result v2

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    move/from16 v18, v3

    .line 109
    invoke-static {v7}, Lcom/miui/home/launcher/gadget/DualClockUtils;->getDualClockFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/home/launcher/gadget/DualClockUtils;->replaceToDualClock(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    goto :goto_3

    :cond_3
    move/from16 v18, v3

    .line 111
    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/home/launcher/gadget/DualClockUtils;->replaceToThemeClock(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    :goto_3
    const-string v4, "Launcher.DualClock"

    move-object/from16 v19, v8

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v9

    const-string v9, "shouldUseDualClock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",hasThemeFile:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",hasDualClockFile:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",result:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",gadget:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_4

    :cond_4
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    goto :goto_4

    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v6, v16

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_7
    return v6
.end method
