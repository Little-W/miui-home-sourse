.class public Lmiui/app/MiuiFreeFormManager;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    }
.end annotation


# static fields
.field private static final IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiFreeFormManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 56
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "MiuiFreeFormManager"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMiuiFreeformVersion()I
    .locals 1

    .line 221
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private static getService()Lmiui/app/IMiuiFreeFormManager;
    .locals 1

    .line 45
    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .locals 2

    .line 119
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 124
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
