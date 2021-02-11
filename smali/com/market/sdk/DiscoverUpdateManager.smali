.class public Lcom/market/sdk/DiscoverUpdateManager;
.super Ljava/lang/Object;
.source "DiscoverUpdateManager.java"


# static fields
.field private static final KEY_AUTO_UPDATE:Ljava/lang/String; = "autoUpdate"

.field private static final KEY_IS_METERED_UPDATE_ANSWERED:Ljava/lang/String; = "isMeteredUpdateAnswered"

.field private static final KEY_IS_METERED_UPDATE_CONFIRM_NEEDED_BY_REGION:Ljava/lang/String; = "isMeteredUpdateConfirmNeededByRegion"

.field private static final METHOD_GET_AUTO_UPDATE:Ljava/lang/String; = "getAutoUpdate"

.field private static final METHOD_IS_METERED_UPDATE_ANSWERED:Ljava/lang/String; = "isMeteredUpdateAnswered"

.field private static final METHOD_IS_METERED_UPDATE_CONFIRM_NEEDED_BY_REGION:Ljava/lang/String; = "isMeteredUpdateConfirmNeededByRegion"

.field private static final METHOD_SET_AUTO_UPDATE:Ljava/lang/String; = "setAutoUpdate"

.field private static final METHOD_SET_METERED_UPDATE_ANSWERED:Ljava/lang/String; = "setMeteredUpdateAnswered"

.field private static final SETTINGS_DISCOVER_AUTO_UPDATE:Ljava/lang/String; = "com.xiaomi.discover.auto_update_enabled"

.field private static final SETTINGS_DISCOVER_METERED_UPDATE_ANSWERED:Ljava/lang/String; = "com.xiaomi.discover.metered_update_answered"

.field private static final SETTINGS_DISCOVER_METERED_UPDATE_CONFIRM_NEEDED_BY_REGION:Ljava/lang/String; = "com.xiaomi.discover.metered_update_confirm_needed_by_region"

.field public static final STRATEGY_4G:I = 0x2

.field public static final STRATEGY_DISABLED:I = 0x0

.field public static final STRATEGY_INVALID:I = -0x1

.field public static final STRATEGY_WIFI:I = 0x1

.field private static sInstance:Lcom/market/sdk/DiscoverUpdateManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/market/sdk/DiscoverUpdateManager;

    invoke-direct {v0}, Lcom/market/sdk/DiscoverUpdateManager;-><init>()V

    sput-object v0, Lcom/market/sdk/DiscoverUpdateManager;->sInstance:Lcom/market/sdk/DiscoverUpdateManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.xiaomi.discover.preferences"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DiscoverUpdateManager;->DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

    .line 41
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get()Lcom/market/sdk/DiscoverUpdateManager;
    .locals 1

    .line 47
    sget-object v0, Lcom/market/sdk/DiscoverUpdateManager;->sInstance:Lcom/market/sdk/DiscoverUpdateManager;

    return-object v0
.end method


# virtual methods
.method public getAutoUpdateStrategy()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DISCOVER_METERED_UPDATE_CONFIRM:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v0}, Lcom/market/sdk/MarketFeatures;->throwExceptionIfNotSupported()V

    const/4 v0, -0x1

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.xiaomi.discover.auto_update_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/DiscoverUpdateManager;->DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const-string v2, "getAutoUpdate"

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "autoUpdate"

    .line 72
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method

.method public isMeteredUpdateAnswered()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DISCOVER_METERED_UPDATE_CONFIRM:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v0}, Lcom/market/sdk/MarketFeatures;->throwExceptionIfNotSupported()V

    const/4 v0, -0x1

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.xiaomi.discover.metered_update_answered"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/DiscoverUpdateManager;->DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const-string v2, "isMeteredUpdateAnswered"

    const/4 v3, 0x0

    .line 110
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isMeteredUpdateAnswered"

    .line 111
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 112
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public isMeteredUpdateConfirmNeededByRegion()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DISCOVER_METERED_UPDATE_CONFIRM:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v0}, Lcom/market/sdk/MarketFeatures;->throwExceptionIfNotSupported()V

    const/4 v0, -0x1

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.xiaomi.discover.metered_update_confirm_needed_by_region"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/DiscoverUpdateManager;->DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const-string v2, "isMeteredUpdateConfirmNeededByRegion"

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isMeteredUpdateConfirmNeededByRegion"

    .line 155
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public setAutoUpdateStrategy(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DISCOVER_METERED_UPDATE_CONFIRM:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v0}, Lcom/market/sdk/MarketFeatures;->throwExceptionIfNotSupported()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.xiaomi.discover.auto_update_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    iget-object v0, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const-string v1, "setAutoUpdate"

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 92
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method

.method public setMeteredUpdateAnswered(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DISCOVER_METERED_UPDATE_CONFIRM:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v0}, Lcom/market/sdk/MarketFeatures;->throwExceptionIfNotSupported()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.xiaomi.discover.auto_update_enabled"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "MarketManager"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MarketManager"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/market/sdk/DiscoverUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/DiscoverUpdateManager;->DISCOVER_PREFERENCE_AUTHORITY:Landroid/net/Uri;

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const-string v1, "setMeteredUpdateAnswered"

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 133
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const-string p1, "MarketManager"

    const-string v0, "finish"

    .line 134
    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
