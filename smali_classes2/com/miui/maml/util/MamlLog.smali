.class public Lcom/miui/maml/util/MamlLog;
.super Ljava/lang/Object;
.source "MamlLog.java"


# static fields
.field public static LOG_LEVEL:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    sget v0, Lcom/miui/maml/util/MamlLog;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-lt v1, v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    sget v0, Lcom/miui/maml/util/MamlLog;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-lt v1, v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 38
    sget v0, Lcom/miui/maml/util/MamlLog;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-lt v1, v0, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 20
    sget v0, Lcom/miui/maml/util/MamlLog;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-lt v1, v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    sget v0, Lcom/miui/maml/util/MamlLog;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-lt v1, v0, :cond_0

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
