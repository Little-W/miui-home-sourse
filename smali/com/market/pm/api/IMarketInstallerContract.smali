.class public interface abstract Lcom/market/pm/api/IMarketInstallerContract;
.super Ljava/lang/Object;
.source "IMarketInstallerContract.java"

# interfaces
.implements Lcom/market/pm/api/IMarketInstallerCode;


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.xiaomi.market.action.INSTALL"

.field public static final EXTRA_APP_CLIENT_ID:Ljava/lang/String; = "extra_app_client_id"

.field public static final EXTRA_APP_SIGNATURE:Ljava/lang/String; = "extra_app_signature"

.field public static final EXTRA_CALLER_PACKAGE_NAME:Ljava/lang/String; = "extra_caller_package_name"

.field public static final EXTRA_NONCE:Ljava/lang/String; = "extra_nonce"

.field public static final EXTRA_REF:Ljava/lang/String; = "extra_ref"

.field public static final MARKET_PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.mipicks"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.market"

    :goto_0
    sput-object v0, Lcom/market/pm/api/IMarketInstallerContract;->MARKET_PACKAGE:Ljava/lang/String;

    return-void
.end method
