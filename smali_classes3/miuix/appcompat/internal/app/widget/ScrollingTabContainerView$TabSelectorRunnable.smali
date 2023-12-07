.class Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabSelectorRunnable"
.end annotation


# instance fields
.field private mPosition:I

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;I)V
    .locals 1

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 693
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 697
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 701
    :cond_1
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 705
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 p0, 0x0

    .line 706
    invoke-virtual {v0, v2, p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 707
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method
