.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitActionBarAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    return-void
.end method

.method public onStop(Z)V
    .locals 0

    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 724
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method
