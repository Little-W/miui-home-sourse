.class public Lcom/miui/home/library/utils/MiuiFeatureUtils;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;
    }
.end annotation


# static fields
.field private static sConfigFilePath:Ljava/lang/String;

.field private static sConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIsLiteMode:Z

.field private static sIsLiteModeSupported:Z

.field private static sMiuisdkConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    :try_start_0
    invoke-static {}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 158
    sput-boolean v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    const-string v0, "MiuiFeatureUtils"

    const-string v1, "Failed to initialize MiuiFeatureUtils!"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static init()V
    .locals 5

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/miui_feature/default.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "/system/etc/miui_feature/lite.conf"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sput-boolean v2, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sIsLiteModeSupported:Z

    :cond_0
    const-string v0, "persist.sys.miui_feature_config"

    .line 43
    invoke-static {v0}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    sput-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 48
    :cond_1
    sget-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sput-object v1, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    .line 52
    :cond_2
    sget-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 53
    new-instance v0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;

    sget-object v1, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->parse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    invoke-virtual {v0}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->getConfigResult()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const-string v1, "system"

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    .line 58
    sget-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    const-string v1, "miuisdk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sMiuisdkConfigResult:Ljava/util/HashMap;

    .line 61
    :cond_3
    sget-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigFilePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    sput-boolean v2, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sIsLiteMode:Z

    :cond_4
    const-string v0, "MiuiFeatureUtils"

    const-string v1, "Loaded and parsed feature configure file successfully"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    sget-object p0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    if-eqz p0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 97
    sget-object p0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sConfigResult:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_2

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get feature "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiFeatureUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static isSystemFeatureSupported(Ljava/lang/String;Z)Z
    .locals 2

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 75
    :cond_0
    sget-object v0, Lcom/miui/home/library/utils/MiuiFeatureUtils;->sSystemConfigResult:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get system feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiFeatureUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
