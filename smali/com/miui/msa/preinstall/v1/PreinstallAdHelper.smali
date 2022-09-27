.class public Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;
.super Ljava/lang/Object;
.source "PreinstallAdHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreinstallAdHelper"

.field private static volatile sManager:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;


# instance fields
.field private final PREINSTALL:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miui.intent.action.ad.PREINSTALL_SERVICE"

    .line 24
    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->PREINSTALL:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private avoidOnMainThread()V
    .locals 2

    .line 172
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not run on main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.PREINSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/msa/internal/common/utils/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;
    .locals 2

    .line 35
    sget-object v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->sManager:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->sManager:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    invoke-direct {v1, p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->sManager:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 42
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->sManager:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    return-object p0
.end method

.method private isSupported()Z
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public getPreinstallAdInfos(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "PreinstallAdHelper"

    const-string v1, "getPreinstallAdInfos"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->avoidOnMainThread()V

    .line 62
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;

    iget-object v2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;I)V

    .line 74
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getPreinstallAdInfosByTagId(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "PreinstallAdHelper"

    const-string v1, "getPreinstallAdInfosByTagId"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->avoidOnMainThread()V

    .line 81
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;

    iget-object v4, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public handleClick(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Z
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->avoidOnMainThread()V

    .line 117
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$4;

    iget-object v2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$4;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V

    .line 129
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$4;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "PreinstallAdHelper"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick->isSupported.result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public handleDislike(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->avoidOnMainThread()V

    .line 136
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;

    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V

    .line 148
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleDislikeByTagId(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V
    .locals 7

    .line 152
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->avoidOnMainThread()V

    .line 153
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;

    iget-object v3, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->avoidOnMainThread()V

    .line 100
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$3;

    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$3;-><init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/List;)V

    .line 112
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$3;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method
