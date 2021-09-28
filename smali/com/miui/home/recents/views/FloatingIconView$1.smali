.class Lcom/miui/home/recents/views/FloatingIconView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/FloatingIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView$1;->this$0:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 458
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView$1;->this$0:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-static {p1}, Lcom/miui/home/recents/views/FloatingIconView;->access$000(Lcom/miui/home/recents/views/FloatingIconView;)V

    return-void
.end method
