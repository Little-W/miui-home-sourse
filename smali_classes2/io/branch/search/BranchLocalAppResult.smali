.class public Lio/branch/search/BranchLocalAppResult;
.super Lio/branch/search/BranchBaseAppResult;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseAppResult<",
        "Lio/branch/search/BranchLocalLinkResult;",
        ">;",
        "Lio/branch/search/q;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/i;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/BranchLocalAppResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchLocalAppResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchLocalAppResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    sget-object v0, Lio/branch/search/BranchLocalLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lio/branch/search/BranchBaseAppResult;-><init>(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchLocalAppResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchBaseAppResult;-><init>(Lio/branch/search/BranchBaseAppResult;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/k;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;",
            "Lio/branch/search/k;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v13, p0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lio/branch/search/BranchBaseAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/k;Ljava/lang/String;)V

    move-object/from16 v0, p10

    iput-object v0, v13, Lio/branch/search/BranchLocalAppResult;->k:Ljava/lang/String;

    invoke-static/range {p9 .. p9}, Lio/branch/search/s;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v13, Lio/branch/search/BranchLocalAppResult;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDestinationPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;
    .locals 9

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->k:Ljava/lang/String;

    sget-object v3, Lio/branch/search/e5;->k:Lio/branch/search/e5;

    invoke-static {v1, v2, v3, v0, v2}, Lio/branch/search/p0;->a(Ljava/lang/String;Lio/branch/search/e1;Lio/branch/search/e5;Lio/branch/search/l;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->j:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/i;

    invoke-virtual {v3, p1, p0}, Lio/branch/search/i;->c(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;

    move-result-object v4

    iget-boolean v5, v4, Lio/branch/search/i$g;->a:Z

    if-eqz v5, :cond_1

    invoke-static {v3}, Lio/branch/search/i;->a(Lio/branch/search/i;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v4, Lio/branch/search/i$g;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1}, Lio/branch/search/l;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v1

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-interface {v1, p1, v3, v4}, Lio/branch/search/IBranchIntentHandler;->openApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "launch_intent"

    invoke-virtual {v0, p0, p1}, Lio/branch/search/l;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/o3;

    iget-object v4, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/branch/search/o3;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, v0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {v0, p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/o3;)V

    return-object v2

    :cond_4
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchLocalAppResult.open"

    invoke-static {v0, p1}, Lio/branch/search/b0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, v0}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    return-object p1
.end method
