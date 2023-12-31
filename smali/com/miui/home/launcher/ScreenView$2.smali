.class Lcom/miui/home/launcher/ScreenView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ScreenView;->startHideSlideBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$2;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 793
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$2;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget-object p1, p1, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    .line 794
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$2;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$2;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    return-void
.end method
