.class Lcom/miui/home/recents/NavStubView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V
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

    .line 530
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$1000(Lcom/miui/home/recents/NavStubView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$1000(Lcom/miui/home/recents/NavStubView;I)V

    return-void
.end method
