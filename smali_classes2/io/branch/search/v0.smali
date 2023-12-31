.class public abstract Lio/branch/search/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lio/branch/search/v0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/branch/search/v0;
    .locals 2

    sget-object v0, Lio/branch/search/v0;->a:Lio/branch/search/v0;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/search/y0;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/y0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/search/v0;->a:Lio/branch/search/v0;

    :cond_0
    sget-object v0, Lio/branch/search/v0;->a:Lio/branch/search/v0;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;
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
.end method

.method public abstract a()V
.end method

.method public abstract a(Lio/branch/search/w0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Landroid/widget/ImageView;)V
.end method

.method public abstract a(Lorg/json/JSONObject;)V
.end method

.method public abstract b(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;
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
.end method
