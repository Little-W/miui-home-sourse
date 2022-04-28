.class public Lio/branch/search/m3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/m3;->d(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lio/branch/search/s3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/m3;


# direct methods
.method public constructor <init>(Lio/branch/search/m3;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/m3$c;->a:Lio/branch/search/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/s3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/m3$c;->a:Lio/branch/search/m3;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/branch/search/m3;->d(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/m3$c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
