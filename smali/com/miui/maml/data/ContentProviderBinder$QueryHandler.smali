.class final Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;
.super Lcom/miui/maml/data/AsyncQueryHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/Context;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    .line 482
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/AsyncQueryHandler;-><init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 478
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    .line 487
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->this$0:Lcom/miui/maml/data/ContentProviderBinder;

    invoke-static {p1, p3}, Lcom/miui/maml/data/ContentProviderBinder;->access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V

    return-void
.end method
