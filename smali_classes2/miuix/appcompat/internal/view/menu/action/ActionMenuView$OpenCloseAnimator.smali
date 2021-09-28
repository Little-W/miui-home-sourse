.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field mCurrentAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method
