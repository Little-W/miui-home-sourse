.class public abstract Lio/branch/search/i$c;
.super Lio/branch/search/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i;-><init>(Lorg/json/JSONObject;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/i$c;->c:Ljava/util/Map;

    const-string v0, "extras"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/i$c;->c:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/i$g;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lio/branch/search/i$c;->b(Landroid/content/Context;Lio/branch/search/q;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lio/branch/search/i$c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/i$c;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->k()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-interface {p3, p1, p2}, Lio/branch/search/IBranchIntentHandler;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0}, Lio/branch/search/i$g;->a(Lio/branch/search/i;)Lio/branch/search/i$g;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BranchLinkHandler.open"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Landroid/content/Context;Lio/branch/search/q;)Landroid/content/Intent;
.end method

.method public b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/i$c;->b(Landroid/content/Context;Lio/branch/search/q;)Landroid/content/Intent;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p3, p1, p0, p2}, Lio/branch/search/IBranchIntentHandler;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method
