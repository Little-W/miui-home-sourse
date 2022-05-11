.class public Lcom/miui/maml/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static isSupportGet:Z

.field private static isSupportGetBoolean:Z

.field private static isSupportGetInt:Z

.field private static isSupportGetLong:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 38
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "get"

    .line 45
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 47
    :catch_1
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    :goto_2
    :try_start_2
    const-string v4, "getInt"

    .line 51
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_3

    :cond_1
    move v4, v3

    :goto_3
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 53
    :catch_2
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    :goto_4
    :try_start_3
    const-string v4, "getLong"

    .line 57
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_5

    :cond_2
    move v4, v3

    :goto_5
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 59
    :catch_3
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    :goto_6
    :try_start_4
    const-string v4, "getBoolean"

    .line 63
    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_7

    :cond_3
    move v2, v3

    :goto_7
    sput-boolean v2, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 65
    :catch_4
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    :cond_4
    :goto_8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 20
    invoke-static {p0, v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 24
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 28
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method
