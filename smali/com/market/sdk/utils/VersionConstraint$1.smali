.class final Lcom/market/sdk/utils/VersionConstraint$1;
.super Lcom/market/sdk/utils/VersionConstraint;
.source "VersionConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/utils/VersionConstraint;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$devConstraint:Ljava/lang/String;

.field final synthetic val$stableConstraint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$stableConstraint:Ljava/lang/String;

    iput-object p2, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$devConstraint:Ljava/lang/String;

    invoke-direct {p0}, Lcom/market/sdk/utils/VersionConstraint;-><init>()V

    return-void
.end method


# virtual methods
.method public isAfter()Z
    .locals 3

    const/4 v0, 0x1

    .line 23
    :try_start_0
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$stableConstraint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$stableConstraint:Ljava/lang/String;

    invoke-static {v1}, Lcom/market/sdk/utils/VersionUtils;->isStableVersionLaterThan(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 25
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$devConstraint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/market/sdk/utils/VersionConstraint$1;->val$devConstraint:Ljava/lang/String;

    invoke-static {v1}, Lcom/market/sdk/utils/VersionUtils;->isDevVersionLaterThan(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MarketManager"

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
