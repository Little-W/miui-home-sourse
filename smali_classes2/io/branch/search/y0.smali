.class public Lio/branch/search/y0;
.super Lio/branch/search/v0;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/RequestManager;

.field public final d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lio/branch/search/v0;-><init>()V

    iput-object p1, p0, Lio/branch/search/y0;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v1, Lio/branch/search/x0;->a:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    const-class v2, Lio/branch/search/w0;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/y0;->c:Lcom/bumptech/glide/RequestManager;

    sget-object v0, Lio/branch/search/a5$a;->e:Lio/branch/search/a5$a;

    invoke-static {p1, v0}, Lio/branch/search/a5;->a(Landroid/content/Context;Lio/branch/search/a5$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/y0;->d:Landroid/content/SharedPreferences;

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
.method public a(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/w0;",
            ")",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/y0;->c:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    iget-object p0, p0, Lio/branch/search/y0;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearDiskCache()V

    return-void
.end method

.method public a(Lio/branch/search/w0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Key;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/branch/search/w0;->b()Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/branch/search/y0$b;

    invoke-direct {v0, p0, p2, p1}, Lio/branch/search/y0$b;-><init>(Lio/branch/search/y0;Landroid/widget/ImageView;Lio/branch/search/w0;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    new-instance p5, Lio/branch/search/w0;

    iget-object p1, p1, Lio/branch/search/w0;->c:Lio/branch/search/k;

    invoke-direct {p5, p4, p1}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {p3, p5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    iget-object p0, p0, Lio/branch/search/y0;->c:Lcom/bumptech/glide/RequestManager;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 9

    iget-object v0, p0, Lio/branch/search/y0;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :try_start_0
    iget-object v3, p0, Lio/branch/search/y0;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    array-length v4, v3

    invoke-static {v4, v0}, Lio/branch/search/y0;->a(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "size"

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object p0, p0, Lio/branch/search/y0;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    array-length v0, v3

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lio/branch/search/y0;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    array-length v0, v3

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v0, v5

    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "files"

    :try_start_2
    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "total_size"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "glide"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "GlideDrawableLoader.loadDiagnostics"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public b(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/w0;",
            ")",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/y0;->c:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    return-object p0
.end method
