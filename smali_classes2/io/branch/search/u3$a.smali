.class public Lio/branch/search/u3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/u3;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;
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
        "Lio/branch/search/t3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/u3;


# direct methods
.method public constructor <init>(Lio/branch/search/u3;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/u3$a;->a:Lio/branch/search/u3;

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
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/u3$a;->a:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/u3$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
