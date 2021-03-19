.class public Lcom/market/sdk/DetailPageRequest;
.super Ljava/lang/Object;
.source "DetailPageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DetailPageRequest$PageType;
    }
.end annotation


# static fields
.field private static final KEY_APP_CLIENT_ID:Ljava/lang/String; = "appClientId"

.field private static final KEY_APP_SIGNATURE:Ljava/lang/String; = "appSignature"

.field private static final KEY_BACK_URL:Ljava/lang/String; = "backUrl"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_LAUNCH_INSTALL:Ljava/lang/String; = "launchWhenInstalled"

.field private static final KEY_NEED_TASK_ROOT:Ljava/lang/String; = "needTaskRoot"

.field private static final KEY_NONCE:Ljava/lang/String; = "nonce"

.field private static final KEY_REF:Ljava/lang/String; = "ref"

.field private static final KEY_START_DOWNLOAD:Ljava/lang/String; = "startDownload"


# instance fields
.field private builder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Lcom/market/sdk/DetailPageRequest$PageType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/market/sdk/DetailPageRequest$PageType;->access$000(Lcom/market/sdk/DetailPageRequest$PageType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public appendParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public enableAutoDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/market/sdk/DetailPageRequest;->enableAutoDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public enableAutoDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v1, "startDownload"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v1, "appClientId"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    iget-object p1, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v0, "appSignature"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    iget-object p1, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string p2, "nonce"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    iget-object p1, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string p2, "launchWhenInstalled"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method getData()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBackUrl(Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v1, "backUrl"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    iget-object p1, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v0, "needTaskRoot"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/market/sdk/DetailPageRequest;->builder:Landroid/net/Uri$Builder;

    const-string v1, "ref"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method
