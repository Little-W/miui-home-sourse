.class public Lio/branch/search/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/l1$k;,
        Lio/branch/search/l1$j;,
        Lio/branch/search/l1$i;,
        Lio/branch/search/l1$h;,
        Lio/branch/search/l1$d;,
        Lio/branch/search/l1$g;,
        Lio/branch/search/l1$l;,
        Lio/branch/search/l1$f;,
        Lio/branch/search/l1$e;,
        Lio/branch/search/l1$c;,
        Lio/branch/search/l1$b;
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/l1$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/l1$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/l1$c;-><init>(Lio/branch/search/l1$a;)V

    sput-object v0, Lio/branch/search/l1;->a:Lio/branch/search/l1$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lio/branch/search/l1;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BRANCH_BundlerLoader.jsonObjectToMap"

    invoke-static {v3, v2}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lio/branch/search/l;Lorg/json/JSONObject;)Lio/branch/search/l1$c;
    .locals 3

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/branch/search/e;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {v1, p2, v2, p1}, Lio/branch/search/BranchConfiguration;->a(Lorg/json/JSONObject;Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lio/branch/search/j1;->a(Lorg/json/JSONObject;Z)V

    sget-object p1, Lio/branch/search/e5;->m:Lio/branch/search/e5;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lio/branch/search/p0;->a(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/e5;Lio/branch/search/l;)Lorg/json/JSONObject;

    move-result-object p1

    instance-of p2, p1, Lio/branch/search/BranchSearchError;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(bundle) load: got BranchSearchError. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lio/branch/search/BranchSearchError;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BRANCH_BundlerLoader"

    invoke-static {p2, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lio/branch/search/l1;->a:Lio/branch/search/l1$c;

    return-object p1

    :cond_0
    :try_start_0
    new-instance p2, Lio/branch/search/l1$c;

    invoke-direct {p2, p1}, Lio/branch/search/l1$c;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "BRANCH_BundlerLoader"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(bundle) load: SUCCESS - got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lio/branch/search/l1$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "BRANCH_BundlerLoader.load"

    invoke-static {p2, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Lorg/json/JSONObject;)Lio/branch/search/l1$c;
    .locals 3

    instance-of v0, p1, Lio/branch/search/BranchSearchError;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(bundle) load: got BranchSearchError. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lio/branch/search/BranchSearchError;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRANCH_BundlerLoader"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lio/branch/search/l1;->a:Lio/branch/search/l1$c;

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lio/branch/search/l1$c;

    invoke-direct {v0, p1}, Lio/branch/search/l1$c;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "BRANCH_BundlerLoader"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(bundle) load: SUCCESS - got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "BRANCH_BundlerLoader.loadFromJson"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
