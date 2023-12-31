.class Lcom/miui/home/launcher/AppPairController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppPairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AppPairController;->removeAppPairStartWindowWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppPairController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppPairController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/AppPairController$4;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController$4;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {p0}, Lcom/miui/home/launcher/AppPairController;->access$100(Lcom/miui/home/launcher/AppPairController;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/miui/home/launcher/AppPairController$4;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {p0}, Lcom/miui/home/launcher/AppPairController;->access$100(Lcom/miui/home/launcher/AppPairController;)V

    return-void
.end method
