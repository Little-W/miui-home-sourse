.class public abstract Lio/branch/search/i$l;
.super Lio/branch/search/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i;-><init>(Lorg/json/JSONObject;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/i$l;->c:Ljava/util/List;

    const-string v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/i$l;->c:Ljava/util/List;

    invoke-static {v1}, Lio/branch/search/i;->a(Lorg/json/JSONObject;)Lio/branch/search/i;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/i$g;
    .locals 2

    iget-object p0, p0, Lio/branch/search/i$l;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/i;

    invoke-virtual {v0, p1, p2, p3}, Lio/branch/search/i;->a(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/i$g;

    move-result-object v0

    iget-boolean v1, v0, Lio/branch/search/i$g;->a:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z
    .locals 1

    iget-object p0, p0, Lio/branch/search/i$l;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/i;

    invoke-virtual {v0, p1, p2, p3}, Lio/branch/search/i;->b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
