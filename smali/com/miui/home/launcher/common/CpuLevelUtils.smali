.class public Lcom/miui/home/launcher/common/CpuLevelUtils;
.super Ljava/lang/Object;
.source "CpuLevelUtils.java"


# static fields
.field static final SM_PATTERN:Ljava/util/regex/Pattern;

.field private static mHighQualcommLevel:I = -0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Inc ([A-Z]+)([\\d]+)"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/CpuLevelUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static getHardwareInfo()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 25
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ": "

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 31
    aget-object v0, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    :try_start_2
    const-string v2, "DeviceUtils"

    const-string v3, "getChipSetFromCpuInfo failed"

    .line 36
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_2
    const-string v0, ""

    return-object v0

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 41
    :cond_3
    throw v0
.end method

.method public static getQualcommCpuLevel(Ljava/lang/String;)I
    .locals 5

    .line 60
    sget-object v0, Lcom/miui/home/launcher/common/CpuLevelUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    const/16 v4, 0x2d

    if-le p0, v4, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x7

    if-lt v3, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static needMamlDownload()Z
    .locals 2

    .line 48
    sget v0, Lcom/miui/home/launcher/common/CpuLevelUtils;->mHighQualcommLevel:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->getHardwareInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qualcomm"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {v0}, Lcom/miui/home/launcher/common/CpuLevelUtils;->getQualcommCpuLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/CpuLevelUtils;->mHighQualcommLevel:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 53
    sput v0, Lcom/miui/home/launcher/common/CpuLevelUtils;->mHighQualcommLevel:I

    .line 56
    :cond_1
    :goto_0
    sget v0, Lcom/miui/home/launcher/common/CpuLevelUtils;->mHighQualcommLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
