.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl$15;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl$15;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$15;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$15;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$15$-a1eBWf4rxNJqnLfz5CvpmvCXKw;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$15;->lambda$onReceive$0$BaseRecentsImpl$15(Landroid/content/Intent;)V

    return-void
.end method
