.class public Lio/branch/search/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lio/branch/search/w0;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "Lio/branch/search/w0;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/x0$a;

    invoke-direct {v0}, Lio/branch/search/x0$a;-><init>()V

    sput-object v0, Lio/branch/search/x0;->a:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/w0;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/w0;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {p1}, Lio/branch/search/w0;->b()Lcom/bumptech/glide/load/Key;

    move-result-object p2

    invoke-virtual {p1}, Lio/branch/search/w0;->a()Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p0
.end method

.method public a(Lio/branch/search/w0;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Lio/branch/search/w0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/x0;->a(Lio/branch/search/w0;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/branch/search/w0;

    invoke-virtual {p0, p1}, Lio/branch/search/x0;->a(Lio/branch/search/w0;)Z

    move-result p0

    return p0
.end method
