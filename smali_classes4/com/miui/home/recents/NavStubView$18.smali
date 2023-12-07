.class Lcom/miui/home/recents/NavStubView$18;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5562
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5565
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method
