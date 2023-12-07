.class public Lio/branch/search/i$e;
.super Lio/branch/search/i$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i$l;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/i$e;->d:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/i$e;->e:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/i$e;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i$e;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/i$g;
    .locals 8

    instance-of p3, p2, Lio/branch/search/BranchBaseLinkResult;

    if-nez p3, :cond_0

    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->g()Lio/branch/search/IBranchDeepViewHandler;

    move-result-object p3

    new-instance v7, Lio/branch/search/BranchDeepViewFragment;

    move-object v1, p2

    check-cast v1, Lio/branch/search/BranchBaseLinkResult;

    iget-object v2, p0, Lio/branch/search/i$l;->c:Ljava/util/List;

    iget-object v0, p0, Lio/branch/search/i$e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lio/branch/search/q;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/branch/search/i$e;->e:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    iget-object v0, p0, Lio/branch/search/i$e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lio/branch/search/q;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/branch/search/i$e;->f:Ljava/lang/String;

    :goto_1
    move-object v4, v0

    iget-object v0, p0, Lio/branch/search/i$e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lio/branch/search/q;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/branch/search/i$e;->d:Ljava/lang/String;

    :goto_2
    move-object v5, v0

    instance-of v0, p2, Lio/branch/search/BranchLinkResult;

    if-eqz v0, :cond_4

    check-cast p2, Lio/branch/search/BranchLinkResult;

    iget-object p2, p2, Lio/branch/search/BranchLinkResult;->g:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string p2, ""

    :goto_3
    move-object v6, p2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/branch/search/BranchDeepViewFragment;-><init>(Lio/branch/search/BranchBaseLinkResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1, v7}, Lio/branch/search/IBranchDeepViewHandler;->launchDeepView(Landroid/content/Context;Lio/branch/search/BranchDeepViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lio/branch/search/i$g;->a(Lio/branch/search/i;)Lio/branch/search/i$g;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/branch/search/i$l;->b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p2, Lio/branch/search/BranchBaseLinkResult;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
