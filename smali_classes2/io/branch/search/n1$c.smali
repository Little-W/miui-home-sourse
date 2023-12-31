.class public Lio/branch/search/n1$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/branch/search/l;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lio/branch/search/n1;


# direct methods
.method public constructor <init>(Lio/branch/search/n1;Lio/branch/search/l;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/n1$c;->b:Lio/branch/search/n1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/branch/search/n1$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object v0, p0, Lio/branch/search/n1$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/n1$c;->b:Lio/branch/search/n1;

    invoke-static {v0}, Lio/branch/search/n1;->c(Lio/branch/search/n1;)V

    iget-object p0, p0, Lio/branch/search/n1$c;->b:Lio/branch/search/n1;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/branch/search/n1;->a(Lio/branch/search/n1;Landroid/net/Network;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object v0, p0, Lio/branch/search/n1$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/branch/search/n1$c;->b:Lio/branch/search/n1;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/branch/search/n1;->a(Lio/branch/search/n1;Landroid/net/Network;Z)V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method
