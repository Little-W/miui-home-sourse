.class public Lio/branch/search/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lio/branch/search/l0;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "Lio/branch/search/l0;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/m0$a;

    invoke-direct {v0}, Lio/branch/search/m0$a;-><init>()V

    sput-object v0, Lio/branch/search/m0;->a:Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/l0;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l0;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {p1}, Lio/branch/search/l0;->b()Lcom/bumptech/glide/load/Key;

    move-result-object p3

    invoke-virtual {p1}, Lio/branch/search/l0;->a()Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public a(Lio/branch/search/l0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Lio/branch/search/l0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/m0;->a(Lio/branch/search/l0;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/branch/search/l0;

    invoke-virtual {p0, p1}, Lio/branch/search/m0;->a(Lio/branch/search/l0;)Z

    move-result p1

    return p1
.end method
