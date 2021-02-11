.class Lcom/miui/home/recents/NavStubView$20$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView$20;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/NavStubView$20;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView$20;)V
    .locals 0

    .line 2617
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$20$1;->this$1:Lcom/miui/home/recents/NavStubView$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2620
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$20$1;->this$1:Lcom/miui/home/recents/NavStubView$20;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6100(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method
