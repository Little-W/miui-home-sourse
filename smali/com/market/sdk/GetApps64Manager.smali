.class public Lcom/market/sdk/GetApps64Manager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/market/sdk/GetApps64Manager; = null

.field private static final TAG:Ljava/lang/String; = "GetApps64Manager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/market/sdk/GetApps64Manager;
    .locals 2

    sget-object v0, Lcom/market/sdk/GetApps64Manager;->INSTANCE:Lcom/market/sdk/GetApps64Manager;

    if-nez v0, :cond_1

    const-class v0, Lcom/market/sdk/GetApps64Manager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/market/sdk/GetApps64Manager;->INSTANCE:Lcom/market/sdk/GetApps64Manager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/market/sdk/GetApps64Manager;

    invoke-direct {v1}, Lcom/market/sdk/GetApps64Manager;-><init>()V

    sput-object v1, Lcom/market/sdk/GetApps64Manager;->INSTANCE:Lcom/market/sdk/GetApps64Manager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/market/sdk/GetApps64Manager;->INSTANCE:Lcom/market/sdk/GetApps64Manager;

    return-object v0
.end method


# virtual methods
.method public getSupport64Apps(Lcom/market/sdk/IGetAppsCallback;)V
    .locals 1

    new-instance v0, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;-><init>(Lcom/market/sdk/GetApps64Manager;Lcom/market/sdk/IGetAppsCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/market/sdk/GetApps64Manager$GetSupportAppsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
