.class public Lio/branch/search/s3$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/s3;->a(Landroid/content/Context;Lio/branch/search/e2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lio/branch/search/e2;

.field public final synthetic c:Lio/branch/search/s3;


# direct methods
.method public constructor <init>(Lio/branch/search/s3;Ljava/util/Map$Entry;Lio/branch/search/e2;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/s3$a;->c:Lio/branch/search/s3;

    iput-object p2, p0, Lio/branch/search/s3$a;->a:Ljava/util/Map$Entry;

    iput-object p3, p0, Lio/branch/search/s3$a;->b:Lio/branch/search/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lio/branch/search/s3$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/branch/search/s3$a$a;

    invoke-direct {v1, p0}, Lio/branch/search/s3$a$a;-><init>(Lio/branch/search/s3$a;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/s3$a;->a()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
