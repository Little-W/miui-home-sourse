.class public final Lio/branch/search/u3$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/u3$b;->onInvalidated(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/u3$b;


# direct methods
.method public constructor <init>(Lio/branch/search/u3$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/u3$b$a;->a:Lio/branch/search/u3$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lio/branch/search/u3$b$a;->a:Lio/branch/search/u3$b;

    iget-object v0, p0, Lio/branch/search/u3$b;->a:Lio/branch/search/u3;

    iget-object v1, p0, Lio/branch/search/u3$b;->b:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lio/branch/search/u3$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0}, Lio/branch/search/u3;->a(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
