.class public Lio/branch/search/internal/interfaces/LocalInterface$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface$d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lio/branch/search/internal/interfaces/LocalInterface$d;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface$d;I)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;->b:Lio/branch/search/internal/interfaces/LocalInterface$d;

    iput p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;->b:Lio/branch/search/internal/interfaces/LocalInterface$d;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$d;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object v0

    iget p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;->a:I

    invoke-virtual {v0, p0}, Lio/branch/search/s3;->a(I)V

    return-void
.end method
