.class public Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeObserver"
.end annotation


# instance fields
.field private mBinderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 1

    .line 714
    invoke-static {p1}, Lcom/miui/maml/data/ContentProviderBinder;->access$300(Lcom/miui/maml/data/ContentProviderBinder;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 715
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->mBinderRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;->mBinderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/ContentProviderBinder;

    if-eqz p0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->onContentChanged()V

    goto :goto_0

    :cond_0
    const-string p0, "ContentProviderBinder"

    const-string p1, "ChangeObserver: content not changed, maybe reference recycled."

    .line 729
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
