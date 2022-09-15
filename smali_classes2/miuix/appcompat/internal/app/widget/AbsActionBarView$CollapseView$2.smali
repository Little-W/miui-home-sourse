.class Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;Landroid/view/View;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 431
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 432
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 433
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 435
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$2;->val$view:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
