.class public Lio/branch/search/z5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/z5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/l;Lio/branch/search/s5;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lio/branch/search/s5;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
