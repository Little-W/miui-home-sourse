.class public Lio/branch/search/n1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/n1;->i()V
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
.field public final synthetic a:Landroid/net/NetworkRequest$Builder;

.field public final synthetic b:Lio/branch/search/n1;


# direct methods
.method public constructor <init>(Lio/branch/search/n1;Landroid/net/NetworkRequest$Builder;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/n1$a;->b:Lio/branch/search/n1;

    iput-object p2, p0, Lio/branch/search/n1$a;->a:Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lio/branch/search/n1$a;->b:Lio/branch/search/n1;

    invoke-static {v0}, Lio/branch/search/n1;->b(Lio/branch/search/n1;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/n1$a;->a:Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lio/branch/search/n1$a;->b:Lio/branch/search/n1;

    invoke-static {p0}, Lio/branch/search/n1;->a(Lio/branch/search/n1;)Lio/branch/search/n1$c;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/n1$a;->a()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
