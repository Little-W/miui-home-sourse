.class public Lio/branch/search/m3$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/m3;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;
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
        "Lio/branch/search/o3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/m3;


# direct methods
.method public constructor <init>(Lio/branch/search/m3;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/m3$j;->a:Lio/branch/search/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/m3$j;->a:Lio/branch/search/m3;

    invoke-virtual {v0}, Lio/branch/search/m3;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/m3$j;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
