.class public Lio/branch/search/n0;
.super Lio/branch/search/k0;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/RequestManager;

.field public final d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lio/branch/search/k0;-><init>()V

    iput-object p1, p0, Lio/branch/search/n0;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v1, Lio/branch/search/m0;->a:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    const-class v2, Lio/branch/search/l0;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/n0;->c:Lcom/bumptech/glide/RequestManager;

    sget-object v0, Lio/branch/search/o4$a;->e:Lio/branch/search/o4$a;

    invoke-static {p1, v0}, Lio/branch/search/o4;->a(Landroid/content/Context;Lio/branch/search/o4$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/n0;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(II)Z
    .locals 1

    add-int/lit8 v0, p1, 0xa

    if-le v0, p0, :cond_0

    add-int/lit8 p1, p1, -0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lio/branch/search/l0;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l0;",
            ")",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/n0;->c:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/n0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    return-void
.end method

.method public final a(Lio/branch/search/l0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/RequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l0;",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public a(Lio/branch/search/l0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Key;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/branch/search/l0;->b()Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/branch/search/n0$b;

    invoke-direct {v0, p0, p2, p1}, Lio/branch/search/n0$b;-><init>(Lio/branch/search/n0;Landroid/widget/ImageView;Lio/branch/search/l0;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2, p4, v0}, Lio/branch/search/n0;->a(Lio/branch/search/l0;Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/branch/search/n0;->a(Lio/branch/search/l0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/n0;->a(Lio/branch/search/l0;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    :goto_0
    return-void
.end method

.method public final a(Lio/branch/search/l0;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l0;",
            "Landroid/widget/ImageView;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final a(Lio/branch/search/l0;Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l0;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Lio/branch/search/l0;

    iget-object v3, p1, Lio/branch/search/l0;->c:Lio/branch/search/k;

    invoke-direct {v2, p3, v3}, Lio/branch/search/l0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    iget-object v0, p0, Lio/branch/search/n0;->d:Landroid/content/SharedPreferences;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lio/branch/search/n0;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    array-length v3, v1

    invoke-static {v3, v0}, Lio/branch/search/n0;->a(II)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/branch/search/n0;->d:Landroid/content/SharedPreferences;

    const-string v2, "size"

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/branch/search/n0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "count"

    :try_start_1
    array-length v5, v1

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "size"

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v2, v3

    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "files"

    :try_start_2
    array-length v1, v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "total_size"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "glide"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "GlideDrawableLoader.loadDiagnostics"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public b(Lio/branch/search/l0;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l0;",
            ")",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/n0;->c:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method
